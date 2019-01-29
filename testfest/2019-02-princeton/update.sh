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
# An implementation description may also be included in the inputs as Org/org.html;
# these should include descriptions of all implementations.
for OrgDir in inputs/*/ ; do
  if [[ -d $OrgDir ]]; then
    export AbsOrgDir=$(cd $OrgDir; pwd)
    export Org=$(basename $AbsOrgDir)
    # echo "Processing organization $Org in $AbsOrgDir"
    echo "Processing organization $Org"
    for ImplPath in $AbsOrgDir/*.jsonld ; do
       if [[ -f $ImplPath ]]; then
          export Impl=$(basename $ImplPath)
          # echo "  Processing implementation $Org/$Impl in $ImplPath"
          echo "  Processing implementation $Org/$Impl"
       fi
    done
    for ImplPath in $AbsOrgDir/*/ ; do
       if [[ -d $ImplPath ]]; then
          export Impl=$(basename $ImplPath)
          # echo "  Processing implementation $Org/$Impl under $ImplPath"
          echo "  Processing implementation $Org/$Impl"
          for InstancePath in $ImplPath/*.jsonld ; do
             if [[ -f $InstancePath ]]; then
                export Instance=$(basename $InstancePath)
                # echo "    Processing instance $Org/$Impl/$Instance in $InstancePath"
                echo "    Processing instance $Org/$Impl/$Instance"
             fi
          done
       fi
    done
  fi
done
