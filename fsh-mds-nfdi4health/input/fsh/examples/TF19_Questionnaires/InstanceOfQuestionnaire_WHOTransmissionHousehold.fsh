Instance: InstanceOfQuestionnaireWHOHouseholdTransmission
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Data Dictionary for the WHO's Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
Usage: #example
//General information
* identifier[NFDI4Health].value = "112"
* title = "Data Dictionary for the WHO's Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
* title.extension[language].valueCode = #en "English"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "This is a data dictionary for the 'Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)'. This data dictionary is prepared for upload into OPAL/MICA applications of the OBiBa (Open Source Software for BioBanks) software suite. The variables are annotated with metadata using the variable classification taxonomy developed by Maelstrom Research. Further information about format and applications can be found in Doiron et al. (2017; https://doi.org/10.1093/ije/dyx180)."
* description.extension[language].valueCode = $UMLS#C0376245 "English Language"
///Details
* extension[resourceType].valueCoding = $Remaining#009 "Data dictionary"
* extension[label].extension[value].valueString = "WHO's Household transmission investigation protocol" // made up as no information in CSH
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Dictionary"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T049210.html"
* language = #en "English"
* extension[webpage].valueUrl = "https://mica.covid19.studyhub.nfdi4health.de/dataset/whoncov-hhtransmission"
* extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* extension[format].valueString = "XLSX"
* copyright = "This data dictionary was created by the NFDI4Health Task Force COVID-19 on the basis of the 'Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)' licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 IGO License (CC BY-NC-SA 3.0 IGO). Please contact the authors/contact persons to get permission to reuse the data dictionary in whole or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
////Roles
* extension[roles][0].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationContactWHO)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "97"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $HL7V3ActRelationType#DRIV "is derived from"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR