Extension: NFDI4Health_EX_MDS_Assessments
Id: nfdi4health-ex-mds-assessments
Title: "NFDI4Health EX MDS Assessments"
Description: "Extension providing information about assessments/measurements included in the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-assessments"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Library"
* . 0..*
* . ^short = "Additional assessments and measurements"
* . ^definition = "Any additional assessments/measurements included in the [RESOURCE]."
* . ^comment = "Select all that apply."
* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from NFDI4Health_VS_MDS_Study_Assessments_SCT_NCI (required)
* valueCoding ^binding.description = "Value set defining codes to specify an assessment in a ResearchStudy resource."

Mapping: NFDI4Health-Assessments-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Assessments
* -> "Design.assessments"