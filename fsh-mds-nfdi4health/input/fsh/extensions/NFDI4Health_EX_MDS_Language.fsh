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
* . ^short = "language"
* . ^definition = "Language in which the title/name, acronym or description text is provided."

* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept from NFDI4Health_VS_MDS_Languages_ISO (required)
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.coding.system 1..1
