Instance: InstanceOfStudySPOVID
InstanceOf: NFDI4Health_PR_MDS_Study
Title: "Instance of Study SPOVID"
Description: "Example data from the SPOVID study - Sports & Long-COVID-Syndrome"
Usage: #example

///Descriptions of the Study
* extension[descriptions].extension[value].valueString = "In a pilot study, the SPOVID project is investigating whether an individually tailored training program can safely and effectively improve the physical endurance of Long COVID-19 patients. To this end, the researchers observe fitness parameters of cardiovascular and lung function in particular over several months, but also the development of headache, fatigue and fatigue symptoms. From the results, they want to derive recommendations for personalized training programs."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#en "English" 


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
* extension[administrativeInformation].extension[status].valueCoding = $StudyStatus#04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* extension[administrativeInformation].extension[statusWhenIntervention].valueCoding = $Remaining#014 "Intervention ongoing"
* period.start = 2008-01-05 //original format needed to be converted
* period.end = 2022-11-30 //original format needed to be converted

/// Study Design and Purpose 
* category.coding = $NCI#C98388 "Interventional Study"
* category.extension[studyType].extension[interventional].valueCoding = $NCI#C17998 "Unknown"
* primaryPurposeType.coding = $study-prim-purp-type#treatment "Treatment"

/// Extensions
* extension[subject].valueCoding = $SCT#125676002 "Person (person)"
* extension[dataSource].extension[general][0].valueCoding = $Remaining#029 "Cognitive measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#032 "Physiological/Biochemical measurements"
* extension[masking].extension[general].valueBoolean = false
* extension[studyInterventional].extension[offLabelUse].valueCoding = $SCT#385432009 "Not applicable (qualifier value)"
* extension[sampling].extension[method].valueCoding = $NCI#C127781 "Non-Probability Sampling Method"
* extension[sampling].extension[nonProbabilityMethod].valueCoding = $NCI#C53204 "Convenience Sampling"

/// Information about data sharing
* extension[dataSharingPlan].extension[generally].valueCoding = $NCI#C150084 "Undecided (Intellectual Product)"

/// Primary health condition(s), disease(s) or focus of the study - modelling must be changed because not possible to have "other vocabulary" or "freetext" as system
* condition[0].coding.code = $NCI#C49469 "Systematized Nomenclature of Medicine Clinical Terms"
* condition[=].text = "COVID-19"
* condition[=].extension[uri].valueUri = "http://snomed.info/id/840539006"

* condition[+].coding.code = $NCI#C49469 "Systematized Nomenclature of Medicine Clinical Terms"
* condition[=].text = "Cardiac physiological function"
* condition[=].extension[uri].valueUri = "http://snomed.info/id/739122008"

* extension[groupsOfDiseases].extension[generally].valueCoding = $ICD10#I "Certain infectious and parasitic diseases"



/// Eligibility criteria for study participants
* enrollment[0] = Reference(InstanceOfGroupIntendedSPOVID)
/// Study Population
* enrollment[1] = Reference(InstanceOfGroupActualSPOVID)


/// Arms or groups/corhorts of the study /// Interventions/exposures of the study
* arm[0].name = "Physical training group"
* arm[=].type = $NCI#C174267 "Active Comparator Arm"
* arm[=].description = "Patients receive an individually tailored training program to improve physical endurance safely and effectively."
* arm[+].name = "Control group"
* arm[=].type = $NCI#C174270 "No Intervention Arm"

//* extension[comparisonGroup][0].extension[name].valueString = "Physical training group"
//* extension[comparisonGroup][=].extension[type].valueCodeableConcept = $NCI#C174267 "Active Comparator Arm"
//* extension[comparisonGroup][=].extension[description].valueString = "Patients receive an individually tailored training program to improve physical endurance safely and effectively."
//* extension[comparisonGroup][=].extension[intendedExposure].valueReference = Reference(InstanceOfEvidenceVariableSPOVID)
//* extension[comparisonGroup][+].extension[name].valueString = "Control group"
//* extension[comparisonGroup][=].extension[type].valueCodeableConcept = $NCI#C174270 "No Intervention Arm"



// Related resources
* relatedArtifact = InstanceOfRelatedArtifact

