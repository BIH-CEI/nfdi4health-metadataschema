Extension: NFDI4Health_EX_MDS_URI
Id: nfdi4health-ex-mds-uri
Title: "NFDI4Health EX MDS URI"
Description: "Extension defining an URI"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-uri"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Coding"
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-uri" (exactly)
* value[x] 1..
* value[x] only uri or url