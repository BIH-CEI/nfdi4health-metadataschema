Alias: $nfdi4health-vs-mds-yes-no-undecided-snomedct-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-undecided-snomedct-nci
Alias: $nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-umls-local
Alias: $nfdi4health-vs-mds-study-data-sharing-plan-ds-sct-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sharing-plan-ds-sct-nci

Extension: NFDI4Health_EX_MDS_Data_Sharing_Plan
Id: nfdi4health-ex-mds-data-sharing-plan
Title: "NFDI4Health EX MDS Data Sharing Plan"
Description: "Extension providing information about the data sharing strategy of the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-data-sharing-plan"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Data sharing strategy of the [RESOURCE]"
* . ^definition = "Group of items providing information about the data sharing strategy of the [RESOURCE]."

* extension contains
    generally 1..1 and
    supportingInformation 0..* and
    timeFrame 0..1 and
    accessCriteria 0..1 and
    description 0..1 and
    datashield 0..1 and
    requestData 0..1 and
    url 0..1 and
    recordLinkage 0..1
* extension[generally] ^short = "Is it planned to share the data?"
* extension[generally] ^definition = "Indication whether there is a plan to make data collected in the [RESOURCE] available. In case of a [RESOURCE] with patients or other individuals, this refers to individual participant data (IPD)."
* extension[generally] ^comment = "Short input help: Select one value from the list."
* extension[generally].value[x] 1..1
* extension[generally].value[x] only Coding
* extension[generally].valueCoding.code 1..1
* extension[generally].valueCoding.system 1..1
* extension[generally].valueCoding from $nfdi4health-vs-mds-yes-no-undecided-snomedct-nci (required)
* extension[generally].valueCoding ^binding.description = "Value set used to respond to questions that can be answered Yes, No, or Undecided"
* extension[supportingInformation] ^short = "Supporting documents available in addition to the data"
* extension[supportingInformation] ^definition = "Supporting information/documents which will be made available in addition to the data collected in the [RESOURCE]."
* extension[supportingInformation] ^comment = "Short input help: Select all that apply."
* extension[supportingInformation].value[x] 1..1
* extension[supportingInformation].value[x] only Coding
* extension[supportingInformation].valueCoding.code 1..1
* extension[supportingInformation].valueCoding.system 1..1 
* extension[supportingInformation].valueCoding from $nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-umls-local (required)
* extension[supportingInformation].valueCoding ^binding.description = "Value set defining codes to specify if the DataSHIELD/Opal infrastructure is available."
* extension[timeFrame] ^short = "When and for how long will the data be available?"
* extension[timeFrame] ^definition = "Indication of the time period for which the data and, if applicable, supporting documents will be made available."
* extension[timeFrame].value[x] only string
* extension[accessCriteria] ^short = "Criteria for data access"
* extension[accessCriteria] ^definition = "Indication of the access criteria by which the data will be shared, including: a) with whom; b) for which types of analyses; and c) by what mechanism."
* extension[accessCriteria] ^comment = "Short input help: Please provide here with whom, for which types of analyses and by what mechanism the data will be shared."
* extension[accessCriteria].value[x] only string
* extension[description] ^short = "Additional information about data sharing"
* extension[description] ^definition = "Additional descriptive information providing more details about data sharing, e.g. indication of which data in particular will be shared or why the data will not be shared or why it is not yet decided."
* extension[description] ^comment = "Short input help: Please indicate here which data in particular will be shared, or the reasons why it will not be shared or it is not yet decided."
* extension[description].value[x] only string
* extension[datashield] ^short = "DataSHIELD/Opal infrastructure available?"
* extension[datashield] ^definition = "Indication whether the DataSHIELD/Opal infrastructure is available."
* extension[datashield].value[x] 1..1
* extension[datashield].value[x] only Coding
* extension[datashield].valueCoding.code 1..1
* extension[datashield].valueCoding.system 1..1
* extension[datashield].valueCoding from $nfdi4health-vs-mds-study-data-sharing-plan-ds-sct-nci (required)
* extension[datashield].valueCoding ^binding.description = "Value set defining codes to specify if the DataSHIELD/Opal infrastructure is available."
* extension[requestData] ^short = "Link to data request application"
* extension[requestData] ^definition = "If existing, a link to the web page where the data request form and/or information on data reuse can be found."
* extension[requestData].value[x] only url
* extension[url] ^short = "Web page with additional information about data sharing"
* extension[url] ^definition = "If existing, a link to the web page where additional information about data sharing can be found."
* extension[url].value[x] only url
* extension[recordLinkage] ^short = "Record linkage possible?"
* extension[recordLinkage] ^definition = "Indication if record linkage with other data sources is possible."
* extension[recordLinkage] ^comment = "Additional Information: Record linkage refers to the merging of data on the same person from different databases."
* extension[recordLinkage].value[x] only boolean

Mapping: NFDI4Health-Data-Sharing-Plan-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Data_Sharing_Plan
* -> "Design.dataSharingPlan"
* extension[generally] -> "Design.dataSharingPlan.generally"
* extension[supportingInformation] -> "Design.dataSharingPlan.supportingInformation"
* extension[timeFrame] -> "Design.dataSharingPlan.timeFrame"
* extension[accessCriteria] -> "Design.dataSharingPlan.accessCriteria"
* extension[description] -> "Design.dataSharingPlan.description"
* extension[datashield] -> "Design.dataSharingPlan.datashield"
* extension[requestData] -> "Design.dataSharingPlan.requestData"
* extension[url] -> "Design.dataSharingPlan.url"
* extension[recordLinkage] -> "Design.dataSharingPlan.recordLinkage"
