Instance: InstanceOfStudySPOVID
InstanceOf: NFDI4Health_PR_MDS_Study
Title: "Instance of Study SPOVID"
Description: "Example data from the SPOVID study - Sports & Long-COVID-Syndrome"
Usage: #example


//General information
* identifier[NFDI4Health].value = "236"


///Description of the Study
* extension[descriptions].valueString  = "In a pilot study, the SPOVID project is investigating whether an individually tailored training program can safely and effectively improve the physical endurance of Long COVID-19 patients. To this end, the researchers observe fitness parameters of cardiovascular and lung function in particular over several months, but also the development of headache, fatigue and fatigue symptoms. From the results, they want to derive recommendations for personalized training programs."
* extension[descriptions].extension[language].valueCode = #en "English" 


///Keywords
* keyword[0].text = "COVID-19"
* keyword[=].coding.system = "https://id.nlm.nih.gov/mesh/D000086382.html"
* keyword[+].text = "Pilot study"
* keyword[=].coding.system = "https://id.nlm.nih.gov/mesh/T032041.html"
* keyword[+].text = "Physical Education and Training"
* keyword[=].coding.system = "https://id.nlm.nih.gov/mesh/D010806.html"
* keyword[+].text = "Exercise"
* keyword[=].coding.system = "https://id.nlm.nih.gov/mesh/D015444.html"
* keyword[+].text = "Exercise Therapy"
* keyword[=].coding.system = "https://id.nlm.nih.gov/mesh/D005081.html"
* keyword[+].text = "Physical activity (observable entity)"
* keyword[=].coding.system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=68130003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* keyword[+].text = "Post-acute COVID-19 (disorder)"
* keyword[=].coding.system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=1119303003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
//////Missing: source of info in Provenance

//Study characteristics
/// Administrative Information
* extension[studyStatus].extension[overallStatus].valueCoding = $StudyStatus#04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* extension[studyStatus].extension[statusWhenIntervention].valueCoding = $Remaining#014 "Intervention ongoing"
* period.start = 2008-01-05 //original format needed to be converted
* period.end = 2022-11-30 //original format needed to be converted
/// Study Design Details
* category[primaryDesign].coding = $Remaining#130 "Interventional"
* category[studyTypeInterventional].coding = $Remaining#139 "Unknown (interventional)"
* extension[subject].valueCoding = $SCT#125676002 "Person (person)"
* extension[groupsOfDiseases].extension[generally].valueCoding = $UMLS#C0439673 "Unknown (Qualitative Concept)"
* category[samplingMethod].coding = $Remaining#160 "Non-probability"
* category[samplingMethodNonProbability].coding = $Remaining#174 "Purposive"
* extension[dataSource].extension[general][0].valueCoding = $Remaining#029 "Cognitive measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#032 "Physiological/Biochemical measurements"
* primaryPurposeType.coding = $study-prim-purp-type#treatment "Treatment"
* extension[masking].extension[general].valueBoolean = false
* category[allocation] = $Remaining#159 "Randomized"
* extension[offLabelUse].valueCoding = $SCT#385432009 "Not applicable (qualifier value)"
* extension[nutritionalData].valueBoolean = false //made up, as no information in CSH
* extension[chronicDiseases].valueBoolean = false //made up, as no information in CSH
/// Information about data sharing
* extension[dataSharingPlan].extension[generally].valueCoding = $NCI#C150084 "Undecided (Intellectual Product)"

/// Primary health condition(s), disease(s) or focus of the study - modelling must be changed because not possible to have "other vocabulary" or "freetext" as system
* condition[0].coding = $SCT#1119303003 "Post-acute COVID-19 (disorder)"
* condition[=].coding.system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=1119303003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#84229001 "Fatigue (finding)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=84229001&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#739122008 "Cardiac physiological function (observable entity)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&latestRedirect=false&conceptId1=739122008&edition=MAIN/2023-07-31"
* condition[+].coding[0] = $SCT#78064003 "Respiratory function (observable entity)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=78064003&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#76039005 "Disturbance of attention (finding)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=76039005&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#183301007 "Physical exercises (regime/therapy)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=183301007&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#225303001 "Evaluating interventions (procedure)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=225303001&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"
* condition[+].coding[0] = $SCT#424900004 "Recommendation - action (qualifier value)"
* condition[=].coding[=].system = "https://browser.ihtsdotools.org/?perspective=full&conceptId1=424900004&edition=MAIN/2023-07-31&release=&languages=en&latestRedirect=false"

/// Eligibility criteria for study participants
* enrollment[0] = Reference(InstanceOfGroupIntendedSPOVID)
/// Study Population
* location[countries] = $iso3166#DE "Germany"
* extension[population].valueString = "Subjects will be recruited from the existing study population of the health study on COVID-19 taking place at IMIBE (Institute for Medical Informatics, Biometry and Epidemiology)."

/// Arms or groups/corhorts of the study /// Interventions/exposures of the study
* extension[comparisonGroup][0].extension[name].valueString = "Physical training group"
* extension[comparisonGroup][=].extension[type].valueCoding = $UMLS#C2347177 "Active Comparator (Conceptual Entity)"
* extension[comparisonGroup][=].extension[description].valueString = "Patients receive an individually tailored training program to improve physical endurance safely and effectively."
* extension[comparisonGroup][=].extension[intendedExposure].valueReference = Reference(InstanceOfEvidenceVariableSPOVID)
* extension[comparisonGroup][+].extension[name].valueString = "Control group"
* extension[comparisonGroup][=].extension[type].valueCoding = $UMLS#C5420679 "No Intervention Arm (Research Activity)"

// Related resources
* relatedArtifact = InstanceOfRelatedArtifact

