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
* . ^short = "For 1.17.21	Design.interventions: Interventions of the [RESOURCE] | For 1.17.22	Design.exposures: Exposures of the [RESOURCE]"
* . ^definition = "For 1.17.21 Design.interventions: Group of items providing information about the interventions of the [RESOURCE]. | For 1.17.22 Design.exposures: Group of items providing information about the exposures of the [RESOURCE]."
* . ^comment = "Additional information: For 1.17.21 Design.interventions: Specification of the intervention(s) associated with each arm. | For 1.17.22 Design.exposures: Specification of the exposure(s) associated with each group."
* title 1..
* title ^short = "For 1.17.21.1	Design.interventions.name: Name of the intervention | For 1.17.22.1	Design.exposures.name: Name of the exposure"
* title ^definition = "For 1.17.21.1 Design.interventions.name: A short descriptive name of the intervention.| For 1.17.22.1	Design.exposures.name: A short descriptive name of the exposure."
* title ^comment = "Short input help: For 1.17.21.1 Design.interventions.name: If the same intervention is associated with more than one arm, please provide the information once and use the field 'Name(s) of the arm(s) associated with the given intervention' to associate it with more than one arm. | For 1.17.22.1	Design.exposures.name: If the same exposure is associated with more than one group, please provide the information once and use the field 'Name(s) of the group(s) associated with the given exposure' to associate it with more than one group."
* description ^short = "For 1.17.21.3 Design.interventions.description: Additional information about the intervention | For 1.17.22.3	Design.exposures.description: Additional information about the exposure"
* description ^definition = "For 1.17.21.3 Design.interventions.description: If needed, additional descriptive information about the given intervention. | For 1.17.22.3 Design.exposures.description: If needed, additional descriptive information about the given exposure."
* characteristic.definitionCodeableConcept 1..1
* characteristic.definitionCodeableConcept from NFDI4Health_VS_MDS_Study_Intervention_Or_Exposure_Type_NCI (required)
* characteristic.definitionCodeableConcept ^binding.description = "Value set defining codes to specify the general type of the given intervention/exposure in the study."
* characteristic.definitionCodeableConcept ^short = "For 1.17.21.2 Design.interventions.type: Type of the intervention | For 1.17.22.2 Design.exposures.type: Type of the exposure"
* characteristic.definitionCodeableConcept ^definition = "For 1.17.21.2 Design.interventions.type: General type of the given intervention. | For 1.17.22.2 Design.exposures.type: General type of the given exposure."

Mapping: NFDI4Health-Evidence-Variable-Intervention-Exposure-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure
* -> "Design.interventions"
* -> "Design.exposures"
* title -> "Design.interventions.name"
* title -> "Design.exposures.name"
* description -> "Design.interventions.description"
* description -> "Design.exposures.description"
* characteristic.definitionCodeableConcept -> "Design.interventions.type"
* characteristic.definitionCodeableConcept -> "Design.exposures.type"