Extension: NFDI4Health_EX_MDS_Groups_Of_Diseases
Id: nfdi4health-ex-mds-groups-of-diseases
Title: "NFDI4Health EX MDS Study Type"
Description: "Group of items providing information about the groups of diseases or conditions"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-groups-of-diseases"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Library"
* . 0..1
* . ^short = "Groups of diseases or conditions"
* . ^definition = "Description: Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    generally 1..* and
    conditions 0..*
* extension[generally] ^short = "Which groups of diseases or conditions were the data collected on?"
* extension[generally] ^definition = "General groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* extension[generally].value[x] only Coding
* extension[generally].valueCoding from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_SCT (required)
* extension[generally].valueCoding ^binding.description = "Value set defining codes from ICD-10 to specify groups of diseases or conditions on which the data were collected in the study."
* extension[conditions] ^short = "On which other diseases or conditions were the data collected?"
* extension[conditions] ^definition = "Diseases or conditions on which the data were collected in the [RESOURCE]."
* extension[conditions].value[x] only Coding
* extension[conditions].valueCoding from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_Conditions_ICD (required)
* extension[conditions].valueCoding ^binding.description = "alue set created by NFDI4Health defining codes for groups of diseases generally conditions."
 

Mapping: NFDI4Health-Groups-Of-Diseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Groups_Of_Diseases
* -> "Design.groupsOfDiseases"
* extension[generally] -> "Design.groupsOfDiseases.generally"
* extension[conditions] -> "Design.groupsOfDiseases.conditions"
