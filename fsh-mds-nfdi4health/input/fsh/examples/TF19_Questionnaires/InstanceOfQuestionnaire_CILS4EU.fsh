Instance: InstanceOfQuestionnaireCILS4COVID
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - Children of Immigrants Longitudinal Survey in Four European Countries – Germany. COVID-19 Zusatzstudie (CILS4COVID). Feldfragebogen"
Usage: #example
//General information
* identifier[NFDI4Health].value = "11"
* title = "Children of Immigrants Longitudinal Survey in Four European Countries – Germany. COVID-19 Zusatzstudie (CILS4COVID). Feldfragebogen"
* title.extension[language].valueCode = #de "German"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "The Essen Corona questionnaire is a follow-up survey of corona-tested individuals. It inquires about the reasons that led individuals to test for Covid-19, existing complaints and symptoms, previous illnesses and the course of symptom development."
* description.extension[language].valueCode = $UMLS#C0376245 "English Language"
* description.extension[translation].extension[content].valueString = "Dieses Dokument enthält die in der CILS4COVID-Umfrage verwendeten Feldfragebögen. Da die CILS4COVID-Umfrage ein Umfrageexperiment beinhaltete, gibt es zwei Versionen des Fragebogens, die sich nur in der Fragereihenfolge unterscheiden. Beide Versionen des postalischen Fragebogens sind in diesem Dokument separat präsentiert. Der Web-Fragebogen enthält beide Versionen und dokumentiert die Filter, die verwendet wurden, um die Teilnehmer einer der beiden Experimentalgruppen zuzuordnen."
* description.extension[translation].extension[lang].valueCode = #de "German"
///Details
* extension[resourceType].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[label].extension[value].valueString = "CILS4COVID (Questionnaire)"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Mental Health"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T025592.html"
* extension[keywords][+].extension[label].valueString = "Life Stress"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T039104.html"
* extension[keywords][+].extension[label].valueString = "Young Adult"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T718796.html"
* language = #de "German"
* extension[webpage].valueUrl = "https://www.cils4.eu/index.php?option=com_content&view=article&id=122&Itemid=229"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* extension[format].valueString = "PDF"
* copyright.extension[copyrightLabel].valueCoding = $UseRights#CC-BY-SA-4.0 "Creative Commons Attribution Share Alike 4.0 International"
//Roles
* extension[roles][0].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C42781 "Author (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationCreatorMZES)
* extension[roles].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
* extension[roles].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles].extension[party].valueReference = Reference(InstanceOfPractitionerRoleJoergDollmann)
//Related resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "10"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#065 "A is part of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "113"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "https://search.gesis.org/research_data/ZA6655?doi=10.4232/cils4eu-de.6655.5.0.0"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $HL7V3ActRelationType#APND "is appendage"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "10.31235/osf.io/azsb3"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $HL7V3ActRelationType#APND "is appendage"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $UMLS#C4704708 "Preprint (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "10.1080/14616696.2020.1825766"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $HL7V3ActRelationType#APND "is appendage"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $UMLS#C0282420 "Journal Article (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR