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
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Document"
* . ^short = "Additional title(s)/name(s) or acronym(s) of the [RESOURCE]"
* . ^definition = "Group of items providing information about additional title(s)/name(s) or acronym(s) of the resource."
* . ^comment = "Based on ResearchStudy.label (R5), with an extension for translation and language."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    value 1..1 and
    type 1..1 and
    NFDI4Health_EX_MDS_Language named language 1..1
* extension[value] ^short = "Additional title(s), additional name(s), and acronym(s)"
* extension[value] ^definition = "If existing, additional title(s), additional name(s), and acronym(s) of the resource."
* extension[value].value[x] 1..
* extension[value].value[x] only string
* extension[value].valueString.extension ^slicing.discriminator.type = #value
* extension[value].valueString.extension ^slicing.discriminator.path = "url"
* extension[value].valueString.extension ^slicing.rules = #open
* extension[value].valueString.extension contains 
    $translation named translation 0..*
* extension[value].valueString.extension[translation] ^short = "Language translation of the additional title/additional name/acronym"
* extension[value].valueString.extension[translation] ^definition = "Language of the additional title/additional name/acronym if it is not the base language of the resource."
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
* extension[language] -> "1.3.2 Resource.titles.language" "For additional title(s)/name(s)"
* extension[language] -> "1.4.2 Resource.acronyms.language"