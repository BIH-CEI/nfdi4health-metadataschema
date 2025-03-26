Extension: NFDI4Health_EX_MDS_Code
Id: nfdi4health-ex-mds-code
Title: "NFDI4Health EX MDS Code"
Description: "NFDI4Health Representation of Code"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-code"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Code"

* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-code" (exactly)
* value[x] 1..
* value[x] only uri

* . ^short = "Code"
* . ^definition = "Codein the terminology/classification used."
* . ^comment = "Short input help: If known, you can provide the code from the terminology/classification used."
* . ^example.label = "Example of an URI for a SNOMED CT concept."
* . ^example.valueUri = http://snomed.info/id/840533007