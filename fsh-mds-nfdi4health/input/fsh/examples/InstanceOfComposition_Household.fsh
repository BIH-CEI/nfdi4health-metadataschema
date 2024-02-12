Instance: InstanceOfCompositionHouseholdTransmissionInvestigationForC19
InstanceOf: NFDI4Health_PR_MDS_Composition
Title: "Example of the PR MDS Composition - Household Transmission Investigation Protocol for Coronavirus Disease 2019 (COVID-19)"
Usage: #example

// General information
* identifier.value = "97"
* status = #final // mandatory in FHIR, no information in MDS
* date = "2024"
* type = $Remaining#021 "Other study document"
* category = $NCI#C25704 "Text"

// Title and Acronyms
* title.extension[label][0].extension[value].valueString = "Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
* title.extension[label][=].extension[type].valueCoding = $LabelType#01 "Primary Title"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en "English"
* title.extension[label][+].extension[value].valueString = "WHO-2019-nCoV-HHtransmission"
* title.extension[label][=].extension[type].valueCoding = $LabelType#07 "Acronym"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

// Roles
* author[0] = Reference(InstanceOfOrganizationCreatorWHO)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"
* author[+] = Reference(InstanceOfOrganizationContactWHO)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"

// Extensions
* extension[provenanceDataSource].valueCoding = #06 "Manually collected"


