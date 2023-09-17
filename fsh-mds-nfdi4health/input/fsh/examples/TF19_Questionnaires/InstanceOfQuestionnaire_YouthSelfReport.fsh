Instance: InstanceOfQuestionnaireCRISISYouthBaselineForm
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - CRISIS Questionnaire - Youth Self-Report Baseline Form: Current Form"
Usage: #example
//General information
* identifier[NFDI4Health].value = "96"
* title = "CRISIS Questionnaire - Youth Self-Report Baseline Form: Current Form"
* title.extension[language].valueCode = #en "English"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "There are four versions of the CRISIS questionnaires: Baseline, Baseline Current, Follow Up, and Follow Up Current Forms. The Baseline Current Form is a shorter version of the Baseline Form that includes: a) Background section that obtains some basic demographic information; and b) Past two-week assessment of the survey domains. In contrast to the Baseline Form, it excludes the past three-month assessment of the survey domains. Generally, the CRISIS questionnaires include the following domains:
- Background (e.g., Demographics, Health, Family/living situation);
- Coronavirus/covid-19 health/exposure status;
- Life changes due to coronavirus/covid-19 crisis;
- Daily behaviors (e.g., sleep, physical activity, time outdoors);
- Emotions/worries (e.g., mood circumplex);
- Media use (e.g., mobile devices, media, etc.);
- Substance use (e.g., tobacco, alcohol, other drugs)."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "CRISIS Youth Baseline Current Form"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* language = #en "English"
* extension[webpage].valueUrl = "http://www.crisissurvey.org/download/"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* version = "V0.3"
* extension[format].valueString = "PDF"
* copyright = "For reuse purposes, copies of all forms, their translations and scoring information can be found on the download page of the CRISIS project."
* copyright.extension[copyrightLabel].valueCoding = $UseRights#CC-BY-4.0 "Creative Commons Attribution 4.0 International"
//Roles
* extension[roles][0].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C42781 "Author (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationCreatorCRISIS)
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleKathleenMerikangas)
//Related resources
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "10.1038/s41598-021-87270-3"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "18"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "115"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
