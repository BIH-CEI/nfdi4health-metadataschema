Instance: InstanceOfStudySHIP
InstanceOf: NFDI4Health_PR_MDS_Study
Title: "Instance of Study SHIP TREND"
Description: "Example data from the SHIP Trend study - Study of Health in Pomerania Trend"
Usage: #example


///English description of the Study
* extension[descriptions].extension[value].valueString = "SHIP-TREND is a population-based cohort study. It has two main objectives: To assess prevalence and incidence of common risk factors, subclinical disorders and clinical diseases and to investigate the complex associations among risk factors, subclinical disorders and clinical diseases. A particular characteristic of SHIP-TREND is that it does not focus on a selected disease; it rather attempts to describe health-related conditions with the widest focus possible. Important medical areas of investigation include cardiovascular diseases, diabetes mellitus, liver and biliary tract diseases, neurological diseases, thyroid diseases, dental diseases, lung diseases, addiction and risk behaviour, among others. SHIP-TREND is part of the SHIP project with two other independent cohorts, SHIP-START and SHIP-NEXT."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

//Study characteristics
/// Administrative Information
* extension[administrativeInformation].extension[ethicsCommiteeApproval].valueCoding = $NCI#C25425 "Approval"
* extension[administrativeInformation].extension[status].valueCoding = $StudyStatus#04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* extension[administrativeInformation].extension[statusEnrollingByInvitation].valueCoding = $SCT#373066001 "Yes (qualifier value)"
* period.start = 2008-09-22 //original format needed to be converted

/// Study Design Details
* category.coding = $NCI#C142615 "Non-Interventional Study"
* category.extension[studyType].extension[nonInterventional][0].valueCoding = $NCI#C15208 "Cohort Study"
* category.extension[studyType].extension[nonInterventional][+].valueCoding = $NCI#C15273 "Longitudinal Study"
* extension[subject].valueCoding = $SCT#125676002 "Person (person)"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#I "Certain infectious and parasitic diseases"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#III "Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#IV "Endocrine, nutritional and metabolic diseases"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#II  "Neoplasms"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#V "Mental and behavioural disorders"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $SCT#74964007 "Other"
* extension[sampling].extension[method].valueCoding = $Remaining#034 "Probability Sampling Method"
* extension[sampling].extension[probabilityMethod].valueCoding = $NCI#C71516 "Stratified Sampling"
//* extension[dataSource].extension[general][0].valueCoding = $UMLS#C2347026 "Biospecimen (Body Substance)"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#029 "Cognitive measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#031 "Imaging data"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#032 "Physiological/Biochemical measurements"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#033 "Omics technology"
* extension[dataSource].extension[general][+].valueCoding = $NCI#C17649 "Other"
* extension[dataSource].extension[general][+].valueCoding = $Remaining#028 "Administrative databases"
// * extension[dataSource].extension[biosamples][0].valueCoding = $SCT#87612001 "Blood (substance)"
// * extension[dataSource].extension[biosamples][+].valueCoding = $SCT#24851008 "Deoxyribonucleic acid (substance)"
* extension[dataSource].extension[imaging][0].valueCoding = $NCI#C115503 "Ultrasound Study File (Manufactured Object)"
* extension[dataSource].extension[imaging][+].valueCoding = $NCI#C115501 "Magnetic Resonance Imaging Study File (Manufactured Object)"
* extension[dataSource].extension[imaging][+].valueCoding = $NCI#C115545 "Medical Imaging File Not Otherwise Specified (Intellectual Product)"
* extension[dataSource].extension[omics][0].valueCoding = $NCI#C84343 "Genomics"
* extension[dataSource].extension[omics][+].valueCoding = $NCI#C49019 "Metabolomics"
* extension[dataSource].extension[omics][+].valueCoding = $NCI#C153189 "Transcriptomics"
* extension[dataSource].extension[omics][+].valueCoding = $NCI#C20085 "Proteomics"
* primaryPurposeType.coding = $NCI#C17649 "Other"
* objective.name = "There is no single set of research questions underlying the study."
* note.text = "The content of different SHIP data collections are described separately."
* extension[nonInterventional].extension[timePerspectives].valueCoding = $NCI#C53312 "Retrospective Study"
* extension[nonInterventional].extension[biospecimenRetention].valueCoding = $NCI#C127777 "Retained Specimens Contain DNA"
* extension[nonInterventional].extension[biospecimenDescription].valueString = "Whole blood; Saliva"
* extension[mortalityData].valueCoding = $NCI#C25717 "Vital Status"

/// Information about data sharing and record linkage
* extension[dataSharingPlan].extension[generally].valueCoding = $SCT#373066001 "Yes (qualifier value)"
* extension[dataSharingPlan].extension[description].valueString = "SHIP also shares biomaterials."
* extension[dataSharingPlan].extension[supportingInformation].valueCoding = $Remaining#009 "Data dictionary" 
* extension[dataSharingPlan].extension[timeFrame].valueString = "As long as permitted by law."
* extension[dataSharingPlan].extension[accessCriteria].valueString = "Data must only be used for health research purposes. Data access requests will be processed by the board of the Research Network Community Medicine on a monthly basis."
* extension[dataSharingPlan].extension[url].valueUrl = "https://www.fvcm.med.uni-greifswald.de/"
* extension[dataSharingPlan].extension[datashield].valueCoding = $SCT#373066001 "Yes (qualifier value)"
* extension[dataSharingPlan].extension[recordLinkage].valueBoolean = true
* extension[recordLinkage].extension[legalBasis].valueBoolean = true
* extension[recordLinkage].extension[legalBasisDetails].valueString = "This is a test for testing FHIR Paths"

/// Primary health condition(s), disease(s) or focus of the study - modelling must be changed because not possible to have "other vocabulary" or "freetext" as system

/// Recruitment
* extension[recruitment].extension[targetNumber].valueUnsignedInt = 4420
* extension[recruitment].extension[eligibility].valueReference = Reference(InstanceOfGroupEligibilitySHIP)
* extension[recruitment].extension[actualGroup].valueReference = Reference(InstanceOfGroupActualSHIP)


/// Study Population
* site = Reference(InstanceOfLocationMono)



// Related resources
* relatedArtifact = InstanceOfRelatedArtifact

