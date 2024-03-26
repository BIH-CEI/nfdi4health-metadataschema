Instance: InstanceOfGroupEligibilityHKR
InstanceOf: NFDI4Health_PR_MDS_Group_Eligibility
Usage: #example
Title: "Instance Of Group Intended for HCR"
Description: "Example data of eligibility information from the HCR - Hamburg Cancer Registry"
* type = #person
* actual = false
* characteristic[gender][0].valueCodeableConcept.coding = $SCT#248153007 "Male (finding)"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept.coding = $SCT#248152002 "Female (finding)"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept.coding = $Remaining#105 "Diverse"
* characteristic[gender][=].exclude = false
* characteristic[inclusionCriteria].valueCodeableConcept.text = "Neoplasms in persons being resident or treated in Hamburg according to the following list https://www.hamburg.de/contentblob/13525374/a6a00d4f19c573688d42994b8e491f3a/data/icd-10-codes.pdf"