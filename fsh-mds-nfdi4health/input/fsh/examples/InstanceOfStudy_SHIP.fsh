Instance: InstanceOfStudySHIP
InstanceOf: NFDI4Health_PR_MDS_Study
Title: "SHIP Trend study"
Description: "Example data from the SHIP Trend study - Study of Health in Pomerania Trend"
Usage: #example

//General information
* title = "Study of Health in Pomerania - TREND"
///English description of the Study
* description = "SHIP-TREND is a population-based cohort study. It has two main objectives: To assess prevalence and incidence of common risk factors, subclinical disorders and clinical diseases and to investigate the complex associations among risk factors, subclinical disorders and clinical diseases. A particular characteristic of SHIP-TREND is that it does not focus on a selected disease; it rather attempts to describe health-related conditions with the widest focus possible. Important medical areas of investigation include cardiovascular diseases, diabetes mellitus, liver and biliary tract diseases, neurological diseases, thyroid diseases, dental diseases, lung diseases, addiction and risk behaviour, among others. SHIP-TREND is part of the SHIP project with two other independent cohorts, SHIP-START and SHIP-NEXT."
* description.extension[language].valueCode = #en "English"
///Details
* extension[label].extension[value].valueString = "SHIP-TREND"
* extension[label].extension[type].valueCoding = $HL7titleType#acronym
* extension[label].extension[language].valueCode = #en "English"
* extension[executionLanguage].valueCode = #de "German"
* relatedArtifact[webpage].url = "https://www2.medizin.uni-greifswald.de/cm/fv/ship.html"
////Missing: source of info in Provenance

//Study characteristics
/// Administrative Information
* extension[studyEthicsCommitteeApproval].valueCoding = $UMLS#C0205540 "Approved (Qualitative Concept)"
* extension[studyStatus].extension[overallStatus].valueCoding = $StudyStatus#04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* extension[studyStatus].extension[statusEnrollingByInvitation].valueCoding = $SCT#373066001 "Yes (qualifier value)"
* period.start = 2008-09-22 //original format needed to be converted
/// Study Design Details
* category[primaryDesign].coding = $UMLS#C4684718 "Non-Interventional Study (Research Activity)"
* category[studyTypeNonInterventional].coding[0] = $UMLS#C0009247 "Cohort Studies (Quantitative Concept)"
* category[studyTypeNonInterventional].coding[+] = $UMLS#C0023981 "Longitudinal Studies (Research Activity)"
* extension[subject].valueCoding = $SCT#125676002 "Person (person)"
* extension[studyGroupsOfDiseases].extension[generally][0].valueCoding = $ICD11#01 "Certain infectious or parasitic diseases"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#03 "Diseases of the blood or blood-forming organs"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#05 "Endocrine, nutritional or metabolic diseases"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#02 "Neoplasms"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#04 "Diseases of the immune system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#06 "Mental, behavioural or neurodevelopmental disorders"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#07 "Sleep-wake disorders"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#08 "Diseases of the nervous system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#10 "Diseases of the ear or mastoid process"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#11 "Diseases of the circulatory system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#12 "Diseases of the respiratory system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#13 "Diseases of the digestive system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#14 "Diseases of the skin"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#15 "Diseases of the musculoskeletal system or connective tissue"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#16 "Diseases of te genitourinary system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#18 "Pregnancy, childbirth or the puerperium"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#19 "Certain conditions originating in the perinatal period"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#21 "Symptoms, signs or clinical findings, not elsewhere classified"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#22 "Injury, poisoning or certain other consequences of external causes"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#23 "External causes of morbidity or mortality"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#24 "Factors influencing health status or contact with health services"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD11#09 "Diseases of the visual system"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
* category[samplingMethod].coding = $Remaining#034 "Probability Sampling Method"
* category[samplingMethodProbability].coding = $NCI#C71516 "Stratified Sampling (Activity)"
* extension[dataSource].extension[general][0].valueCoding = $UMLS#C2347026 "Biospecimen (Body Substance)"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#029 "Cognitive measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#031 "Imaging data"
* extension[dataSource].extension[general][+].valueCoding = $UMLS#C025102 "Medical Records (Intellectual Product)"
* extension[dataSource].extension[general][+].valueCoding = $UMLS#C0034875 "Registries (Intellectual Product)"
* extension[dataSource].extension[general][+].valueCoding = $UMLS#C0021822 "Interview (Activity)"
* extension[dataSource].extension[general][+].valueCoding = $UMLS#C0034394 "Questionnaires (Intellectual Product)"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#032 "Physiological/Biochemical measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#033 "Omics technology"
* extension[dataSource].extension[general][+].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#028 "Administrative databases"
* extension[dataSource].extension[biosamples][0].valueCoding = $SCT#87612001 "Blood (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#24851008 "Deoxyribonucleic acid (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#39477002 "Feces (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#50863008 "Plasma (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#27888000 "Ribonucleic acid (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#256897009 "Saliva (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#67922002 "Serum (substance)"
* extension[dataSource].extension[biosamples][+].valueCoding = $SCT#78014005 "Urine (substance)"
* extension[dataSource].extension[imaging][0].valueCoding = $NCI#C115503 "Ultrasound Study File (Manufactured Object)"
* extension[dataSource].extension[imaging][+].valueCoding = $NCI#C115501 "Magnetic Resonance Imaging Study File (Manufactured Object)"
* extension[dataSource].extension[imaging][+].valueCoding = $NCI#C115545 "Medical Imaging File Not Otherwise Specified (Intellectual Product)"
* extension[dataSource].extension[omics][0].valueCoding = $NCI#C84343 "Genomics"
* extension[dataSource].extension[omics][+].valueCoding = $NCI#C49019 "Metabolomics"
* extension[dataSource].extension[omics][+].valueCoding = $NCI#C153189 "Transcriptomics"
* extension[dataSource].extension[omics][+].valueCoding = $NCI#C20085 "Proteomics"
* extension[dataSource].extension[omics][+].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
* primaryPurposeType.coding = $UMLS#C0205394 "Other (Qualitative Concept)"
* objective.name = "There is no single set of research questions underlying the study."
* note.text = "The content of different SHIP data collections are described separately."
* category[timePerspectives].coding = $UMLS#C0033522 "Prospective Studies (Research Activty)"
* extension[biospecimen].extension[retention].valueCoding = $UMLS#C4288286 "Retained Specimens Contain DNA (Conceptual Entity)"
* extension[biospecimen].extension[description].valueString = "Whole blood; Saliva"
/// Information about data sharing
* extension[dataSharingPlan].extension[generally].valueCoding = $SCT#373066001 "Yes (qualifier value)"
* extension[dataSharingPlan].extension[description].valueString = "SHIP also shares biomaterials."
* extension[dataSharingPlan].extension[supportingInformation].valueCoding = $Remaining#009 "Data dictionary" 
* extension[dataSharingPlan].extension[timeFrame].valueString = "As long as permitted by law."
* extension[dataSharingPlan].extension[accessCriteria].valueString = "Data must only be used for health research purposes. Data access requests will be processed by the board of the Research Network Community Medicine on a monthly basis."
* extension[dataSharingPlan].extension[url].valueUrl = "https://www.fvcm.med.uni-greifswald.de/"
* extension[dataSharingPlan].extension[datashield].valueCoding = $SCT#373066001 "Yes (qualifier value)"

/// Primary health condition(s), disease(s) or focus of the study - modelling must be changed because not possible to have "other vocabulary" or "freetext" as system

/// Eligibility criteria for study participants
////* enrollment.valueReference = NFDI4Health_PR_MDS_Group_Intended
* enrollment[0] = Reference(InstanceOfGroupIntended)
* extension[inclusionCriteria].valueString = "-meeting the age range -first place of residence in the target region Pomerania (Vorpommern / West Pomerania)"
* extension[exclusionCriteria].valueString = "-persons not being able to understand German"
/// Study Population
//// countries
//// regions cities
* site.extension[centers].extension[monoOrMulti].valueCoding = $Remaining#084 "Monocentric"
//// description study pop
* enrollment[+] = Reference(InstanceOfGroupActual)
//// obtained sample size
//// actual minimum

// Roles


// Related resources

