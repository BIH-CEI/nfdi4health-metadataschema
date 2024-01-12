Alias: $nfdi4health-vs-mds-study-diseases-generally-icd10-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-diseases-generally-icd10-umls-local

Extension: NFDI4Health_EX_MDS_Groups_Of_Diseases
Id: nfdi4health-ex-mds-study-of-diseases
Title: "NFDI4Health EX MDS Groups Of Diseases"
Description: "Extension covering information about groups of diseases or conditions on which the data were collected in a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-groups-of-diseases"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Groups of diseases or conditions"
* . ^definition = "Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    generally 1..* and
    conditions 0..*
* extension[generally] ^short = "Which groups of diseases or conditions were the data collected on?"
* extension[generally] ^definition = "General groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* extension[generally] ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10). | Short input help: Select all that apply. For more information about the groups of diseases/conditions, visit the WHO's ICD-10 homepage: https://icd.who.int/en."
* extension[generally].value[x] 1..
* extension[generally].value[x] only Coding
* extension[generally].valueCoding from nfdi4health-vs-mds-study-diseases-generally-icd-sct (required)
* extension[generally].valueCoding ^binding.description = "Value set defining codes from ICD-10 to specify groups of diseases or conditions on which the data were collected in the study."
* extension[generally].valueCoding.system 1..
* extension[generally].valueCoding.code 1..
* extension[conditions] ^short = "On which other diseases or conditions were the data collected?"
* extension[conditions] ^definition = "Diseases or conditions on which the data were collected in the [RESOURCE]."
* extension[conditions] ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10). | Short input help: Select all that apply. Values are based on lower level ICD-10. For more information visit the WHO's ICD-10 homepage: https://icd.who.int/en."
* extension[conditions] ^min = 0
* extension[conditions].value[x] 1..
* extension[conditions].value[x] only string

Mapping: NFDI4Health-Study-Groups-Of-Diseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Groups_Of_Diseases
* -> "1.17.5 Design.studyGroupsOfDiseases"
* extension[generally] -> "1.17.5.1 Design.groupsOfDiseases.generally"
* extension[conditions] -> "1.17.5.2 Design.groupsOfDiseases.conditions"