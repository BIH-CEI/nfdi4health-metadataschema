Profile: NFDI4Health_PR_MDS_Evidence_Variable_Intervention
Parent: EvidenceVariable
Id: nfdi4health-pr-mds-evidence-variable-intervention
Title: "NFDI4Health PR MDS Evidence Variable Intervention"
Description: "Information about the intervention or in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-evidence-variable-intervention"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Interventions of the [RESOURCE]"
* . ^definition = "
Group of items providing information about the interventions of the [RESOURCE]."
* . ^comment = "Additional information: 
Specification of the intervention(s) associated with each arm."
* title 1..
* title ^short = "Name of the intervention"
* title ^definition = "A short descriptive name of the intervention."
* title ^comment = "If the same intervention is associated with more than one arm, please provide the information once and use the field 'Name(s) of the arm(s) associated with the given intervention' to associate it with more than one arm."
* description ^short = "Additional information about the intervention"
* description ^definition = "If needed, additional descriptive information about the given intervention."
* characteristic.definitionCodeableConcept 1..1
* characteristic.definitionCodeableConcept from NFDI4Health_VS_MDS_Study_Intervention_Type_NCI (required)
* characteristic.definitionCodeableConcept ^binding.description = "Value set defining codes to specify the general type of the given intervention in the study."
* characteristic.definitionCodeableConcept ^short = "Type of the intervention"
* characteristic.definitionCodeableConcept ^definition = "General type of the given intervention."

Mapping: NFDI4Health-Evidence-Variable-Intervention-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Evidence_Variable_Intervention
* -> "Design.interventions"
* title -> "Design.interventions.name"
* description -> "Design.interventions.description"
* characteristic.definitionCodeableConcept -> "Design.interventions.type"
