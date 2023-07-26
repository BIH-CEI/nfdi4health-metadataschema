Extension: NFDI4Health_EX_MDS_Execution_Language
Id: nfdi4health-ex-mds-execution-language
Title: "NFDI4Health EX MDS Execution Language"
Description: "Extension provinding information about the language in which a study/substudy is conducted, or the language in which a document is composed."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-execution-language"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* . 0..*
* . ^short = "Execution language(s) of the [RESOURCE]"
* . ^definition = "Language(s) in which a study/substudy is conducted, or a language in which a study document is composed."
* . ^comment = "Short input help: Select all that apply."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-execution-language" (exactly)
* value[x] 1..
* value[x] only code
* valueCode from $CommonLanguages (required)
* valueCode ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* valueCode ^short = "A human language."
* valueCode ^definition = "A human language."

Mapping: NFDI4Health-Execution-Language-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Execution_Language
* -> "1.8 -> Resource.languages"