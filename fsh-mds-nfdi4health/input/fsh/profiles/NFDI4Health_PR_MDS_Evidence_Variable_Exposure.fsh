Profile: NFDI4Health_PR_MDS_Evidence_Variable_Exposure
Parent: EvidenceVariable
Id: nfdi4health-pr-mds-evidence-variable-exposure
Title: "NFDI4Health PR MDS Evidence Variable Exposure"
Description: "Information about the exposure in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-evidence-variable-exposure"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Exposures"
* . ^definition = "Group of items providing information about the exposures of the [RESOURCE]."
* . ^comment = "Specification of the exposure(s) associated with each group."
* title 1..
* title ^short = "Name of the exposure"
* title ^definition = "A short descriptive name of the exposure."
* title ^comment = "If the same exposure is associated with more than one group, please provide the information once and use the field 'Name(s) of the group(s) associated with the given exposure' to associate it with more than one group."
* description ^short = "Additional information about the exposure"
* description ^definition = "If needed, additional descriptive information about the given exposure."
* characteristic.definitionCodeableConcept 1..1
* characteristic.definitionCodeableConcept from NFDI4Health_VS_MDS_Study_Exposure_Type_NCI (required)
* characteristic.definitionCodeableConcept ^binding.description = "Value set defining codes to specify the general type of the given intervention/exposure in the study."
* characteristic.definitionCodeableConcept ^short = "Type of the exposure"
* characteristic.definitionCodeableConcept ^definition = "General type of the given exposure."

Mapping: NFDI4Health-Evidence-Variable-Exposure-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Evidence_Variable_Exposure
* -> "Design.exposures"
* title -> "Design.exposures.name"
* description -> "Design.exposures.description"
* characteristic.definitionCodeableConcept -> "Design.exposures.type"