Alias: $nfdi4health-vs-mds-study-assessments-sct-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-assessments-sct-nci

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
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Additional assessments/measurements in the [RESOURCE]"
* . ^definition = "Any additional assessments/measurements included in the [RESOURCE]."
* . ^comment = "Select all that apply."
* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from $nfdi4health-vs-mds-study-assessments-sct-nci (required)
* valueCoding ^binding.description = "Value set defining codes to specify an assessment in a ResearchStudy resource."

Mapping: NFDI4Health-Assessments-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Assessments
* -> "1.17.25 Design.assessments"