Extension: NFDI4Health_EX_MDS_Data_Source
Id: nfdi4health-ex-mds-data-source
Title: "NFDI4Health EX MDS Data Source"
Description: "Extension informing about data sources from which data are generated or extracted."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-data-source"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Data sources of the [RESOURCE]"
* . ^definition = "Group of items providing information about data sources from which the data of the [RESOURCE] are generated or extracted."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    general 0..* and
    biosamples 0..* and
    imaging 0..* and
    omics 0..* and
    description 0..1
* extension[general] ^short = "Type(s) of data sources"
* extension[general] ^definition = "Different types of data sources from which the data of the [RESOURCE] are generated or extracted."
* extension[general] ^comment = "Short input help: Select all that apply."
* extension[general].value[x] 1..1
* extension[general].value[x] only Coding
* extension[general].valueCoding.code 1..1
* extension[general].valueCoding.system 1..1
* extension[general].valueCoding from NFDI4Health_VS_MDS_Study_Data_Sources_General_NCI_Local (required)
* extension[general].valueCoding ^binding.description = "Value set defining codes to specify the general study data sources."
* extension[biosamples] ^short = "Biosamples collected"
* extension[biosamples] ^definition = "Specification of biosamples collected in the [RESOURCE]."
* extension[biosamples] ^comment = "Short input help: Select all that apply."
* extension[biosamples].value[x] 1..1   
* extension[biosamples].value[x] only Coding
* extension[biosamples].valueCoding.code 1..1
* extension[biosamples].valueCoding.system 1..1
* extension[biosamples].valueCoding from NFDI4Health_VS_MDS_Study_DS_Biosamples_SCT_NCI (required)
* extension[biosamples].valueCoding ^binding.description = "Value set defining codes to specify a biosample data source."
* extension[imaging] ^short = "Imaging data collected"
* extension[imaging] ^definition = "Specification of imaging data collected in the [RESOURCE]."
* extension[imaging] ^comment = "Short input help: Select all that apply."
* extension[imaging].value[x] 1..1
* extension[imaging].value[x] only Coding
* extension[imaging].valueCoding.code 1..1
* extension[imaging].valueCoding.system 1..1 
* extension[imaging].valueCoding from NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI (required)
* extension[imaging].valueCoding ^binding.description = "Value set defining codes to specify an imaging data source."
* extension[omics] ^short = "Omics technology used"
* extension[omics] ^definition = "Specification of omics technology applied in the [RESOURCE]."
* extension[omics] ^comment = "Short input help: Select all that apply."
* extension[omics].value[x] 1..1
* extension[omics].value[x] only Coding
* extension[omics].valueCoding.code 1..1
* extension[omics].valueCoding.system 1..1
* extension[omics].valueCoding from NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI (required)
* extension[omics].valueCoding ^binding.description = "NFDI4Health VS MDS Study Data Sources Omics [NCI, UMLS]"
* extension[description] ^short = "Additional information about data sources"
* extension[description] ^definition = "If needed, additional descriptive information about the data sources of the [RESOURCE], e.g. indication of the data source(s) not listed in the field 'Type(s) of data sources' or a more detailed description of the selected data sources."
* extension[description] ^comment = "Short input help: You can indicate here other data source(s) not listed in the field 'Type(s) of data sources' or provide a more detailed description of the selected data sources."
* extension[description].value[x] only string

Mapping: NFDI4Health-Data-Source-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Data_Source
* -> "1.17.14 Design.dataSource"
* extension[general] -> "1.17.14.1 Design.dataSource.general"
* extension[biosamples] -> "1.17.14.2 Design.dataSource.biosamples"
* extension[imaging] -> "1.17.14.3 Design.dataSource.imaging"
* extension[omics] -> "1.17.14.4 Design.dataSource.omics"
* extension[description] -> "1.17.14.5 Design.dataSource.description"