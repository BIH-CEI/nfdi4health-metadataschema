Profile: NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure
Parent: EvidenceVariable
Id: nfdi4health-pr-mds-evidence-variable-intervention-exposure
Title: "NFDI4Health PR MDS Evidence Variable Intervention Exposure"
Description: "Information about the intervention or exposure in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-evidence-variable-intervention-exposure"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Interventions/exposures of the study"
* . ^definition = "Group of items providing information about study interventions or exposures."
* . ^comment = "Additional information: The items may be not applicable for non-interventional studies."
* title 1..
* title ^short = "Name of the intervention/exposure"
* title ^definition = "A short descriptive name of the intervention/exposure."
* title ^comment = "Additional information: Please specify the intervention(s)/exposure associated with each arm/group. | Short input help: If the same intervention/exposure is associated with more than one arm or group, provide the information once and use the field \"Name of the associated study arm/group\" to associate it with more than one arm/group."
* description ^short = "Additional information about the intervention/exposure"
* description ^definition = "If needed, additional descriptive information about the given intervention/exposure."
* characteristic.definitionCodeableConcept 1..1
* characteristic.definitionCodeableConcept from NFDI4Health_VS_MDS_Study_Intervention_Type_NCI (required)
* characteristic.definitionCodeableConcept ^short = "Type of the intervention/exposure"
* characteristic.definitionCodeableConcept ^definition = "General type of the given intervention/exposure."
* characteristic.definitionCodeableConcept ^binding.description = "Value set defining codes to specify the general type of the given intervention/exposure in the study."

Mapping: NFDI4Health-Evidence-Variable-Intervention-Exposure-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure
* -> "1.17.31 Resource.studyDesign.interventions"
* title -> "1.17.31.1 Resource.studyDesign.interventions.name"
* description -> "1.17.31.3 Resource.studyDesign.interventions.description"
* characteristic.definitionCodeableConcept -> "1.17.31.2 Resource.studyDesign.interventions.type"