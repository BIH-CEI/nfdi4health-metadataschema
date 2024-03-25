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
* ^context[+].type = #element
* ^context[=].expression = "Library"
* . ^short = "Keyword(s) describing the [RESOURCE]"
* . ^definition = "Group of items providing information about keywords describing the [RESOURCE]."
* . ^comment = "Additional information: The findability of the [RESOURCE] can be significantly increased if proper keywords are stated."
* . 0..*
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.text 1..1

Mapping: NFDI4Health-Keywords-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Keywords
* -> "Resource.keywords"
* valueCodeableConcept.text -> "Resource.keywords.label"
* valueCodeableConcept.coding.system -> "Resource.keywords.code"