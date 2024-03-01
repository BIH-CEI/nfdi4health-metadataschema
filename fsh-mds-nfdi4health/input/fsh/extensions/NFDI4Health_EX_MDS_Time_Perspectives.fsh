Extension: NFDI4Health_EX_MDS_Time_Perspectives
Id: nfdi4health-ex-mds-time-perspectives
Title: "NFDI4Health EX MDS Time Perspectives"
Description: "Group of items providing information about the temporal design of a non-interventional study"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-time-perspectives"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Temporal design"
* . ^definition = "Temporal design of the [RESOURCE], i.e. the observation period in relation to the time of participant enrollment."
* value[x] 1..1
* value[x] only Coding
* value[x] from NFDI4Health_VS_MDS_Study_Time_Perspectives_NCI (required)
* value[x] ^binding.description = "Value set created by NFDI4Health defining codes for data sources in a Provenance resource."
* value[x] ^comment = "Short input help: Is it a retrospective, prospective or cross-sectional [RESOURCE]?"
* value[x] ^binding.description = "Value set defining codes to specify the time perspective of a (sub-)study in a ResearchStudy resource."

Mapping: NFDI4Health-Time_Perspectives-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Time_Perspectives
* -> "Design.nonInterventional.timePerspectives"

