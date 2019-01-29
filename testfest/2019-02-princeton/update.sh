#!/bin/bash
# Update automated results: scan "inputs", put results in "outputs"
# Expected input:
#   Org/X.jsonld (+ optional Org/X.csv) at top level: implementation with a single TD.
#      TD will be scanned with AssertionTester, merges results with CSV file if it 
#      exists (used for manual assertions), and writes results to outputs/Org/X.csv
#   Org/S/*.jsonld (+ optional matched .csv files):
#      TDs will be scanned with AssertionTester, results will be merged with
#      matching CSV file if it exists, all results will then be merged, results
#      will be written to outputs/Org/S.csv
# Implementation descriptions may also be included in descriptions/Org/org.html;
# these should include descriptions of all implementations.
function process() {
  Input=$1
  Output=$2
  echo "**** Process: $Input -> $Output"
  # touch $Output
}
function merge() {
  Inputs=$1
  Output=$2
  echo "**** Merge: $Inputs -> $Output"
  # touch $Output
}
for OrgDir in inputs/* ; do
  if [[ -d $OrgDir ]]; then
    export AbsOrgDir=$(cd $OrgDir; pwd)
    export Org=$(basename $AbsOrgDir)
    echo "Processing organization $Org"
    echo "  in $AbsOrgDir"
    for ImplPath in $AbsOrgDir/*.jsonld ; do
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
    for ImplPath in $AbsOrgDir/* ; do
       if [[ -d $ImplPath ]]; then
          export Impl=$(basename $ImplPath)
          echo "  Processing implementation $Org/$Impl"
          echo "    under $ImplPath"
          for InstancePath in $ImplPath/*.jsonld ; do
             if [[ -f $InstancePath ]]; then
                export InstanceFile=$(basename $InstancePath)
                export Instance="${InstanceFile%.*}"
                echo "    Processing instance $Org/$Impl/$Instance"
                echo "      in $InstancePath"
                mkdir -p outputs/$Org/$Impl
                export AbsOutDir=$(cd outputs/$Org/$Impl; pwd)
                process $InstancePath $AbsOutDir/$Instance.csv
             fi
          done
          mkdir -p outputs/$Org
          touch outputs/$Org/$Impl.csv
       fi
    done
  fi
done
