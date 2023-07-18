Extension: NFDI4Health_EX_MDS_Format
Id: nfdi4health-ex-mds-format
Title: "NFDI4Health EX MDS Format"
Description: "Extension providing information about the format of a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-format"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . ^short = "Format of the [RESOURCE]"
* . ^definition = "Technical format of the resource."
* . ^comment = "Short input help : E.g., XML, PDF, XLSX, etc."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-format" (exactly)
* value[x] only string

Mapping: NFDI4Health-Format-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Format
* -> "1.10.2 Resource.nonStudyDetails.format"