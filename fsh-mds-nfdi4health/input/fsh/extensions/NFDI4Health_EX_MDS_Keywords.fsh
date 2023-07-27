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
* . ^short = "Keyword(s) describing the  [RESOURCE]"
* . ^definition = "Group of items providing  Information about keywords describing the resource."
* . ^comment = "Additional information : The findability of the resource can be significantly increased if proper keywords are stated."
* . 0..*
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    label 1..1 and
    code 0..1
* extension[label] ^short = "Keyword"
* extension[label] ^definition = "Keyword(s) describing the resource."
* extension[label] ^comment = "Additional information : The use of terms from established classifications/vocabularies (e.g. MeSH, UMLS, SNOMED CT) is preferred. However, also self-assigned keywords are allowed.\r\nShort input help : Preferably, use terms from MeSH (https://meshb.nlm.nih.gov/search) or UMLS (https://uts.nlm.nih.gov/uts/umls/home)."
* extension[label].value[x] only string
* extension[code] ^short = "Code of the keyword"
* extension[code] ^definition = "If known, the code of the keyword in a classification/vocabulary."
* extension[code] ^comment = "Short input help : If found, the code from the classification/vocabulary used."
* extension[code].value[x] only uri

Mapping: NFDI4Health-Keywords-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Keywords
* -> "1.7 Resource.keywords"
* extension[label] -> "1.7.1 Resource.keywords.label"
* extension[code] -> "1.7.2 Resource.keywords.code"