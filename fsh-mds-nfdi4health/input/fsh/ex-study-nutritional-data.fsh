Extension: NFDI4Health_EX_MDS_Nutritional_Data
Id: nfdi4health-ex-mds-nutritional-data
Title: "NFDI4Health EX MDS Nutritional Data"
Description: "Extension asking if nutritional data was collected"
* ^version = "0.9"
* ^status = #draft
* ^contact.name = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* value[x] 1..
* value[x] only boolean

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Nutritional_Data
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Nutritional-Data-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Nutritional_Data
* -> "1.15 Resource.nutritionalData"