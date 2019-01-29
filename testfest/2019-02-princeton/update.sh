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
