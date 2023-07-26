Instance: ProvenanceExample
InstanceOf: NFDI4Health_PR_MDS_Provenance
Title: "Example of the NFDI4Health PR MDS Provenance profil"
Usage: #example

* extension[dataSource].valueCoding = #01
* extension[dataSource].valueCoding.system = "https://www.nfdi4health.de"
* target = Reference(ISARIC_COVID-19_CORE_Case_Report_Form)
* recorded = "2000-01-01T00:00:00Z"
* activity = #LA
* activity.coding.system = "https://www.nfdi4health.de"
* activity.coding.code = $Remaining#085 "First submitted"
* agent.who = Reference(NFDI4Health_Practitioner)
