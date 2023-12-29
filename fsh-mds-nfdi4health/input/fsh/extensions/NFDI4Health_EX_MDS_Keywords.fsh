Extension: NFDI4Health_EX_MDS_Keywords
Id: nfdi4health-ex-mds-keywords
Title: "NFDI4Health EX MDS Keyword"
Description: "Extension storing keyword(s) describing a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-keywords"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* . ^short = "keywords"
* . ^definition = "Group of items providing information about keywords describing the [RESOURCE]."
* . ^comment = "<p><strong>Additional information: </strong>The findability of the [RESOURCE] can be significantly increased if proper keywords are stated."
* . 0..*
* value[x] 1..1
* value[x] only CodeableConcept

Mapping: NFDI4Health-Keywords-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Keywords
* -> "Resource.keywords"
* text -> "Resource.keywords.label"
* coding.system -> "Resource.keywords.code"