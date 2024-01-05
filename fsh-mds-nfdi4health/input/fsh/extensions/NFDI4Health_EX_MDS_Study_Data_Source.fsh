Extension: NFDI4Health_EX_MDS_Study_Data_Source
Id: nfdi4health-ex-mds-study-data-source
Title: "NFDI4Health EX MDS Study Data Source"
Description: "Extension informing about data sources from which study data are generated or extracted."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-data-source"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Data sources from which study data are generated or extracted."
* . ^definition = "Group of items providing information about data sources from which study data are generated or extracted."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    general 0..* and
    biosamples 0..* and
    imaging 0..* and
    omics 0..* and
    description 0..1
* extension[general] ^short = "Data sources for the study (e.g. biosamples, registries, questionnaires, etc.)"
* extension[general] ^definition = "Different types of data sources from which study data are generated or extracted."
* extension[general] ^comment = "Short input help: Select all that apply."
* extension[general].value[x] 1..1
* extension[general].value[x] only Coding
* extension[general].valueCoding.code 1..1
* extension[general].valueCoding.system 1..1
* extension[general].valueCoding from NFDI4Health_VS_MDS_Study_Data_Sources_General_NCI_Local (required)
* extension[general].valueCoding ^binding.description = "Value set defining codes to specify the general study data sources."
* extension[biosamples] ^short = "Biosamples collected in the study"
* extension[biosamples] ^definition = "Specification of biosamples collected in the study."
* extension[biosamples].value[x] 1..1   
* extension[biosamples].value[x] only Coding
* extension[biosamples].valueCoding.code 1..1
* extension[biosamples].valueCoding.system 1..1
* extension[biosamples].valueCoding from NFDI4Health_VS_MDS_Study_DS_Biosamples_SCT_NCI (required)
* extension[biosamples].valueCoding ^binding.description = "Value set defining codes to specify a biosample data source."
* extension[imaging] ^short = "Imaging data collected in the study"
* extension[imaging] ^definition = "Specification of imaging data collected in the study."
* extension[imaging].value[x] 1..1
* extension[imaging].value[x] only Coding
* extension[imaging].valueCoding.code 1..1
* extension[imaging].valueCoding.system 1..1 
* extension[imaging].valueCoding from NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI (required)
* extension[imaging].valueCoding ^binding.description = "Value set defining codes to specify an imaging data source."
* extension[omics] ^short = "Omics technology used in the study"
* extension[omics] ^definition = "Specification of omics technology applied in the study."
* extension[omics].value[x] 1..1
* extension[omics].value[x] only Coding
* extension[omics].valueCoding.code 1..1
* extension[omics].valueCoding.system 1..1
* extension[omics].valueCoding from NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI (required)
* extension[omics].valueCoding ^binding.description = "NFDI4Health VS MDS Study Data Sources Omics [NCI, UMLS]"
* extension[description] ^short = "Additional information about data sources"
* extension[description] ^definition = "If needed, additional descriptive information about study data sources, e.g. indication of the data source(s) not listed in the property 'Data sources for the study' or more detailed description of the selected data sources."
* extension[description] ^comment = "Short input help: E.g., indication of the data source(s) not listed in the field „Data sources for the study” or more detailed description of the selected data sources."
* extension[description].value[x] only string

Mapping: NFDI4Health-Study-Data-Source-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Data_Source
* -> "1.17.21 Resource.studyDesign.dataSource"
* extension[general] -> "Design.dataSource.general"
* extension[biosamples] -> "Design.dataSource.biosamples"
* extension[imaging] -> "Design.dataSource.imaging"
* extension[omics] -> "Design.dataSource.omics"
* extension[description] -> "Design.dataSource.description"