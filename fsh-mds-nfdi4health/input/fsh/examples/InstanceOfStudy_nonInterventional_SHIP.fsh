Instance: InstanceOfStudySHIP
InstanceOf: NFDI4Health_PR_MDS_Study
Title: "Instance of Study SHIP TREND"
Description: "Example data from the SHIP Trend study - Study of Health in Pomerania Trend"
Usage: #example

//General information
* identifier[NFDI4Health].value = "81"
* title = "Study of Health in Pomerania - TREND"
* title.extension[language].valueCode = #en "English"
///English description of the Study
* description = "SHIP-TREND is a population-based cohort study. It has two main objectives: To assess prevalence and incidence of common risk factors, subclinical disorders and clinical diseases and to investigate the complex associations among risk factors, subclinical disorders and clinical diseases. A particular characteristic of SHIP-TREND is that it does not focus on a selected disease; it rather attempts to describe health-related conditions with the widest focus possible. Important medical areas of investigation include cardiovascular diseases, diabetes mellitus, liver and biliary tract diseases, neurological diseases, thyroid diseases, dental diseases, lung diseases, addiction and risk behaviour, among others. SHIP-TREND is part of the SHIP project with two other independent cohorts, SHIP-START and SHIP-NEXT."
* description.extension[language].valueCode = $UMLS#C0376245 "English Language"
///Details
* extension[resourceType].valueCoding = $UMLS#C0947630 "Scientific Study (Research Activity)"
* extension[label].extension[value].valueString = "SHIP-TREND"
* extension[label].extension[type].valueCoding = $Remaining#136 "Acronym"
* extension[label].extension[language].valueCode = $UMLS#C0376245 "English Language"
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
* category[studyTypeNonInterventional][0].coding = $UMLS#C0009247 "Cohort Studies (Quantitative Concept)"
* category[studyTypeNonInterventional][1].coding = $UMLS#C0023981 "Longitudinal Studies (Research Activity)"
* extension[subject].valueCoding = $SCT#125676002 "Person (person)"
* extension[studyGroupsOfDiseases].extension[generally][0].valueCoding = $ICD10#I "Certain infectious and parasitic diseases"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD10#III "Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD10#IV "Endocrine, nutritional and metabolic diseases"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD10#II  "Neoplasms"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $ICD10#V "Mental and behavioural disorders"
* extension[studyGroupsOfDiseases].extension[generally][+].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"//
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
* extension[nutritionalData].valueBoolean = false //made up, as no information in CSH
* extension[chronicDiseases].valueBoolean = false //made up, as no information in CSH
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
* enrollment[0] = Reference(InstanceOfGroupIntendedSHIP)
* extension[inclusionCriteria].valueString = "-meeting the age range -first place of residence in the target region Pomerania (Vorpommern / West Pomerania)"
* extension[exclusionCriteria].valueString = "-persons not being able to understand German"
/// Study Population
* location[countries] = $iso3166#DE "Germany"
* location[regions].text = "Mecklenburg-Vorpommern"
* site.extension[centers].extension[monoOrMulti].valueCoding = $Remaining#084 "Monocentric"
* extension[population].valueString = "Adults from the general population meeting the criteria stated above."
* enrollment[+] = Reference(InstanceOfGroupActualSHIP)

// Roles
* extension[roles].extension[party].valueReference = Reference(InstanceOfOrganizationResearchGroupRNCM) 
* extension[roles].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles].extension[roleOrganisational].valueCoding = $Remaining#048 "Research Group"
// Related resources
* relatedArtifact[NFDI4HealthResource][0].extension[identifier].valueIdentifier.value = "e2ddee95749b4bcfac3152d9a35115c9"
* relatedArtifact[NFDI4HealthResource][0].extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* relatedArtifact[NFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#062 "A has version B"
* relatedArtifact[NFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR
* relatedArtifact[NFDI4HealthResource][+].extension[identifier].valueIdentifier.value = "ea31c8a1199849378ea0604004efd7a2"
* relatedArtifact[NFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#062 "A has version B"
* relatedArtifact[NFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR
* relatedArtifact[nonNFDI4HealthResource][0].extension[identifier].valueIdentifier.value = "10.1093/ije/dyac034"
* relatedArtifact[nonNFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* relatedArtifact[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* relatedArtifact[nonNFDI4HealthResource][=].extension[resourceTypeGeneral].valueCoding = $UMLS#C0282420 "Journal Article (Intellectual Product)"
* relatedArtifact[nonNFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR
* relatedArtifact[nonNFDI4HealthResource][+].extension[identifier].valueIdentifier.value = "10.1093/ije/dyp394"
* relatedArtifact[nonNFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* relatedArtifact[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* relatedArtifact[nonNFDI4HealthResource][=].extension[resourceTypeGeneral].valueCoding = $UMLS#C0282420 "Journal Article (Intellectual Product)"
* relatedArtifact[nonNFDI4HealthResource][=].type = #documentation // per default as the VS is required in FHIR