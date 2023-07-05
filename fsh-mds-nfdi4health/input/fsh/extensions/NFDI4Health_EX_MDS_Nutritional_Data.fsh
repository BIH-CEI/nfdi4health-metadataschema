Extension: NFDI4Health_EX_MDS_Nutritional_Data
Id: nfdi4health-ex-mds-nutritional-data
Title: "NFDI4Health EX MDS Nutritional Data"
Description: "Extension asking if nutritional data was collected"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-nutritional-data"
* ^version = "0.9"
* ^status = #draft
* ^contact.name = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-nutritional-data" (exactly)
* value[x] 1..
* value[x] only boolean

Mapping: NFDI4Health-Nutritional-Data-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Nutritional_Data
* -> "1.15 Resource.nutritionalData"