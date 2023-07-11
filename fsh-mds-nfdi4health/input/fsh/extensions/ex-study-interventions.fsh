Extension: NFDI4Health_EX_MDS_Study_Interventions
Id: nfdi4health-ex-mds-study-interventions
Title: "NFDI4Health EX MDS Study Interventions"
Description: "Extension providing information about study interventions or exposures."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-interventions"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy.arm"
* . 0..*
* . ^short = "Interventions/exposures of the study"
* . ^definition = "Group of items providing information about study interventions or exposures."
* . ^comment = "The items may be not applicable for non-interventional studies."
* value[x] 1..1
* value[x] only Reference(EvidenceVariable)

Mapping: NFDI4Health-Study-Interventions-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Interventions
* -> "1.17.31 Resource.studyDesign.interventions"