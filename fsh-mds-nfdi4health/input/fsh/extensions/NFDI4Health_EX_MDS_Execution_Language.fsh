Extension: NFDI4Health_EX_MDS_Execution_Language
Id: nfdi4health-ex-mds-execution-language
Title: "NFDI4Health EX MDS Language"
Description: "Extension provinding information about the language the [RESOURCE] is conducted/provided."
* ^url = "http://hl7.org/fhir/StructureDefinition/language"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* . 0..*
* . ^short = "languages"
* . ^definition = "Language(s) in which the [RESOURCE] is conducted/provided."

* value[x] only code
* valueCode from $ISOLanguage (required)
* valueCode ^short = "A human language."
* valueCode ^definition = "A human language."

Mapping: NFDI4Health-Execution-Language-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Execution_Language
* -> "Resource.languages"