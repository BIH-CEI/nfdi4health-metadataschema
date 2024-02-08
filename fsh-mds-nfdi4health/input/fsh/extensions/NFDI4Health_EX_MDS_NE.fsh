Extension: NFDI4Health_EX_MDS_Nutritional_Data
Id: nfdi4health-ex-mds-nutritional-data
Title: "NFDI4Health EX MDS nutritional data"
Description: "Extension indicating whether the [RESOURCE] collects nutritional data."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-nutritional-data"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Composition"
* . 1..1
* . ^short = "Collects nutritional data?"
* . ^definition = "Indication whether the [RESOURCE] collects nutritional data."
* . ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* value[x] 1..
* value[x] only boolean

Mapping: NFDI4Health-Nutritional-Data-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Nutritional_Data
* -> "Resource.nutritionalData"