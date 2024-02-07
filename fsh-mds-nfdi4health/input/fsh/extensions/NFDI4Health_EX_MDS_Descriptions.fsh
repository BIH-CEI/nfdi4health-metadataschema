Extension: NFDI4Health_EX_MDS_Descriptions
Id: nfdi4health-ex-mds-descriptions
Title: "NFDI4Health EX MDS Descriptions"
Description: "Group of items providing information about the description(s) of the [RESOURCE]."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-descriptions"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* . ^short = "Descriptions of the [RESOURCE]"
* . ^definition = "Group of items providing information about the description(s) of the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    value 1..1 and
    NFDI4Health_EX_MDS_Language named language 1..1
* extension[value] ^short =  "Description"
* extension[value] ^definition = "Short plain text summary of the [RESOURCE]."
* extension[value].value[x] 1..
* extension[value].value[x] only string
* extension[language] ^short = "Language of the description"
* extension[language] ^definition = "Language in which the description text is provided."

Mapping: NFDI4Health-for-NFDI4Health_EX_MDS_Descriptions
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Descriptions
* -> "Resource.descriptions"
* extension[value].value[x] -> "Resource.descriptions.text"
* extension[language] -> "Resource.descriptions.language" 
