Extension: NFDI4Health_EX_MDS_Language
Id: nfdi4health-ex-mds-language
Title: "NFDI4Health EX MDS Language"
Description: "Language of an element."
* ^url = "http://hl7.org/fhir/StructureDefinition/language"
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
* . ^short = "language"
* . ^definition = "Language in which the title/name, acronym or description text is provided."

* value[x] from $ISOLanguage (required)
