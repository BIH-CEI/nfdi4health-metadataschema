Instance: InstanceOfProvenanceAutomaticallyUploadedFromCTgov
InstanceOf: NFDI4Health_PR_MDS_Provenance
Title: "Instance Of Provenance Automatically Uploaded From CTgov"
Description: "Example of the NFDI4Health PR MDS Provenance profile for a resource automatically uploaded from CT.gov"
Usage: #example

* extension[dataSource].valueCoding = $ProvenanceDataSource#01 "Automatically uploaded: ClinicalTrials.gov"
* target = Reference(ISARIC_COVID-19_CORE_Case_Report_Form)
* recorded = 2022-03-07T17:31:17.239+02:00 //made up, as no information in Central Search Hub
* activity = $Remaining#085 "First submitted" //made up, as no information
* agent.who = Reference(NFDI4Health_Practitioner)
