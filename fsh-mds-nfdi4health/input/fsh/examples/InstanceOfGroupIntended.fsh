Instance: InstanceOfGroupIntended
InstanceOf: NFDI4Health_PR_MDS_Group_Intended
Usage: #example
Title: "Instance Of Group Intended"
Description: "Example data of eligibility information from the SHIP Trend study - Study of Health in Pomerania Trend"
* type = #person
* actual = false
* characteristic[eligibleMinimumAge].valueQuantity = $UCUM#a "year"
* characteristic[eligibleMinimumAge].valueQuantity.value = 20
* characteristic[eligibleMinimumAge].exclude = false
* characteristic[eligibleMaximumAge].valueQuantity = $UCUM#a "year"
* characteristic[eligibleMaximumAge].valueQuantity.value = 79
* characteristic[eligibleMaximumAge].exclude = false
* characteristic[gender][0].valueCodeableConcept = $administrative-gender#male "Male"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept = $administrative-gender#female "Female"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept = $administrative-gender#other "Other"
* characteristic[gender][=].exclude = false