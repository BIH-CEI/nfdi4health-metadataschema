Instance: InstanceOfChronicDiseaseModule
InstanceOf: Questionnaire
Title: "NFDI4Health Module Epidemiology of Chronic Diseases Metadataschema (UC 5.2) V3"
Usage: #example
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-example-chronic-diseases-epidemiology"
* status = #draft
* name = "InstanceOfChronicDiseaseModule"
* title = "NFDI4Health Module Epidemiology of Chronic Diseases Metadataschema (UC 5.2) V3"
* item[0].type = #choice
* item[=].linkId = "8636042615631"
* item[=].prefix = "commonChronicDiseaseName"
* item[=].text = "On which of the following common chronic diseases were data collected?"
* item[=].required = true
* item[=].answerValueSet = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-cd-common-chronic-disease-name-snomedct"
* item[+].type = #choice
* item[=].linkId = "3382533000737"
* item[=].prefix = "dataCollected"
* item[=].text = "Type of data collected"
* item[=].required = true
* item[=].answerValueSet = "NFDI4Health_VS_MDS_Data_Collected_UMLS"
* item[+].type = #choice
* item[=].linkId = "479642564979"
* item[=].prefix = "informationSources"
* item[=].text = "From which source(s) are the data generated/extracted?"
* item[=].required = true
* item[=].answerValueSet = "NFDI4Health_VS_MDS_CD_Information_Sources_UMLS_Local"