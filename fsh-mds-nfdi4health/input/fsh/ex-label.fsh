Alias: $nfdi4health-ex-mds-language = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-language
Alias: $nfdi4health-vs-mds-label-type-hl7 = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-label-type-hl7
Alias: $title-type = http://hl7.org/fhir/ValueSet/title-type

Extension: NFDI4Health_EX_MDS_Label
Id: nfdi4health-ex-mds-label
Title: "NFDI4Health EX MDS Label"
Description: "Extension covering information about additional title(s), name(s) and acronym(s) of a resource."
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
    $nfdi4health-ex-mds-language named language 1..1
* extension[value] ^short = "Additional title(s), additional name(s), and acronym(s)"
* extension[value] ^definition = "If existing, additional title(s), additional name(s), and acronym(s) of the resource."
* extension[value].value[x] 1..
* extension[value].value[x] only string
* extension[value].value[x].extension ^slicing.discriminator.type = #value
* extension[value].value[x].extension ^slicing.discriminator.path = "url"
* extension[value].value[x].extension ^slicing.rules = #open
* extension[value].value[x].extension ^min = 0
* extension[value].value[x].extension[translation] only Translation
* extension[value].value[x].extension[translation] ^sliceName = "translation"
* extension[value].value[x].extension[translation] ^short = "Language translation of the additional title/additional name/acronym"
* extension[value].value[x].extension[translation] ^definition = "Language of the additional title/additional name/acronym if it is not the base language of the resource."
* extension[value].value[x].extension[translation] ^min = 0
* extension[value].value[x].extension[translation] ^isModifier = false
* extension[value].value[x].extension[translation].extension ^slicing.discriminator.type = #value
* extension[value].value[x].extension[translation].extension ^slicing.discriminator.path = "url"
* extension[value].value[x].extension[translation].extension ^slicing.rules = #open
* extension[value].value[x].extension[translation].extension[lang] ^sliceName = "lang"
* extension[value].value[x].extension[translation].extension[content] ^sliceName = "content"
* extension[type] from $nfdi4health-vs-mds-label-type-hl7 (required)
* extension[type] ^short = "Kind of name."
* extension[type] ^definition = "Kind of name."
* extension[type] ^binding.description = "Value set used to express the reason and specific aspect for the variant title, such as language and specific language."
* extension[type].value[x] 1..
* extension[type].value[x] only Coding
* extension[type].value[x] from $title-type (extensible)
* extension[language] ^short = "Language of the additional title(s)/name(s) or acronym(s)"
* extension[language] ^definition = "Language of the additional title(s)/name(s) or acronym(s)"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Label
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Label-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Label
* -> "1.3 Resource.titles"
* -> "1.4 Resource.acronyms"
* extension[value].value[x] -> "1.3.1 Resource.titles.text"
* extension[value].value[x] -> "1.3.2 Resource.acronyms.text"
* extension[value].value[x].extension[translation].extension[lang] -> "1.3.2 Resource.titles.language" "Translation language of a title/name"
* extension[value].value[x].extension[translation].extension[lang] -> "1.4.2 Resource.acronyms.language" "Translation language of an acronym"
* extension[value].value[x].extension[translation].extension[content] -> "1.3.1 Resource.titles.text" "Translated title/name"
* extension[value].value[x].extension[translation].extension[content] -> "1.3.2 Resource.acronyms.text" "Translated acronym"
* extension[language] -> "1.3.2 Resource.titles.language" "For additional title(s)/name(s)"
* extension[language] -> "1.4.2 Resource.acronyms.language"