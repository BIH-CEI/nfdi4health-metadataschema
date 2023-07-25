Alias: $nfdi4health-vs-mds-yes-no-undecided-snomedct-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-undecided-snomedct-nci
Alias: $nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-umls-local
Alias: $nfdi4health-vs-mds-study-data-sharing-plan-ds-snomedct-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sharing-plan-ds-snomedct-umls

Extension: NFDI4Health_EX_MDS_Study_Data_Sharing_Plan
Id: nfdi4health-ex-mds-study-data-sharing-plan
Title: "NFDI4Health EX MDS Study Data Sharing Plan"
Description: "Extension  providing information about the data sharing strategy of the study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-data-sharing-plan"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Information about data sharing"
* . ^definition = "Group of items providing information about the data sharing strategy of the study."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    generally 1..1 and
    supportingInformation 0..* and
    timeFrame 0..1 and
    accessCriteria 0..1 and
    description 0..1 and
    datashield 0..1 and
    url 0..1
* extension[generally] ^short = "Is it planned to share the data?"
* extension[generally] ^definition = "Indication whether there is a plan to make data collected in the study available. In case of studies with patients or other individuals, this refers to individual participant data (IPD)."
* extension[generally] ^comment = "Short input help: Select one value from the list."
* extension[generally].value[x] 1..1
* extension[generally].value[x] only Coding
* extension[generally].valueCoding.code 1..1
* extension[generally].valueCoding.system 1..1
* extension[generally].valueCoding from $nfdi4health-vs-mds-yes-no-undecided-snomedct-nci (required)
* extension[generally].valueCoding ^binding.description = "Value set used to respond to questions that can be answered Yes, No, or Undecided"
* extension[supportingInformation] ^short = "Supporting documents available in addition to the data"
* extension[supportingInformation] ^definition = "Supporting information/documents which will be made available in addition to the study data."
* extension[supportingInformation] ^comment = "Short input help: Select all that apply."
* extension[supportingInformation].value[x] 1..1
* extension[supportingInformation].value[x] only Coding
* extension[supportingInformation].valueCoding.code 1..1
* extension[supportingInformation].valueCoding.system 1..1 
* extension[supportingInformation].valueCoding from $nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-umls-local (required)
* extension[supportingInformation].valueCoding ^binding.description = "Value set defining codes to specify if the DataSHIELD/Opal infrastructure is available."
* extension[timeFrame] ^short = "When and for how long will the data be available?"
* extension[timeFrame] ^definition = "Indication when the data and, if applicable, supporting documents will become available and for how long."
* extension[timeFrame].value[x] only string
* extension[accessCriteria] ^short = "Criteria for the data access"
* extension[accessCriteria] ^definition = "Indication by what access criteria data will be shared, including: a) with whom, b) for what types of analyses, and c) by what mechanism."
* extension[accessCriteria] ^comment = "Short input help: E.g., with whom, for what types of analyses and by what mechanism the data will be shared."
* extension[accessCriteria].value[x] only string
* extension[description] ^short = "Additional information about data sharing"
* extension[description] ^definition = "Additional descriptive information providing more details about the data sharing, e.g. indication what data in particular will be shared or why the data will not be shared or why it is not yet decided."
* extension[description] ^comment = "Short input help: E.g., indication what data in particular will be shared or why the data will not be shared or why it is not yet decided"
* extension[description].value[x] only string
* extension[datashield] ^short = "Is the DataSHIELD/Opal infrastructure available?"
* extension[datashield] ^definition = "Indication, whether the DataSHIELD/Opal infrastructure is available."
* extension[datashield].value[x] 1..1
* extension[datashield].value[x] only Coding
* extension[datashield].valueCoding.code 1..1
* extension[datashield].valueCoding.system 1..1
* extension[datashield].valueCoding from $nfdi4health-vs-mds-study-data-sharing-plan-ds-snomedct-umls (required)
* extension[datashield].valueCoding ^binding.description = "Value set defining codes to specify if the DataSHIELD/Opal infrastructure is available."
* extension[url] ^short = "Web page with additional information about data sharing"
* extension[url] ^definition = "If existing, a link to the web page where additional information about data sharing can be found."
* extension[url].value[x] only url

Mapping: NFDI4Health-Data-Sharing-Plan-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Data_Sharing_Plan
* -> "1.17.35 Resource.studyDesign.dataSharingPlan"
* extension[generally] -> "1.17.35.1 Resource.studyDesign.dataSharingPlan.generally"
* extension[supportingInformation] -> "1.17.35.2 Resource.studyDesign.dataSharingPlan.supportingInformation"
* extension[timeFrame] -> "1.17.35.3 Resource.studyDesign.dataSharingPlan.timeFrame"
* extension[accessCriteria] -> "1.17.35.4 Resource.studyDesign.dataSharingPlan.accessCriteria"
* extension[description] -> "1.17.35.5 Resource.studyDesign.dataSharingPlan.description"
* extension[datashield] -> "1.17.35.6 Resource.studyDesign.dataSharingPlan.datashield"
* extension[url] -> "1.17.35.7 Resource.studyDesign.dataSharingPlan.url"
