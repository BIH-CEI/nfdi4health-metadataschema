Instance: InstanceOfQuestionnaireISARICCovid19CORECaseReportForm
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire - ISARIC COVID-19 CORE Case Report Form"
Usage: #example
//General information
* identifier[NFDI4Health].value = "98"
* title = "ISARIC COVID-19 CORE Case Report Form"
* title.extension[language].valueCode = #en "English"
* status = #active // mandatory in FHIR ; made up as no information in MDS
///English description
* description = "The ISARIC-WHO Case Report Forms (CRFs) should be used to collect standardised clinical data on individuals presenting with suspected or confirmed COVID-19 to improve patient care and inform the public health response. There are 2 forms available to choose from: the CORE form and the RAPID form. The CORE CRF is a more comprehensive form with more variables to understand the spectrum of disease and management, especially on pathogen testing, critical care interventions, and medications. It can be used where resources allow the collection of more data."
* description.extension[language].valueCode = $UMLS#C0376245 "English Language"
* description.extension[translation].extension[content].valueString = "Die ISARIC-WHO Case Report Forms (CRFs) sollen dazu verwendet werden, standartisierte klinische Daten von Individuen mit verdacht auf oder bestätigter COVID-19 Infektion zu sammeln, um die Versorgung des Patienten und die Informationsübermittlung zu verbessern. Es gibt 2 CRFs zwischen denen gewählt werden kann: Das CORE Formular und das RAPID Formular. Das CORE CRF ist ein umfassenderes Formular mit mehr Variablen, um das Spektrum der Krankheit und des Managements zu verstehen, insbesondere in Bezug auf Erregertests, Interventionen in der Intensivpflege und Medikamente. Es kann verwendet werden, wenn die Ressourcen die Erfassung von mehr Daten erlauben."
* description.extension[translation].extension[lang].valueCode = #de "German"
///Details
* extension[resourceType].valueCoding = $UMLS#C1516308 "Case Report Form (Intellectual Product)"
* extension[label].extension[value].valueString = "ISARIC COVID-19 CORE CRF"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym "Acronym"
* extension[label].extension[language].valueCode = #en "English"
* extension[keywords][+].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* language = #en "English"
* extension[webpage].valueUrl = "https://isaric.org/research/covid-19-clinical-research-resources/covid-19-crf/"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* extension[format].valueString = "PDF"
* copyright = "The document is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License by ISARIC on behalf of Oxford University."
* copyright.extension[copyrightLabel].valueCoding = $UseRights#CC-BY-SA-4.0 "Creative Commons Attribution Share Alike 4.0 International"
////Roles
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C42781 "Author (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationISARIC)
* extension[roles][+].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[rolePersonal].valueCoding = $NCI#C25461 "Contact Person (Human)"
* extension[roles][=].extension[party].valueReference = Reference(InstanceOfOrganizationISARIC)
//Related resources
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "10.1101/2020.07.17.20155218"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#066 "A is referenced by B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $UMLS#C4704708 "Preprint (Intellectual Product)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[resourceTypeGeneral].valueCoding = $NCI#C47824 "Data Set (Idea or Concept)"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][+].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "118"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
