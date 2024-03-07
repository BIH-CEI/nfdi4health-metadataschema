Extension: NFDI4Health_EX_MDS_Subject
Id: nfdi4health-ex-mds-subject
Title: "NFDI4Health EX MDS Subject"
Description: "Extension informing about the subject of a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-subject"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Primary subject "
* . ^definition = "The primary subject addressed by the [RESOURCE], i.e. a person, an animal or other subject types."
* . ^comment = "Short input help: Select one value from the list."
* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from NFDI4Health_VS_MDS_Study_Subject_SNOMEDCT (required)
* valueCoding ^binding.description = "Value set defining codes for sujects in a resource."

Mapping: NFDI4Health-Subject-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Subject
* -> "Design.subject"