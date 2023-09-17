Instance: InstanceOfQuestionnaireWHOEUropesQuestionnaireOnCOVID19Behaviour
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Data Dictionary for the WHO Europe's Questionnaire on COVID-19 Behaviour"
Usage: #example
//General information
* identifier[NFDI4Health].value = "123"
* title = "Data Dictionary for the WHO Europe's Questionnaire on COVID-19 Behaviour"
* title.extension[language].valueCode = #en "English"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "This is a data dictionary based on the questionnaire included in the WHO Europe's 'Survey tool and guidance: rapid, simple, flexible behavioural insights on COVID-19'. This data dictionary is prepared for upload into OPAL/MICA applications of the OBiBa (Open Source Software for BioBanks) software suite. The variables are annotated with metadata using the variable classification taxonomy developed by Maelstrom Research. Further information about format and applications can be found in Doiron et al. (2017; https://doi.org/10.1093/ije/dyx180)."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $Remaining#009 "Data dictionary"
* extension[label].extension[value].valueString = "WHOEUCoVBehaviour" // made up as no information in CSH
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Dictionary"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T049210.html"
* language = #en "English"
* extension[webpage].valueUrl = "https://mica.covid19.studyhub.nfdi4health.de/dataset/who_europe-1"
* extension[format].valueString = "XLSX"
* extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* copyright = "All rights reserved by World Health Organization (WHO). Please contact the authors/contact persons to get permission to reuse the data dictionary in whole or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $Remaining#013 "All rights reserved"
//Roles
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C42781 "Author (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationCreatorWHORegionalOfficeEurope)
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles][=].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfPractitionerRoleKatrineBachHabersaat)
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles][=].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfPractitionerRoleMarthaScherzer)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "90"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $HL7V3ActRelationType#DRIV "is derived from"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR