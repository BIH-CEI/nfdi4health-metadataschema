Instance: InstanceOfQuestionnaireCovidCaseClusterHeinsbergStudy
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Fragebogen (Data Dictionary) der Covid-19 Case-Cluster-Studie (Heinsberg Studie)"
Usage: #example
//General information
* identifier[NFDI4Health].value = "139"
* title = "Fragebogen (Data Dictionary) der Covid-19 Case-Cluster-Studie (Heinsberg Studie)"
* title.extension[language].valueCode = #de "German"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "After having provided written and informed consent, participants of the substudy completed a questionnaire querying information including demographics, symptoms, underlying diseases, medication and participation in carnival festivities (main carnival session 'Kappensitzung' and others)."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $Remaining#009 "Data dictionary"
* extension[label].extension[value].valueString = "CoCCS Questionnaire"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* extension[keywords][+].extension[label].valueString = "Dictionary"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T049210.html"
* language = #de "German"
* extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* extension[format].valueString = "PDF"
* copyright = "Please contact the authors/contact persons to get permission to reuse the questionnaire in whole or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
//Roles
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleHendrikStreeck)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "31"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "140"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
