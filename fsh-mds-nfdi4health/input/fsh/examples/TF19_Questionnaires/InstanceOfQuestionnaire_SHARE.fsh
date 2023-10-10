Instance: InstanceOfQuestionnaireSHARECovid19Fragebogen
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire -  SHARE COVID-19 Fragebogen für Telefoninterviews"
Usage: #example
//General information
* identifier[NFDI4Health].value = "91"
* title = " SHARE COVID-19 Fragebogen für Telefoninterviews"
* title.extension[language].valueCode = #de "German"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = " As a reaction to the seriousness of the COVID-19 outbreak and the prolonged lockdowns, a special SHARE COVID-19 questionnaire was developed. 
This new questionnaire covers the most important life domains for the target population and asks specific questions about infections and changes in life during the lockdown: 
- Health and health behaviour such as general health before and after the COVID-19 outbreak, practice of safety measures (e.g. social distancing, wearing a mask); 
- Mental health (anxiety, depression, sleeping problems, and loneliness before and after the COVID-19 outbreak); 
- Infections and healthcare (COVID-19 related symptoms, SARS-CoV-2 testing and hospitalization, forgone medical treatment, satisfaction with treatments); 
- Changes in work and economic situation (unemployment, business closures, working from home, changes in working hours and income, financial support);
- Social networks (changes in personal contacts with family and friends, help given and received, personal care given and received)."
* description.extension[language].valueCode = $UMLS#C0376245 "English Language"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "SHARE COVID-19 Questionnaire"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* language = #en "English"
* extension[webpage].valueUrl = "https://share-eric.eu/fileadmin/pdf_questionnaire_COVID-19/SHAREw8_COVID19_qnn_20200602_routing.pdf"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* extension[format].valueString = "PDF"
* copyright = "Please contact the authors/contact persons to get permission to reuse the document or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $Remaining#013 "All rights reserved"
////Roles
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleAxelBoerschSupan)
//Related resources
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "10.6103/SHARE.w8cabeta.001"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "34"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "120"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
