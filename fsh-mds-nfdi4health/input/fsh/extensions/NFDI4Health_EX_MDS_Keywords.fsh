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
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    label 1..1 and
    code 0..1
* extension[label] ^short = "label"
* extension[label] ^definition = "Keyword(s) describing the [RESOURCE]."
* extension[label].value[x] only string
* extension[code] ^short = "code"
* extension[code] ^definition = "If known, the code of the keyword in the classification/vocabulary used"
* extension[code].value[x] only uri

Mapping: NFDI4Health-Keywords-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Keywords
* -> "Resource.keywords"
* extension[label] -> "Resource.keywords.label"
* extension[code] -> "Resource.keywords.code"