Instance: InstanceOfCompositionWHOHouseholdTransmission
InstanceOf: NFDI4Health_PR_MDS_Composition
Title: "Example of the PR MDS Composition - Questionnaire - Data Dictionary for the WHO's Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
Usage: #example

// General information
* identifier.value = "112"
* status = #final // mandatory in FHIR, no information in MDS
* date = "2024"
* type = $Remaining#009 "Data dictionary"
* category = $NCI#C47824 "Data Set"

// Title and Acronyms
* title.extension[label][0].extension[value].valueString = "Data Dictionary for the WHO's Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
* title.extension[label][=].extension[type].valueCoding = $LabelType#01 "Primary Title"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en "English"


* title.extension[label][+].extension[value].valueString = "WHO's Household transmission investigation protocol" // made up as no information in CSH
* title.extension[label][=].extension[type].valueCoding = $LabelType#07 "Acronym"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

// Roles
* author = Reference(InstanceOfOrganizationContactWHO)
* author.extension[nameType].valueCoding = $SCT#385437003 "Institution"

// Extensions
* extension[provenanceDataSource].valueCoding = #06 "Manually collected"


