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
* . ^short = "Execution language of a resource"
* . ^definition = "Extension capturing the language(s) in which a study/substudy is conducted, or a language in which a study document is composed."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-execution-language" (exactly)
* value[x] 1..
* value[x] only code
* value[x] from $valueset-languages.html (required)
* value[x] ^short = "A human language."
* value[x] ^definition = "A human language."
* value[x] ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"