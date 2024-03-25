Instance: InstanceOfLibraryHKR
InstanceOf: NFDI4Health_PR_MDS_Registry
Title: "Instance of Registry HCR"
Description: "Example data from the HCR Registry"
Usage: #example


///English description of the Study
* extension[descriptions].extension[value].valueString = "EN (English) The Hamburg Cancer Registry (HCR) is an integrated clinical-epidemiological cancer registry for Hamburg as a place of residence and treatment. Our goal is to improve the quality of oncological care by providing a neutral data basis on cancer incidence and contributing to transparency. The Hamburg Cancer Registry is mandated under state and federal law to continuously and comprehensively record and process information on the diagnosis, therapy and course of all cancer patients treated in Hamburg, to make this information available for scientific research, and to evaluate and publish the results."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

//Study characteristics
/// Administrative Information
* extension[ethicsCommitteeApproval].valueCoding = $NCI#C48660 "Not Applicable"
* effectivePeriod.start = 1990-01-01 //original format needed to be converted

/// Study Design Details

* subjectCodeableConcept = $SCT#125676002 "Person (person)"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#I "Certain infectious and parasitic diseases"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#III "Diseases of the blood and blood-forming organs and certain disorders involving the immune mechanism"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#IV "Endocrine, nutritional and metabolic diseases"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#II  "Neoplasms"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#V "Mental and behavioural disorders"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $SCT#74964007 "Other"

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
* description = "The content of different SHIP data collections are described separately."

* extension[mortalityData].valueCoding = $NCI#C25717 "Vital Status"

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
* subjectReference = Reference(InstanceOfGroupIntendedSHIP)

/// Study Population

* extension¢[population].extension[populationLocation].extension[populationDescription].valueString = "1.8 million residents plus nonresident patients being treated in Hamburg"


// Related resources
* relatedArtifact = InstanceOfRelatedArtifact

