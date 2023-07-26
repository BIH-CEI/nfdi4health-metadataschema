Extension: NFDI4Health_EX_MDS_Language
Id: nfdi4health-ex-mds-language
Title: "NFDI4Health EX MDS Language"
Description: "Language of an element."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-language"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Extension"
* ^context[+].type = #element
* ^context[=].expression = "string"
* ^context[+].type = #element
* ^context[=].expression = "markdown"
* . ^short = "Language of an element."
* . ^definition = "Language of an element."
* value[x] 1..
* value[x] only code
* value[x] from CommonLanguages (required)
* value[x] ^binding.description = "A human language."