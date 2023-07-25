Alias: $nfdi4health-vs-mds-study-assessments-snomedct-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-assessments-snomedct-umls

Extension: NFDI4Health_EX_MDS_Study_Assessments
Id: nfdi4health-ex-mds-study-assessments
Title: "NFDI4Health EX MDS Study Assessments"
Description: "Extension providing information about assessments/measurements included in the study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-assessments"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Further assessments/measurements included in the study"
* . ^definition = "Assessments/measurements included in the study"
* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from $nfdi4health-vs-mds-study-assessments-snomedct-umls (required)
* valueCoding ^binding.description = "Value set defining codes to specify an assessment in a ResearchStudy resource."

Mapping: NFDI4Health-Study-Assessments-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Assessments
* -> "1.17.34 Resource.studyDesign.assessments"