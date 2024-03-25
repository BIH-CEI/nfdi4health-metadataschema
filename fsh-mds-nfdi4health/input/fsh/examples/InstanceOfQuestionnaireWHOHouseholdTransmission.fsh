Instance: InstanceOfQuestionnaireWHOHouseholdTransmission
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Data Dictionary for the WHO's Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
Usage: #example

//General information
* status = #active // mandatory in FHIR ; made up as no information in MDS

///English description
* extension[descriptions].extension[value].valueString = "This is a data dictionary for the 'Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)'. This data dictionary is prepared for upload into OPAL/MICA applications of the OBiBa (Open Source Software for BioBanks) software suite. The variables are annotated with metadata using the variable classification taxonomy developed by Maelstrom Research. Further information about format and applications can be found in Doiron et al."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

///Details
* extension[keywords][0].valueCodeableConcept.text = "COVID-19"
* extension[keywords][=].valueCodeableConcept.coding.system = "https://id.nlm.nih.gov/mesh/D000086382"
* extension[keywords][+].valueCodeableConcept.text = "Dictionary"
* extension[keywords][=].valueCodeableConcept.coding.system  = "https://id.nlm.nih.gov/mesh/T049210"
* language = #en "English"

//* extension[webpage].valueUrl = "https://mica.covid19.studyhub.nfdi4health.de/dataset/whoncov-hhtransmission"
* extension[format].valueString = "XLSX"
* copyright = "This data dictionary was created by the NFDI4Health Task Force COVID-19 on the basis of the 'Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)' licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 IGO License (CC BY-NC-SA 3.0 IGO). Please contact the authors/contact persons to get permission to reuse the data dictionary in whole or parts of it."
* copyright.extension[copyrightLabelandLink].extension[label].valueCoding = $SCT#74964007 "Other"

//Related resources
* extension[relatedResources].valueRelatedArtifact = InstanceOfRelatedArtifact
