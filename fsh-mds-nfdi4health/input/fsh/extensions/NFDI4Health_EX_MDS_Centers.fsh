Alias: $nfdi4health-vs-mds-study-centers-snomedct-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-centers-snomedct-local

Extension: NFDI4Health_EX_MDS_Centers
Id: nfdi4health-ex-mds-centers
Title: "NFDI4Health EX MDS Centers"
Description: "Extension informing about the number of centers."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-centers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element

* value[x] 1..1
* value[x] only Coding
* valueCoding ^short = "Is it a mono- or multicentric study?"
* valueCoding ^definition = "Specification whether a study is conducted at one study center or at more than one study center."
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from $nfdi4health-vs-mds-study-centers-snomedct-local (required)

Mapping: NFDI4Health-EX-Centers-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Centers
* valueCoding -> "1.17.17 Resource.studyDesign.studyCenters"