Instance: InstanceOfGroupEligibilitySPOVID
InstanceOf: NFDI4Health_PR_MDS_Group_Eligibility
Usage: #example
Title: "Instance Of Group Intended for SPOVID"
Description: "Example data of eligibility information from the SPOVID study - Sport & Long-COVID-Syndrom"
* type = #person
* actual = false
* characteristic[gender][0].valueCodeableConcept =  $SCT#248153007 "Male (finding)"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept = $SCT#248152002 "Female (finding)"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept = $Remaining#105 "Diverse"
* characteristic[gender][=].exclude = false