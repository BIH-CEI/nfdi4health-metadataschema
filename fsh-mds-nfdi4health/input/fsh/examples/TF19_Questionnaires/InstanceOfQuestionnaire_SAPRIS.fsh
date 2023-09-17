Instance: InstanceOfQuestionnaireSAPRISSurvey
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Questionnaire (Data Dictionary) of the SAPRIS Survey"
Usage: #example
//General information
* identifier[NFDI4Health].value = "131"
* title = "Questionnaire (Data Dictionary) of the SAPRIS Survey"
* title.extension[language].valueCode = #en "English"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "The questionnaire includes questions on the impact of COVID-19 symptoms and other health problems including mental health, risk perception and preventive practices, recourse to or withholding of care, effects on daily life, violence, family, social and work relations, child care, confidence in public and scientific recommendations."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $Remaining#009 "Data dictionary"
* extension[label].extension[value].valueString = "SAPRIS Questionnaire"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* extension[keywords][+].extension[label].valueString = "Dictionary"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T049210.html"
* language = #fr "French"
* extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* extension[format].valueString = "XLSX"
* copyright = "Please contact the authors/contact persons to get permission to reuse the data dictionary in whole or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
//Roles
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleNathalieBajos)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "26"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "132"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR