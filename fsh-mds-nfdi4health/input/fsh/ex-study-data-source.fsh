Alias: $nfdi4health-vs-mds-study-data-sources-general-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sources-general-umls-local
Alias: $nfdi4health-vs-mds-study-ds-biosamples-snomedct-nci-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-ds-biosamples-snomedct-nci-umls
Alias: $nfdi4health-vs-mds-study-data-sources-imaging-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sources-imaging-nci
Alias: $nfdi4health-vs-mds-study-data-sources-omics-nci-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sources-omics-nci-umls

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
    data-sources-general 0..* and
    data-sources-biosamples 0..* and
    data-sources-imaging 0..* and
    data-sources-omics 0..* and
    data-source-description 0..1
* extension[data-sources-general] ^short = "Data sources for the study (e.g. biosamples, registries, questionnaires, etc.)"
* extension[data-sources-general] ^definition = "Different types of data sources from which study data are generated or extracted."
* extension[data-sources-general] ^comment = "Select all that apply."
* extension[data-sources-general].value[x] 1..1
* extension[data-sources-general].value[x] only Coding
* extension[data-sources-general].value[x].code 1..1
* extension[data-sources-general].value[x].system 1..1
* extension[data-sources-general].value[x] from $nfdi4health-vs-mds-study-data-sources-general-umls-local (required)
* extension[data-sources-general].value[x] ^binding.description = "Value set defining codes to specify the general study data sources."
* extension[data-sources-biosamples] ^short = "Biosamples collected in the study"
* extension[data-sources-biosamples] ^definition = "Specification of biosamples collected in the study."
* extension[data-sources-biosamples].value[x] 1..1   
* extension[data-sources-biosamples].value[x] only Coding
* extension[data-sources-biosamples].value[x].code 1..1
* extension[data-sources-biosamples].value[x].system 1..1
* extension[data-sources-biosamples].value[x] from nfdi4health-vs-mds-study-ds-biosamples-snomedct-nci-umls (required)
* extension[data-sources-biosamples].value[x] ^binding.description = "Value set defining codes to specify a biosample data source."
* extension[data-sources-imaging] ^short = "Imaging data collected in the study"
* extension[data-sources-imaging] ^definition = "Specification of imaging data collected in the study."
* extension[data-sources-imaging].value[x] 1..1
* extension[data-sources-imaging].value[x] only Coding
* extension[data-sources-imaging].value[x].code 1..1
* extension[data-sources-imaging].value[x].system 1..1 
* extension[data-sources-imaging].value[x] from $nfdi4health-vs-mds-study-data-sources-imaging-nci (required)
* extension[data-sources-imaging] ^binding.description = "Value set defining codes to specify an imaging data source."
* extension[data-sources-omics] ^short = "Omics technology used in the study"
* extension[data-sources-omics] ^definition = "Specification of omics technology applied in the study."
* extension[data-sources-omics].value[x] 1..1
* extension[data-sources-omics].value[x] only Coding
* extension[data-sources-omics].value[x].code 1..1
* extension[data-sources-omics].value[x].system 1..1
* extension[data-sources-omics].value[x] from $nfdi4health-vs-mds-study-data-sources-omics-nci-umls (required)
* extension[data-sources-omics] ^binding.description = "NFDI4Health VS MDS Study Data Sources Omics [NCI, UMLS]"
* extension[data-source-description] ^short = "Additional information about data sources"
* extension[data-source-description] ^definition = "If needed, additional descriptive information about study data sources, e.g. indication of the data source(s) not listed in the property 'Data sources for the study' or more detailed description of the selected data sources."
* extension[data-source-description].value[x] only string

Mapping: NFDI4Health-Study-Data-Source-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Data_Source
* -> "1.17.21 Resource.studyDesign.dataSource"
* extension[data-sources-general] -> "1.17.21.1 Resource.studyDesign.dataSource.general"
* extension[data-sources-biosamples] -> "1.17.21.2 Resource.studyDesign.dataSource.biosamples"
* extension[data-sources-imaging] -> "1.17.21.3 Resource.studyDesign.dataSource.imaging"
* extension[data-sources-omics] -> "1.17.21.4 Resource.studyDesign.dataSource.omics"
* extension[data-source-description] -> "1.17.21.5 Resource.studyDesign.dataSource.description"
