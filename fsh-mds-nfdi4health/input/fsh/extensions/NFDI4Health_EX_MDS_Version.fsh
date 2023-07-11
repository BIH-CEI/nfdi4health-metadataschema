Extension: NFDI4Health_EX_MDS_Version
Id: nfdi4health-ex-mds-version
Title: "NFDI4Health EX MDS Version"
Description: "Extension providing information about the version of a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-version"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "DocumentReference.content"
* . ^short = "Version of the [RESOURCE]"
* . ^definition = "If existing, the version number of the resource."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-version" (exactly)
* value[x] 1..
* value[x] only string

Mapping: NFDI4Health-Version-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Version
* -> "1.10.1 Resource.nonStudyDetails.version"