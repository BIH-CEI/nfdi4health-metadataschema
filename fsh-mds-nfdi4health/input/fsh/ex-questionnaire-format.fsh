Extension: NFDI4Health_EX_MDS_Format
Id: nfdi4health-ex-mds-provenance-data-source
Title: "NFDI4Health EX MDS Format"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-format"
* ^version = "0.9"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Questionnaire"
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-format" (exactly)
* value[x] only string

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Format
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Questionnaire-Format-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Format
* -> "1.10.2 Resource.nonStudyDetails.format"