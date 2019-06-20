# 2019-05 Implementer Reports

This location is for test results (test TDs and manual assertion declarations
given in CSV files) that will be used to generate 
the draft Implementation Report after CR transition and prior to PR transition. 

Current version of Implementation Report: https://github.com/w3c/wot-thing-description/blob/master/testing/report.html

## TL;DR

* `testing/tests/2019-05/`
  * `descriptions/`
    * `<Member>/` (e.g., `Intel/`)
    * `<member>.html` ([template](templates/impl.html), e.g., `intel.html`)
  * `inputs/`
    * `<Member>/` (e.g., `Intel/`)
      * `<impl-name1>.jsontd` (TD produced by your independent implementation no.1, e.g., `intel-camera.jsontd`)
      * `<impl-name1>.csv` ([CSV template](templates/manual.csv), e.g., `intel-camera.csv`)
      * `<impl-name2>.jsontd` (TD produced by your independent implementation no.2)
      * `<impl-name2>.csv`
      * `<impl-name3>/` (TDs produced by your same implementation no.3, e.g., `intel-ocf/`)
        * `<impl-name3-thing1>.jsontd` (e.g., intel-ocf-buzzer0.jsontd)
        * `<impl-name3-thing2>.jsontd`
        * `<impl-name3-thing3>.jsontd`
      * `<impl-name3>.csv` (not in subdirectory)

## Implementation Descriptions

Descriptions of the implementations are grouped by Member
and are provided through an HTML snippet file stored under the `descriptions` directory.
Each organization has a subdirectory here, for example `descriptions/Intel`.

A template is provided [here](templates/impl.html) under [./templates/](templates).

## TDs for Automated Test Results

TDs are also grouped by Member
and are provided through TD files stored under the `inputs` directory.
Each organization has a subdirectory here, for example `inputs/Intel`.

TDs are accepted with `.jsontd`, `.jsonld` and `.json` suffixes.

TDs must be bundled by implementation that produced them.
An implementation with a single TD can just give that TD at the organization's subdirectory
with the filename corresponding to the implementation name and an accepted TD file suffix.
If an implementation has multiple TDs,
place them all in a further subdirectory using the name of the implementation, but without suffix.
See the `Intel` directory for an example of this; the `intel-ocf` directory contains many TDs,
but only counts as one implementation.
The test results for multiple TDs in a subdirectory will be automatically merged.

## CSVs for Manual Test Results

A file with the same name as an implementation (TD file or subdirectory), but with a `.csv` suffix
should also be given to provide manual assertions, i.e., those that cannot be tested automatically.

A template for manual assertions can be found in [here](templates/manual.csv)
under [./templates/](templates).
