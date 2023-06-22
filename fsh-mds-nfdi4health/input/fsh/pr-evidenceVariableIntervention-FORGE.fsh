Alias: $nfdi4health-vs-mds-study-intervention-type-nci-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-intervention-type-nci-umls

Profile: NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure
Parent: EvidenceVariable
Id: nfdi4health-pr-mds-evidence-variable-intervention-exposure
Title: "NFDI4Health PR MDS Evidence Variable Intervention Exposure"
Description: "Resource covering information about a study intervention or exposure."
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
* topic ..1
* topic from $nfdi4health-vs-mds-study-intervention-type-nci-umls (required)
* topic ^short = "Type of the intervention/exposure"
* topic ^definition = "General type of the given intervention/exposure."
* topic ^binding.description = "Value set defining codes to specify the general type of the given intervention/exposure in the study."
* topic.coding 1..1
* topic.coding.system 1..
* topic.coding.code 1..

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health
Id: NFDI4Health
Source: NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure
* -> "1.17.31 Resource.studyDesign.interventions"
* title -> "1.17.31.1 Resource.studyDesign.interventions.name"
* description -> "1.17.31.3 Resource.studyDesign.interventions.description"
* topic -> "1.17.31.2 Resource.studyDesign.interventions.type"