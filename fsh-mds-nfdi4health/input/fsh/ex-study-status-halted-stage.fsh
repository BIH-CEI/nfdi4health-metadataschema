Alias: $nfdi4health-vs-mds-study-status-halted-stage-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-status-halted-stage-local

Extension: NFDI4Health_EX_MDS_Study_Status_Halted_Stage
Id: nfdi4health-ex-mds-study-status-halted-stage
Title: "NFDI4Health EX MDS Study Status Halted Stage"
Description: "Extension informing about the stage when at what a study was halted."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-status-halted-stage"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "At what stage was the study stopped?"
* . ^definition = "If the study was stopped prematurely, specification of the stage at what it was halted."
* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-study-status-halted-stage-local (required)
* value[x] ^binding.description = "Value set defining codes to specify the status of a study when it was halted."

Mapping: NFDI4Health Study Status Halted Stage to FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Status_Halted_Stage
* -> "1.17.9 Resource.studyDesign.stageStopped"