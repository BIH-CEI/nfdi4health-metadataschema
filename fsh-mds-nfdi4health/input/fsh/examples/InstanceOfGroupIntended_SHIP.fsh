Instance: InstanceOfGroupIntendedSHIP
InstanceOf: NFDI4Health_PR_MDS_Group_Intended
Usage: #example
Title: "Instance Of Group Intended for SHIP Trend"
Description: "Example data of eligibility information from the SHIP Trend study - Study of Health in Pomerania Trend"
* type = #person
* actual = false
* characteristic[eligibleMinimumAge].valueQuantity = $UCUM#a "year"
* characteristic[eligibleMinimumAge].valueQuantity.value = 20
* characteristic[eligibleMinimumAge].exclude = false
* characteristic[eligibleMaximumAge].valueQuantity = $UCUM#a "year"
* characteristic[eligibleMaximumAge].valueQuantity.value = 79
* characteristic[eligibleMaximumAge].exclude = false
* characteristic[gender][0].valueCodeableConcept.coding = $SCT#248153007 "Male (finding)"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept.coding = $SCT#248152002 "Female (finding)"
* characteristic[gender][=].exclude = false
* characteristic[gender][+].valueCodeableConcept.coding = $Remaining#105 "Diverse"
* characteristic[gender][=].exclude = false
* characteristic[inclusionCriteria].valueCodeableConcept.text = "-meeting the age range -first place of residence in the target region Pomerania (Vorpommern / West Pomerania)"
* characteristic[exclusionCriteria].valueCodeableConcept.text = "-persons not being able to understand German"