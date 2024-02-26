Instance: InstanceOfCompositionSHIP
InstanceOf: NFDI4Health_PR_MDS_Composition
Title: "Example of the PR MDS Composition - SHIP"
Usage: #example

// General information
* identifier.value = "81"
* status = #final // mandatory in FHIR, no information in MDS
* date = "2024"
* type = $NCI#C63536 "Study"


// Title and Acronyms
* title.extension[label][0].extension[value].valueString = "Study of Health in Pomerania - TREND"
* title.extension[label][=].extension[type].valueCoding = $LabelType#01 "Primary Title"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en "English"
* title.extension[label][+].extension[value].valueString = "SHIP-TREND"
* title.extension[label][=].extension[type].valueCoding = $LabelType#07 "Acronym"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

// Roles
* author = Reference(InstanceOfOrganizationResearchGroupRNCM)
* author.extension[nameType].valueCoding = $SCT#385437003 "Institution"


// Extensions
* extension[provenanceDataSource].valueCoding = $ProvenanceDataSource#06 "Manually collected"
* extension[nutritionalData].valueBoolean = false //made up, as no information in CSH
* extension[chronicDiseases].valueBoolean = false //made up, as no information in CSH