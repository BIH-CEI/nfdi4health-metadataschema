Alias: $nfdi4health-vs-mds-provenance-data-source-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-provenance-data-source-local

Extension: NFDI4Health_EX_MDS_Provenance_Data_Source
Id: nfdi4health-ex-mds-provenance-data-source
Title: "NFDI4Health EX MDS Provenance Data Source"
Description: "Extension providing information about the source of information of the resource and the way it was uploaded/collected."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-provenance-data-source"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Provenance"
* ^context[+].type = #element
* ^context[=].expression = "Composition"
* . 1..1
* . ^short = "Source of information about the [RESOURCE]"
* . ^definition = "Source of information about the [RESOURCE] and the way it was uploaded/collected."
* value[x] 1..1
* value[x] only Coding
* value[x] from $nfdi4health-vs-mds-provenance-data-source-local (required)
* value[x] ^binding.description = "Value set created by NFDI4Health defining codes for data sources in a Provenance resource."

Mapping: NFDI4Health-Provenance-Data-Source-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Provenance_Data_Source
* -> "Resource.provenance.dataSource"