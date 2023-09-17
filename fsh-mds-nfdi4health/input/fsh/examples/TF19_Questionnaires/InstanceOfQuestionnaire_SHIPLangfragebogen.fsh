Instance: InstanceOfQuestionnaireSHIPLangfragebogen
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - SHIP Langfragebogen zu COVID-19"
Usage: #example
//General information
* identifier[NFDI4Health].value = "107"
* title = "SHIP Langfragebogen zu COVID-19"
* title.extension[language].valueCode = #de "German"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "The 12 page questionnaire includes questions on symptoms, behavior, expectations regarding the further course and effects of the pandemic, the assessment of ones own risk and agreement to preventive measures (initial examination). This survey will be repeated monthly and will be combined with a new antibody test (follow-up examinations) to detect possible infections with the pathogen that have occurred in the meantime."
* description.extension[language].valueCode = #en "English"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "SHIP Long Form" //made up as no information in CSH
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* language = #de "German"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* extension[format].valueString = "PDF"
* copyright = "Please contact the authors/contact persons to get permission to reuse the document or parts of it."
* copyright.extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
//Roles
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleCarstenOliverSchmidt)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "39"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "124"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
