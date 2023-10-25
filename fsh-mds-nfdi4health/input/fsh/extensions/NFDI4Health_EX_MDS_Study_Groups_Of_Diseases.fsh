Alias: $nfdi4health-vs-mds-study-groups-of-diseases-generally-icd11-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-groups-of-diseases-generally-icd11-umls

Extension: NFDI4Health_EX_MDS_Study_Groups_Of_Diseases
Id: nfdi4health-ex-mds-study-groups-of-diseases
Title: "NFDI4Health EX MDS Study Groups Of Diseases"
Description: "Extension covering information about groups of diseases or conditions on which the data were collected in the study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-groups-of-diseases"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Which groups of diseases or conditions were the data collected on?"
* . ^definition = "Group of items providing information about groups of diseases or conditions on which the data were collected in the study."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    generally 1..* and
    conditions 0..*
* extension[generally] ^short = "Which groups of diseases or conditions were the data collected on?"
* extension[generally] ^definition = "Groups of diseases or conditions on which the data were collected in the study."
* extension[generally] ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 11th Revision (ICD-11). | Short input help: Select all that apply. For more information about the groups of diseases/conditions, visit the WHO's ICD-11 homepage: https://icd.who.int/en."
* extension[generally].value[x] 1..
* extension[generally].value[x] only Coding
* extension[generally].valueCoding from nfdi4health-vs-mds-study-groups-of-diseases-generally-icd10-umls (required)
* extension[generally].valueCoding ^binding.description = "Value set defining codes from ICD-10 to specify groups of diseases or conditions on which the data were collected in the study."
* extension[generally].valueCoding.system 1..
* extension[generally].valueCoding.code 1..
* extension[conditions] ^short = "On which other diseases or conditions were the data collected?"
* extension[conditions] ^definition = "Other diseases or conditions on which the data were collected in the study."
* extension[conditions] ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 11th Revision (ICD-11). | Short input help: For more information about the groups of diseases/conditions, visit the WHO's ICD-11 homepage: https://icd.who.int/en."
* extension[conditions] ^min = 0
* extension[conditions].value[x] 1..
* extension[conditions].value[x] only string

Mapping: NFDI4Health-Study-Groups-Of-Diseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Groups_Of_Diseases
* -> "1.17.4 Resource.studyDesign.studyGroupsOfDiseases"
* extension[generally] -> "1.17.4.1 Resource.studyDesign.studyGroupsOfDiseases.generally"
* extension[conditions] -> "1.17.4.2 Resource.studyDesign.studyGroupsOfDiseases.conditions"