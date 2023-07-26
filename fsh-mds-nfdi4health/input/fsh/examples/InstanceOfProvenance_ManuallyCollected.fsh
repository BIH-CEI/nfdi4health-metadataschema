Instance: InstanceOfProvenance_Manually_Collected
InstanceOf: NFDI4Health_PR_MDS_Provenance
Title: "Example of the NFDI4Health PR MDS Provenance profile for a resource manually collected"
Usage: #example

* extension[dataSource].valueCoding = $ProvenanceDataSource#06 "Manually collected"
* target = Reference(InstanceOfStudySHIP)
* recorded = 2022-02-07T13:28:17.239+02:00 //made up, as no information in Central Search Hub
* activity = $Remaining#085 "First submitted" //made up, as no information in Central Search Hub
* agent.who = Reference(InstanceOfPractitioner_Kathleen_Merikangas) //made up, as no information in Central Search Hub