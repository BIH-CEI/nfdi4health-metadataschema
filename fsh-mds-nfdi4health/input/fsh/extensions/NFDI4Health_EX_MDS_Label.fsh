Extension: NFDI4Health_EX_MDS_Label
Id: nfdi4health-ex-mds-label
Title: "NFDI4Health EX MDS Label"
Description: "Extension covering information about additional title(s), name(s) and acronym(s) of a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-label"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy.title"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.title"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference.content"
* . ^short = "Title(s)/name(s) or acronym(s) of the [RESOURCE]"
* . ^definition = "Group of items providing information about title(s)/name(s) or acronym(s) of the resource."
* . ^comment = "Based on ResearchStudy.label (R5), with an extension for language."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    value 1..1 and
    type 1..1 and
    NFDI4Health_EX_MDS_Language named language 1..1
* extension[value] ^short =  "Title(s), additional name(s), and acronym(s)"
* extension[value] ^definition = "Title(s), additional name(s), and acronym(s) of the resource."
* extension[value].value[x] 1..
* extension[value].value[x] only string
* extension[type] ^short = "Kind of name."
* extension[type] ^definition = "Kind of name."
* extension[type].value[x] 1..
* extension[type].value[x] only Coding
* extension[type].valueCoding from NFDI4Health_VS_MDS_Label_Type_Local (required)
* extension[type].valueCoding ^binding.description = "Value set used to express the reason and specific aspect for the variant title, such as language and specific language."
* extension[language] ^short = "Language of the additional title(s)/name(s) or acronym(s)"
* extension[language] ^definition = "Language of the additional title(s)/name(s) or acronym(s)"

Mapping: NFDI4Health-for-NFDI4Health_EX_MDS_Label
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Label
* -> "1.3 Resource.titles"
* -> "1.4 Resource.acronyms"
* extension[value].value[x] -> "1.3.1 Resource.titles.text"
* extension[value].value[x] -> "1.3.2 Resource.acronyms.text"
* extension[language] -> "1.3.2 Resource.titles.language" 
* extension[language] -> "1.4.2 Resource.acronyms.language"