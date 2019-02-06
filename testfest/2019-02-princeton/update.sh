#!/bin/bash
# Update automated results: scan "inputs", put results in "outputs".
# In the following, Org is an organization name, X is the name of an
# implementation, and S is a subdirectory name.  TDs can have either 
# .json, .jsontd, or .td suffixes.  CSV files should be for assertion
# reports.  
#
# Expected input:
#   inputs/Org/X.csv at top level:
#      CSV files with no corresponding TD file will simply by copied
#      as-is to outputs/Org/X.csv. These should correspond to manual results
#      for separate implementations without a corresponding TD, that is,
#      "consumer" or "component" implementations.
#   inputs/Org/X.{json,jsonld,td} (+ optional matched csv files) at top level: 
#      Implementation with a single TD, which by definition will be a 
#      "producer".  TDs will be scanned with AssertionTester, 
#      results will be merged with CSV file of the same base name if it 
#      exists (used for manual assertions), and results written to 
#      outputs/Org/X.csv
#   inputs/Org/S/*.{jsonld,json,td} (+ optional inputs/Org/S.csv files):
#      TDs will be scanned with AssertionTester, results will be merged with
#      matching CSV file if it exists, all results will then be merged, then
#      results will be written to outputs/Org/S.csv.  Note that subdirectory
#      name should be the implementation name and will be used for manual 
#      CSV input file name and output name.
#
# Implementation descriptions may also be included in descriptions/Org/org.html;
# these should include descriptions of all implementations.
#
# If you want to report interop results, which have a different
# CSV format, please put them in the "interops" directory.
#
function process() {
  Input=$1
  Output=$2
  echo ">>>>>>>>>>>> Processing: $Input"
  (
    cd ../../testing/tools/thingweb-playground/AssertionTester
    echo "npm run-script testTD $Input $Output"
    npm run-script testTD $Input $Output
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
function merge() {
  Inputs=$1
  Output=$2
  echo ">>>>>>>>>>>> Merge: ${Inputs[@]}"
  (
    cd ../../testing/tools/thingweb-playground/AssertionTester
    echo "node mergeResults.js ${Inputs[@]} > $Output"
    node mergeResults.js ${Inputs[@]} > $Output
  )
  echo "<<<<<<<<<<<< Output written to $Output"
  # touch $Output
}
# Delete any previous outputs; this avoids stale results from persisting
rm -r outputs/*

# Copy any CSV files at the top level to output.  Note that any files
# that have the same names as TD inputs will be overwritten later, but
# those without matches will not.  This takes care of manually-reported
# "consumer" or "component" inputs without corresponding TD files.
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
    for ImplPath in $AbsOrgDir/*.{jsonld,JSONLD,json,JSON,td,TD} ; do
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
          for InstancePath in $ImplPath/*.{jsonld,JSONLD,json,JSON,td,TD} ; do
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
