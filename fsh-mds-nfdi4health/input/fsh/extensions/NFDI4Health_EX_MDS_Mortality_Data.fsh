Extension: NFDI4Health_EX_MDS_Mortality_Data
Id: nfdi4health-ex-mds-mortality-data
Title: "NFDI4Health EX MDS Mortality Data"
Description: "Extension covering information about the collection of mortality data"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-mortality-data"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Mortality data collected?"
* . ^definition = "Indication whether mortality data are collected in the [RESOURCE]."
* . ^comment = "Cardinality: 0..1, if (Resource.classification.type == ('Study' OR 'Substudy') AND Design.studyType.nonInterventional == ('Longitudinal' OR 'Cohort' OR 'Case-cohort' OR 'Birth cohort' OR 'Trend' OR 'Panel')) OR Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise 0..0
                Cardinality: 0..1, if (Resource.classification.type == ('C63536' OR 'C198230') AND Design.studyType.nonInterventional == ('C15273' OR 'C15208' OR '004' OR 'D015331' OR '005' OR 'C53311')) OR Resource.classification.type == ('C61393' OR '178'); otherwise 0..0"
* value[x] 1..  
* value[x] only Coding
* valueCoding from NFDI4Health_VS_MDS_Mortality_Data_NCI (required)
* valueCoding ^binding.description = "Value set defining codes to specify if mortality data were collected in a study."
* valueCoding.code 1..
* valueCoding.system 1..

Mapping: NFDI4Health-Mortality-Data-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Mortality_Data
* -> "Design.mortalityData"

