Alias: $nfdi4health-vs-mds-study-time-perspectives-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-time-perspectives-umls

Extension: NFDI4Health_EX_MDS_Study_Time_Perspectives
Id: nfdi4health-ex-mds-study-time-perspectives
Title: "NFDI4Health EX MDS Study Time Perspectives"
Description: "Extension informing about the temporal design of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-time-perspectives"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Temporal design of the study"
* . ^definition = "Temporal design of the study, i.e. the  relationship of observation period to time of participant enrollment."
* . ^comment = "Is it a retrospective, prospective or cross-sectional study?"
* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-study-time-perspectives-umls (required)
* value[x] ^binding.description = "Value set defining codes to specify the time perspective of a study in a ResearchStudy resource."

Mapping: NFDI4Health-Study-Time-Perspectives-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Time_Perspectives
* -> "1.17.36.1 Resource.studyDesign.nonInterventional.timePerspectives"