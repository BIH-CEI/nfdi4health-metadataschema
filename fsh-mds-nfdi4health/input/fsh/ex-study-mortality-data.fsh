Alias: $nfdi4health-vs-mds-mortality-data-nci-snomedct = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-mortality-data-nci-snomedct

Extension: NFDI4Health_EX_MDS_Mortality_Data
Id: nfdi4health-ex-mds-mortality-data
Title: "NFDI4Health EX MDS Mortality Data"
Description: "Extension covering information about the collection of mortality data"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . ..1
* . ^short = "Were mortality data collected?"
* . ^definition = "Mortality data."
* value[x] 1..
* value[x] only Coding
* value[x] from $nfdi4health-vs-mds-mortality-data-nci-snomedct (required)
* value[x] ^binding.description = "Value set defining codes to specify if mortality data were collected in a study."
* value[x].code 1..

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Mortality_Data
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Mortality-Data-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Mortality_Data
* -> "1.17.5 Resource.studyDesign.mortalityData"