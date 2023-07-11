Extension: NFDI4Health_EX_MDS_Keyword
Id: nfdi4health-ex-mds-keyword
Title: "NFDI4Health EX MDS Keyword"
Description: "Extension storing keywords describing the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-keyword"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Questionnaire"
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-keyword" (exactly)
* value[x] 1..
* value[x] only CodeableConcept