Instance: InstanceOfCompositionSPOVID
InstanceOf: NFDI4Health_PR_MDS_Composition
Title: "Example of the PR MDS Composition - SPOVID - Sport & Long-COVID-Syndrom"
Usage: #example

// General information
* identifier.value = "236"
* status = #final // mandatory in FHIR, no information in MDS
* date = "2024"
* type = $NCI#C63536 "Study"

// Title and Acronyms
* title.extension[label][0].extension[value].valueString = "SPOVID - Sport & Long-COVID-Syndrom"
* title.extension[label][=].extension[type].valueCoding = $LabelType#01 "Primary Title"
* title.extension[label][=].extension[language].valueCodeableConcept = #en "English"
* title.extension[label][+].extension[value].valueString = "SPOVID"
* title.extension[label][=].extension[type].valueCoding = $LabelType#07 "Acronym"
* title.extension[label][=].extension[language].valueCodeableConcept = #en "English"

// Roles
* author[0] = Reference(InstanceOfOrganizationIMIBE)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"
* author[+] = Reference(InstanceOfOrganizationISTHochschule)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"
* author[+] = Reference(InstanceOfOrganizationRuhrUniBochum)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"
* author[+] = Reference(InstanceOfOrganizationBMBF)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"

// Extensions
* extension[provenanceDataSource].valueCoding = #06 "Manually collected"
* extension[nutritionalData].valueBoolean = false //made up, as no information in CSH
* extension[chronicDiseases].valueBoolean = false //made up, as no information in CSH