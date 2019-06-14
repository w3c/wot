#!/bin/bash
# Update automated results: scan "inputs", put results in "outputs".
# In the following, Org is an organization name, X is the name of an
# implementation, and S is a subdirectory name (also an implementation
# name, but one with multiple "instances" whose results should be merged).
# TDs can have either .jsontd .jsonls, or .json suffixes.  CSV files 
# can also be given and should be for manual assertion reports; these
# will be merged with the results of automated testing using the processing
# described below. Manual assertion reports should use templates/manual.csv
# as a template.  
#
# Expected input, processing, and output:
#   inputs/Org/X.csv at top level:
#      CSV files with NO corresponding TD file will simply be copied
#      as-is to outputs/Org/X.csv. These should correspond to manual results
#      for separate implementations without a corresponding TD, that is,
#      "consumer" or "component" implementations.  Here X should be the
#      implementation name.
#   inputs/Org/X.{jsontd,jsonld,json} (+ optional matched csv files) at top level: 
#      Implementation with a single TD, which by definition will be a 
#      "producer".  TDs will be scanned with AssertionTester, 
#      results will be MERGED with any CSV file of the same base name (if it 
#      exists used for manual assertions), and results written to 
#      outputs/Org/X.csv.  Here X should be the implementation name.
#   inputs/Org/S/*.{jsontd,jsonld,json} (+ optional inputs/Org/S.csv files 
#   and/or optional inputs/S.csv file):
#      TDs will be scanned with AssertionTester, results will be merged with
#      matching CSV files for each TD if it exists (for manual results specific
#      to each TD), all results will then be merged, then results will be merged 
#      with an S.csv if it exists (for manual results for the entire implementation),
#      and the results will be written to outputs/Org/S.csv.  Note that subdirectory
#      name S should be the implementation name and will be used for both the manual 
#      CSV input file name and output name.
#
# Implementation descriptions may also be included in descriptions/Org/org.html;
# these should include descriptions of all implementations. 
#
# If you want to report interop results, which have a different
# CSV format, please put them in the "interops" directory, using templates/interop.csv
# as a template.

# Merge CSV results (any number, 1 or more) into a target 
# output CSV file.  If the output CSV file already exists, 
# merge any existing content in it as well. 
# Absolute paths should be used, with suffixes.
Tools="../../tools"
function merge() {
  Inputs=$1
  Output=$2
  echo ">>>>>>>>>>>> Merge: ${Inputs[@]}"
  (
    cd $Tools/thingweb-playground/AssertionTester
    if [[ -f $Output ]]; then
      Temp="${Output}.temp"
      echo "node mergeResults.js ${Inputs[@]} $Output > $Temp"
      node mergeResults.js ${Inputs[@]} $Output > $Temp
      echo "mv $Temp $Output"
      mv $Temp $Output
    else
      echo "node mergeResults.js ${Inputs[@]} > $Output"
      node mergeResults.js ${Inputs[@]} > $Output
    fi
  )
  echo "<<<<<<<<<<<< Output written to $Output"
  # touch $Output
}

# Run the AssertionTester against a TD or a set of TDs, 
# and merge the results against any manally reported results,
# if they are given.
# Absolute paths should be used, without suffixes.
function process() {
  Input=$1
  Output=$2
  echo ">>>>>>>>>>>> Processing: $Input"
  (
    cd $Tools/thingweb-playground/AssertionTester
    if [[ -f $Output ]]; then
      Temp1="${Output}.temp1"
      Temp2="${Output}.temp2"
      echo "npm run-script testTD $Input $Temp1"
      npm run-script testTD $Input $Temp1
      echo "node mergeResults.js $Temp1 $Output > $Temp2"
      node mergeResults.js $Temp1 $Output > $Temp2
      echo "mv $Temp2 $Output"
      mv $Temp2 $Output
      echo "rm $Temp1"
      rm $Temp1
    else
      echo "npm run-script testTD $Input $Output"
      npm run-script testTD $Input $Output
    fi
    Extras="${Input%.*}.{csv,CSV}"
    Temp="${Extras}.temp"
    if [[ -f $Extras ]]; then
      echo "node mergeResults.js $Output $Extras > $Temp"
      node mergeResults.js $Output $Extras > $Temp
      echo "mv $Temp $Output"
      mv $Temp $Output
    else
      # merge even if no extras to sort and merge children
      echo "node mergeResults.js $Output > $Temp"
      node mergeResults.js $Output > $Temp
      echo "mv $Temp $Output"
      mv $Temp $Output
    fi
  )
  echo "<<<<<<<<<<<< Output written to $Output"
  # touch $Output
}

# Delete any previous outputs; this avoids stale results from persisting
rm -r outputs/*

# Copy any CSV files at the top level to output.  Note that any files
# that have the same names as TD inputs will be overwritten later (after
# merging their contents...), but those without matches will not.  
# This takes care of manually-reported "consumer" or "component" inputs 
# without corresponding TD files.
for OrgDir in inputs/* ; do
  export Org=$(basename $OrgDir)
  mkdir -p outputs/$Org
  cp inputs/$Org/*.csv outputs/$Org/
done

# For all reporting organizations...
for OrgDir in inputs/* ; do
  if [[ -d $OrgDir ]]; then
    export AbsOrgDir=$(cd $OrgDir; pwd)
    export Org=$(basename $AbsOrgDir)
    echo "Processing organization $Org"
    echo "  in $AbsOrgDir"
    # Process implementations found at the top level (singletons)
    for ImplPath in $AbsOrgDir/*.{jsontd,JSONTD,jsonld,JSONLD,json,JSON} ; do
       if [[ -f $ImplPath ]]; then
          export ImplFile=$(basename $ImplPath)
          export Impl="${ImplFile%.*}"
          echo "  Processing implementation $Org/$Impl"
          echo "    in $ImplPath"
          mkdir -p outputs/$Org
          export AbsOutDir=$(cd outputs/$Org; pwd)
          process $ImplPath $AbsOutDir/$Impl.csv
       fi
    done
    # Process (and merge) implementation instances found in subdirectories
    for ImplPath in $AbsOrgDir/* ; do
       if [[ -d $ImplPath ]]; then
          export Impl=$(basename $ImplPath)
          echo "  Processing implementation $Org/$Impl"
          echo "    under $ImplPath"
          mkdir -p outputs/$Org/$Impl
          export AbsOutOrgDir=$(cd outputs/$Org; pwd)
          export AbsOutDir=$(cd outputs/$Org/$Impl; pwd)
          for InstancePath in $ImplPath/*.{jsontd,JSONTD,jsonld,JSONLD,json,JSON} ; do
             if [[ -f $InstancePath ]]; then
                export InstanceFile=$(basename $InstancePath)
                export Instance="${InstanceFile%.*}"
                echo "    Processing instance $Org/$Impl/$Instance"
                echo "      in $InstancePath"
                process $InstancePath $AbsOutDir/$Instance.csv
             fi
          done
          Inputs=($AbsOutDir/*.csv)
          if [[ -f $AbsOrgDir/$Impl.csv ]]; then
            Inputs=($AbsOrgDir/$Impl.csv "${Inputs[@]}")
          fi
          merge $Inputs $AbsOutOrgDir/$Impl.csv
       fi
    done
  fi
done
