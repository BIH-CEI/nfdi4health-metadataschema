Instance: InstanceOfQuestionnaireUKCovid19
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - UK Covid-19 Questionnaire (The Wellcome Covid-19 Questionnaire)"
Usage: #example
//General information
* identifier[NFDI4Health].value = "93"
* title = "UK Covid-19 Questionnaire (The Wellcome Covid-19 Questionnaire)"
* title.extension[language].valueCode = #de "German"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "This questionnaire asks about self-isolation, social distancing, and the activities of participants during the lockdown. The following cohorts took part in developing the questionnaire: ALSPAC, South Asia Biobank, COSMOS/SCAMP/Airwave, National blood donor cohort, SAPRIN, EXCEED, TwinsUK, Born in Bradford, Generation Scotland, ELSA, CLS cohorts."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "Wellcome Covid-19 Questionnaire" //made up as no information in CSH
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* language = #en "English"
* extension[webpage].valueUrl = "https://www.bristol.ac.uk/alspac/researchers/wellcome-covid-19/"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* extension[format].valueString = "PDF"
* copyright = "This questionnaire is freely available to population health researchers to download and use. The use of the questionnaire in whole or in part should be acknowledged. For more information, visit the project web page: http://www.bristol.ac.uk/alspac/researchers/wellcome-covid-19/."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
//Roles
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationContactALSPACSecretariat)
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationContactWellcome)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "121"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "https://www.nlm.nih.gov/dr2/UK_COVID19_Final_Questionnaire_23_April.pdf"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C1710546 "Uniform Resource Locator (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#072 "A is identical to B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $NCI#C17649 "Other (Qualitative Concept)"