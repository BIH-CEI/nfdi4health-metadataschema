Extension: NFDI4Health_EX_MDS_Execution_Language
Id: nfdi4health-ex-mds-execution-language
Title: "NFDI4Health EX MDS Language"
Description: "Extension provinding information about the language the [RESOURCE] is conducted/provided."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-execution-language"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Composition"
* . 0..*
* . ^short = "Languages"
* . ^definition = "Language(s) in which the [RESOURCE] is conducted/provided."

* valueCode from nfdi4health-vs-mds-languages-iso (required)
* valueCode ^short = "A human language."
* valueCode ^definition = "A human language."
* valueCode ^comment = "Select all that apply."

Mapping: NFDI4Health-Execution-Language-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Execution_Language
* -> "Resource.languages"