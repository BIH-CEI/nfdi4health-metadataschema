Instance: InstanceOfQuestionnaireGESISPanelSARSCoV2Questionnaire
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Fragebogen der Sondererhebung des GESIS-Panels zum Ausbruch des Coronavirus SARS-CoV-2 in Deutschland"
Usage: #example
//General information
* identifier[NFDI4Health].value = "102"
* title = "Fragebogen der Sondererhebung des GESIS-Panels zum Ausbruch des Coronavirus SARS-CoV-2 in Deutschland"
* title.extension[language].valueCode = #de "German"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "The Essen Corona questionnaire is a follow-up survey of corona-tested individuals. It inquires about the reasons that led individuals to test for Covid-19, existing complaints and symptoms, previous illnesses and the course of symptom development."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "GESIS Panel SARS-CoV-2 Questionnaire"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* language = #de "German"
* extension[webpage].valueUrl = "https://search.gesis.org/research_data/ZA5667"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* version = "1-1-0"
* extension[format].valueString = "PDF"
* copyright = "Please contact the authors/contact persons to get permission to reuse the questionnaire in whole or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
//Roles
* extension[roles][0].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationContactGESIS)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "27"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "134"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "dx.doi.org/10.1016/j.jinf.2020.11.028"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $UMLS#C0282420 "Journal Article (Intellectual Product)"