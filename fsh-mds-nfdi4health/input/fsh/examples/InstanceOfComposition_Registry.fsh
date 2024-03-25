Instance: InstanceOfCompositionRegistryHKR
InstanceOf: NFDI4Health_PR_MDS_Composition
Title: "Example of the PR MDS Composition - Hamburg Cancer Registry"
Usage: #example

// General information
* identifier.value = "2654"
* status = #final // mandatory in FHIR, no information in MDS
* date = "2024"
* type = $NCI#C61393 "Registry"
* subject = Reference(InstanceOfLibraryHKR)

// Title and Acronyms
* title.extension[label][0].extension[value].valueString = "DE (German) Hamburgisches Krebsregister"
* title.extension[label][=].extension[type].valueCoding = $LabelType#01 "Primary Title"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#de 
* title.extension[label][+].extension[value].valueString = "HCR"
* title.extension[label][=].extension[type].valueCoding = $LabelType#07 "Acronym"
* title.extension[label][=].extension[language].valueCodeableConcept = $ISOLanguage#en

// Roles
* author[0] = Reference(InstanceOfOrganizationCreatorWHO)
* author[=].extension[nameType].valueCoding = $SCT#385437003 "Institution"
* author[+] = Reference(InstanceOfPractitionerRoleNinaKirchhof)
* author[=].extension[nameType].valueCoding = $SCT#125676002 "Person"

// Extensions
* extension[provenanceDataSource].valueCoding = #06 "Manually collected"
* extension[chronicDiseases].valueBoolean = false
* extension[nutritionalData].valueBoolean = false

// Sections