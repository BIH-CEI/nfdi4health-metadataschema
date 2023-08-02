Instance: InstanceOfGroupIntendedSPOVID
InstanceOf: NFDI4Health_PR_MDS_Group_Intended
Usage: #example
Title: "Instance Of Group Intended for SPOVID"
Description: "Example data of eligibility information from the SPOVID study - Sport & Long-COVID-Syndrom"
* type = #person
* actual = false
* quantity = 60
* characteristic[gender][0].valueCodeableConcept = $administrative-gender#male "Male"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept = $administrative-gender#female "Female"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept = $administrative-gender#other "Other"
* characteristic[gender][=].exclude = false