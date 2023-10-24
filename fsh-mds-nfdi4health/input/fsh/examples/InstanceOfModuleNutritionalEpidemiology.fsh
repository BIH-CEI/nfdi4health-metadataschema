Instance: InstanceOfNutritionalEpidemiologyModule
InstanceOf: Questionnaire
Title: "NFDI4Health Module Nutritional Epidemiology Metadataschema (Use Case 5.1) V3"
Usage: #example
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-example-nutritional-epidemiology"
* status = #draft
* name = "ModuleofNutritionalEpidemiology"
* title = "NFDI4Health Module Nutritional Epidemiology Metadataschema (Use Case 5.1) V3"
* description = "Group of items providing information on diet assessment.\n\n**Additional information: **Filtering condition to decide if all following questions will be asked."
* identifier.value = "NE1" 
* item[0].type = #choice
* item[=].linkId = "NE1.1"
* item[=].text = "Which dietary assessment instrument is used in the study/data collection event?"
* item[=].required = true
* item[=].answerValueSet = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-instrument-nci-local"
* item[+].type = #integer
* item[=].linkId = "NE1.2"
* item[=].text = "How many items were inquired with the FFQ?"
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "NE1.3"
* item[=].text = "Mode used to apply the dietary assessment instrument to study participants"
* item[=].required = true
* item[=].answerValueSet = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-mode-umls-local"
* item[+].type = #choice
* item[=].linkId = "NE1.4"
* item[=].text = "Device used to apply the dietary assessment instrument to study participants"
* item[=].required = true
* item[=].answerValueSet = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-device-nci-snomedct-local"
* item[+].type = #choice
* item[=].linkId = "NE1.5"
* item[=].text = "How is the portion size inquired in the dietary assessment instrument?"
* item[=].required = true
* item[=].answerValueSet = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-portion-size-snomedct-local"
* item[+].type = #choice
* item[=].linkId = "NE1.6"
* item[=].text = "Which reference period is the dietary assessment instrument referring to, e.g. 24-h recall is referring to the previous day."
* item[=].required = true
* item[=].answerValueSet = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-reference-period-unit-snomedct"
* item[+].type = #integer
* item[=].linkId = "NE1.7"
* item[=].text = "How many of the reference period units were assessed?"
* item[=].required = true
* item[+].type = #boolean
* item[=].linkId = "NE1.8"
* item[=].text = "Was the same instrument applied repeatedly?"
* item[=].required = true
* item[+].type = #integer
* item[=].linkId = "Diet_Assessment.Repeat_Frequency"
* item[=].text = "NE1.9"
* item[=].required = true
* item[+].type = #boolean
* item[=].linkId = "NE1.10"
* item[=].text = "Was the dietary assessment instrument validated?"
* item[=].required = true
* item[+].type = #string
* item[=].linkId = "NE1.11"
* item[=].text = "Please provide a reference describing the validation."
* item[=].required = true
* item[+].type = #boolean
* item[=].linkId = "NE1.12"
* item[=].text = "Was the dietary assessment instrument described according to its reliability?"
* item[=].required = true
* item[+].type = #string
* item[=].linkId = "NE1.13"
* item[=].text = "Please provide a reference describing the reliability measures."
* item[=].required = true
* item[+].type = #boolean
* item[=].linkId = "NE1.14"
* item[=].text = "Does the dietary assessment instrument inquire information about dietary supplements?"
* item[=].required = true