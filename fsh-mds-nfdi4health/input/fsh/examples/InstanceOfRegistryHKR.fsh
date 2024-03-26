Instance: InstanceOfLibraryHKR
InstanceOf: NFDI4Health_PR_MDS_Registry
Title: "Instance of Registry HCR"
Description: "Example data from the HCR Registry"
Usage: #example


///English description of the cancer registry
* extension[descriptions].extension[value].valueString = "The Hamburg Cancer Registry (HCR) is an integrated clinical-epidemiological cancer registry for Hamburg as a place of residence and treatment. Our goal is to improve the quality of oncological care by providing a neutral data basis on cancer incidence and contributing to transparency. The Hamburg Cancer Registry is mandated under state and federal law to continuously and comprehensively record and process information on the diagnosis, therapy and course of all cancer patients treated in Hamburg, to make this information available for scientific research, and to evaluate and publish the results."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#en "English"
///German description of the cancer registry
* extension[descriptions].extension[value].valueString = "Das Hamburgische Krebsregister (HKR) ist ein integriertes klinisch-epidemiologisches Krebsregister für den Wohn- und Behandlungsort Hamburg. Unser Ziel ist es, die Qualität der onkologischen Versorgung zu verbessern, indem wir eine neutrale Datengrundlage zum Krebsgeschehen bereitstellen und zur Transparenz beitragen. Das Hamburgische Krebsregister hat den landes- und bundesrechtlich definierten Auftrag, kontinuierlich und flächendeckend Angaben zu Diagnose, Therapie und Verlauf von allen in Hamburg behandelten Krebspatientinnen und -patienten zu erfassen, zu verarbeiten, für die wissenschaftliche Forschung zur Verfügung zu stellen und auszuwerten sowie die Ergebnisse zu veröffentlichen."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#de "German"

//Cancer registry characteristics
/// Administrative Information
* extension[ethicsCommitteeApproval].valueCoding = $NCI#C48660 "Not Applicable"
* effectivePeriod.start = 1990-01-01 //original format needed to be converted

/// Registry Design Details
* subjectCodeableConcept = $SCT#125676002 "Person (person)"
* extension[groupsOfDiseases].extension[generally].valueCoding  = $ICD10#II  "Neoplasms"
* extension[dataSource].extension[general][0].valueCoding = $Remaining#028 "Administrative databases"
* extension[dataSource].extension[general][+].valueCoding = $NCI#C17649 "Other"
* extension[dataSource].extension[description].valueString = "All hospitals, medical practices and other physician-managed oncological care facilities in Hamburg transmit information to the HCR based on their statutory reporting obligation and the uniform national data set for the following reporting occasions: diagnosis and histological confirmation, start and end of therapeutic measures as well as therapy-relevant changes in the disease status, i.e. progression events such as progression and relapse, and death."

* extension[mortalityData].valueCoding = $NCI#C81239 "Cause of Death"

/// Information about data sharing
* extension[dataSharingPlan].extension[generally].valueCoding = $SCT#373066001 "Yes (qualifier value)"
* extension[dataSharingPlan].extension[description].valueString = "Data may be provided according to §§ 7, 8, 8a and 9 Hamburg Cancer Registry Law"
* extension[dataSharingPlan].extension[supportingInformation].valueCoding = $Remaining#009 "Data dictionary" 
* extension[dataSharingPlan].extension[timeFrame].valueString = "continuously"
* extension[dataSharingPlan].extension[accessCriteria].valueString = "Data may be provided according to §§ 7, 8, 8a and 9 Hamburg Cancer Registry Law"
* extension[dataSharingPlan].extension[url].valueUrl = "https://www.hamburg.de/krebsregister/10765432/publikationen-datennutzung/#anker_4"
* extension[dataSharingPlan].extension[datashield].valueCoding = $SCT#373067005 "No (qualifier value)"

/// Eligibility criteria for study participants
* subjectReference = Reference(InstanceOfGroupEligibilityHKR)

/// Study Population
* extension¢[population].extension[populationLocation].extension[populationDescription].valueString = "1.8 million residents plus nonresident patients being treated in Hamburg"


// Related resources
* relatedArtifact = InstanceOfRelatedArtifact