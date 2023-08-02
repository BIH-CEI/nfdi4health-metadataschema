Instance: InstanceOfStudySPOVID
InstanceOf: NFDI4Health_PR_MDS_Study
Title: "Instance of Study SPOVID"
Description: "Example data from the SPOVID study - Sports & Long-COVID-Syndrome"
Usage: #example

//General information
* identifier[NFDI4Health].value = "236"
* title = "SPOVID - Sport & Long-COVID-Syndrom"
* title.extension[language].valueCode = #en "English"
///English description of the Study
* description = "In a pilot study, the SPOVID project is investigating whether an individually tailored training program can safely and effectively improve the physical endurance of Long COVID-19 patients. To this end, the researchers observe fitness parameters of cardiovascular and lung function in particular over several months, but also the development of headache, fatigue and fatigue symptoms. From the results, they want to derive recommendations for personalized training programs."
* description.extension[language].valueCode = #en "English"
* description.extension[translation].extension[content].valueString = "In einer Pilotstudie untersucht das Projekt SPOVID, ob ein individuell abgestimmtes Trainingsprogramm die körperliche Ausdauer von Long COVID-19-Patientinnen und -Patienten sicher und wirksam verbessern kann. Dazu beobachten die Forschenden über mehrere Monate hinweg insbesondere Fitnessparameter der Herz-Kreislauf- und der Lungenfunktion, aber auch die Entwicklung von Kopfschmerz-, Müdigkeits- und Erschöpfungssymptomen. Aus den Ergebnissen wollen sie Empfehlungen für personalisierte Trainingsprogramme ableiten."
* description.extension[translation].extension[lang].valueCode = #de "German"
///Details
* extension[label].extension[value].valueString = "SPOVID"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym
* extension[label].extension[language].valueCode = #en "English"
* keyword[0].coding[0].code = $mesh#D000086382 "COVID-19"
* keyword[=].coding[=].extension[URI].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* keyword[+].coding[0].code = $mesh#T032041 "Pilot study"
* keyword[=].coding[=].extension[URI].valueUri = "https://id.nlm.nih.gov/mesh/T032041.html"
* keyword[+].coding[0].code = $mesh#D010806 "Physical Education and Training"
* keyword[=].coding[=].extension[URI].valueUri = "https://id.nlm.nih.gov/mesh/D010806.html"
* keyword[+].coding[0].code = $mesh#D015444 "Exercise"
* keyword[=].coding[=].extension[URI].valueUri = "https://id.nlm.nih.gov/mesh/D015444.html"
* keyword[+].coding[0].code = $mesh#D005081 "Exercise Therapy"
* keyword[=].coding[=].extension[URI].valueUri = "https://id.nlm.nih.gov/mesh/D005081.html"
* keyword[+].coding[0].code = $SCT#68130003 "Physical activity (observable entity)"
* keyword[=].coding[=].extension[URI].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=68130003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* keyword[+].coding[0].code = $SCT#1119303003 "Post-acute COVID-19 (disorder)"
* keyword[=].coding[=].extension[URI].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=1119303003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* extension[executionLanguage].valueCode = #de "German"
* relatedArtifact[webpage].url = "https://www.uni-due.de/med/meldung.php?id=1325"
//////Missing: source of info in Provenance

//Study characteristics
/// Administrative Information
* extension[studyStatus].extension[overallStatus].valueCoding = $StudyStatus#04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* extension[studyStatus].extension[statusWhenIntervention].valueCoding = $Remaining#014 "Intervention ongoing"
* period.start = 2008-01-05 //original format needed to be converted
* period.end = 2022-11-30 //original format needed to be converted
/// Study Design Details
* category[primaryDesign].coding = $UMLS#C3274035 "Interventional Study (Research Study)"
* category[studyTypeInterventional].coding = $UMLS#C0439673 "Unknown (Qualitative Concept)"
* extension[subject].valueCoding = $SCT#125676002 "Person (person)"
* extension[studyGroupsOfDiseases].extension[generally].valueCoding = $UMLS#C0439673 "Unknown (Qualitative Concept)"
* category[samplingMethod].coding = $NCI#C127781 "Non-Probability Sampling Method (Activity)"
* category[samplingMethodProbability].coding = $NCI#C71505 "Matched Sampling"
* extension[dataSource].extension[general][0].valueCoding = $Remaining#029 "Cognitive measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#032 "Physiological/Biochemical measurements"
* primaryPurposeType.coding = $study-prim-purp-type#treatment "Treatment"
* extension[masking].extension[general].valueBoolean = false
* category[allocation] = $NCI#C0034656 "Randomization (Health Care Activity)"
* extension[offLabelUse].valueCoding = $SCT#385432009 "Not applicable (qualifier value)"
* extension[nutritionalData].valueBoolean = false //made up, as no information in CSH
* extension[chronicDiseases].valueBoolean = false //made up, as no information in CSH
/// Information about data sharing
* extension[dataSharingPlan].extension[generally].valueCoding = $NCI#C150084 "Undecided (Intellectual Product)"

/// Primary health condition(s), disease(s) or focus of the study - modelling must be changed because not possible to have "other vocabulary" or "freetext" as system
* condition[0].coding = $SCT#1119303003 "Post-acute COVID-19 (disorder)"
* condition[=].coding.extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=1119303003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#84229001 "Fatigue (finding)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=84229001&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#739122008 "Cardiac physiological function (observable entity)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&latestRedirect=false&conceptId1=739122008&edition=MAIN/2023-07-31"
* condition[+].coding[0] = $SCT#78064003 "Respiratory function (observable entity)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=78064003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#76039005 " Disturbance of attention (finding)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=76039005&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#183301007 "Physical exercises (regime/therapy)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=183301007&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#225303001 "Evaluating interventions (procedure)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=225303001&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#424900004 "Recommendation - action (qualifier value)"
* condition[=].coding[=].extension[uri].valueUri = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=424900004&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"

/// Eligibility criteria for study participants
* enrollment[0] = Reference(InstanceOfGroupIntendedSPOVID)
/// Study Population
* location[countries] = $iso3166#DE "Germany"
* extension[population].valueString = "Subjects will be recruited from the existing study population of the health study on COVID-19 taking place at IMIBE (Institute for Medical Informatics, Biometry and Epidemiology)."

/// Arms or groups/corhorts of the study /// Interventions/exposures of the study
* extension[comparisonGroup][0].extension[name].valueString = "Physical training group"
* extension[comparisonGroup][=].extension[type].valueCoding = $UMLS#C2347177 "Active Comparator (Conceptual Entity)"
* extension[comparisonGroup][=].extension[description].valueString = "Patients receive an individually tailored training program to improve physical endurance safely and effectively."
* extension[comparisonGroup][=].extension[intendedExposure].valueReference = Reference(InstanceOfGroupActualSPOVID)
* extension[comparisonGroup][+].extension[name].valueString = "Control group"
* extension[comparisonGroup][=].extension[type].valueCoding = $UMLS#C5420679 "No Intervention Arm (Research Activity)"

// Roles
* extension[roles][0].extension[party].valueReference = Reference(InstanceOfOrganizationIMIBE)
* extension[roles][=].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $Remaining#037 "Primary Sponsor"
* extension[roles][+].extension[party].valueReference = Reference(InstanceOfOrganizationISTHochschule)
* extension[roles][=].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $Remaining#037 "Primary Sponsor"
* extension[roles][+].extension[party].valueReference = Reference(InstanceOfOrganizationRuhrUniBochum)
* extension[roles][=].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $Remaining#037 "Primary Sponsor"
* extension[roles][+].extension[party].valueReference = Reference(InstanceOfOrganizationBMBF)
* extension[roles][=].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $Remaining#046 "Public Funder"

// Related resources
* relatedArtifact[nonNFDI4HealthResource][0].extension[identifier].valueIdentifier.value = "https://www.gesundheitsforschung-bmbf.de/de/spovid-sport-long-covid-syndrom-14348.php"
* relatedArtifact[nonNFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $UMLS#C1710546 "Uniform Resource Locator (Intellectual Product)"
* relatedArtifact[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* relatedArtifact[nonNFDI4HealthResource][=].extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* relatedArtifact[nonNFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR
* relatedArtifact[nonNFDI4HealthResource][+].extension[identifier].valueIdentifier.value = "01EP2104A"
* relatedArtifact[nonNFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $NCI#C17649 "Other (Qualitative Concept)"
* relatedArtifact[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $HL7V3ActRelationType#REFR "refers to"
* relatedArtifact[nonNFDI4HealthResource][=].extension[resourceTypeGeneral].valueCoding = $NCI#C17649 "Other (Qualitative Concept)"
* relatedArtifact[nonNFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR
* relatedArtifact[nonNFDI4HealthResource][+].extension[identifier].valueIdentifier.value = "01EP2104B"
* relatedArtifact[nonNFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $NCI#C17649 "Other (Qualitative Concept)"
* relatedArtifact[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $HL7V3ActRelationType#REFR "refers to"
* relatedArtifact[nonNFDI4HealthResource][=].extension[resourceTypeGeneral].valueCoding = $NCI#C17649 "Other (Qualitative Concept)"
* relatedArtifact[nonNFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR