Alias: $nfdi4health-vs-mds-study-subject-snomedct = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-subject-snomedct

Extension: NFDI4Health_EX_MDS_Study_Subject
Id: nfdi4health-ex-mds-study-subject
Title: "NFDI4Health EX MDS Study Subject"
Description: "Extension informing about the subject of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-subject"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Primary study subject "
* . ^definition = "Primary study subject, i.e. a person, an animal or some other type of the subject."
* . ^comment = "Short input help: Select one value from the list."
* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from $nfdi4health-vs-mds-study-subject-snomedct (required)
* valueCoding ^binding.description = "Value set defining codes for study sujects in a ResearchStudy resource."

Mapping: NFDI4Health-Study-Subject-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Subject
* -> "1.17.19 Resource.studyDesign.subject"