Instance: ProvenanceExample
InstanceOf: NFDI4Health_PR_MDS_Provenance
Title:"Example of the NFDI4Health PR MDS Provenance profil"
Usage:#example

* extension[dataSource].valueCoding = #01 "Automatically uploaded: ClinicalTrials.gov" "The resource has been automatically uploaded from ClinicalTrials.gov"
* target = Reference(ISARIC_COVID-19_CORE_Case_Report_Form)
* recorded = 2000-01-01
* activity = #LA
* activity.coding.system = "https://www.nfdi4health.de"
* activity.coding.code = $Remaining#085 "First submitted"
* agent.who = Reference(NFDI4Health_Practitioner)
