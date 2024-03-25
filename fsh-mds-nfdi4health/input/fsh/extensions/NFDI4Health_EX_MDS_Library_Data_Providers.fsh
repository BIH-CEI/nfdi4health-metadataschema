Extension: NFDI4Health_EX_MDS_Library_Data_Providers
Id: nfdi4health-ex-mds-library-data-providers
Title: "NFDI4Health EX MDS Library Data Providers"
Description: "Extension informing about data providers of a regisrtry."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-library-data-providers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Library"
* . 0..1
* . ^short = "One or more data providers?"
* . ^definition = "Status of the study approval from the (leading) ethics committee"
* value[x] 1..1
* value[x] only Coding
* valueCoding from NFDI4Health_VS_MDS_Study_Data_Providers_Local (required)


Mapping: NFDI4Health-Library-Data-Provders-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Library_Data_Providers
* . -> "Design.dataProviders"
