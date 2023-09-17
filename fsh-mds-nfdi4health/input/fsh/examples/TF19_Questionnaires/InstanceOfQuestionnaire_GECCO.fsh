Instance: InstanceOfQuestionnaireGECCO
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - German Corona Consensus Data Set"
Usage: #example
//General information
* identifier[NFDI4Health].value = "127"
* title = "German Corona Consensus Data Set"
* title.extension[language].valueCode = #en "English"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "In order to draw optimal benefit from research activities around COVID-19, it is important that data are collected in uniform formats and standards. Only then can data be clearly interpreted and shared across studies and systems. As part of the National University Medicine Research Network in the Fight Against COVID-19 (NFN), the Core Unit eHealth and Interoperability is developing the German Corona Consensus (GECCO) dataset in collaboration with the Charité-BIH Clinical Study Center (CSC).
GECCO is a compact dataset for collecting COVID-19-relevant research data - from demographic data such as age, gender, height and weight to measurements such as blood pressure or laboratory values, risk factors, medication use, symptoms and therapy procedures.
By using international IT standards, GECCO enables interoperable processing of these data. To this end, GECCO relies on the HL7 FHIR standard for data structures and primarily on SNOMED CT and LOINC for terminologies. There is also close networking with other initiatives and organizations, as the dataset builds on the FHIR-based preliminary work of the Medical Informatics Initiative (MII), HL7 Germany and the National Association of Statutory Health Insurance Physicians (KBV)."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "GECCO"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* extension[keywords][=].extension[code].valueUri = "http://snomed.info/id/840539006"
* language = #en "English"
* extension[webpage].valueUrl = "https://simplifier.net/forschungsnetzcovid-19"
* extension[resourceTypeGeneral].valueCoding = $NCI#C81893 "Standard (Intellectual Product)"
* copyright = "Copyright © 2021: Berlin Institute of Health, Anna-Louisa-Karsch-Str. 2, 10178 Berlin. The content of this specification is public. Reuse or publication claims are not limited. For the rights of use of the underlying FHIR technology see the FHIR Base Specification. Some code systems in use are issued and maintained by other organizations. The copyright of the respective publishers listed there is applicable."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
//Roles
* extension[roles][0].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C42781 "Author (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationCreatorBIH)
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleJulianSass)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "145"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "https://doi.org/10.1186/s12911-020-01374-w"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $UMLS#C0282420 "Journal Article (Intellectual Product)"
