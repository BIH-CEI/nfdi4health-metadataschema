Extension: NFDI4Health_EX_MDS_Description_Non_English
Id: nfdi4health-ex-mds-description-non-english
Title: "NFDI4Health EX MDS Description Non English"
Description: "Extension providing description(s) of the resource written not in English."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-description-non-english"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* . ^short = "Additional description(s) of the  [RESOURCE]"
* . ^definition = "Group of items with  description(s) of the resource written not in English."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    text 1..1 and
    language 1..1
* extension[text] ^short = "Description"
* extension[text] ^definition = "Short plain text summary of the resource other than in English."
* extension[text].value[x] only string
* extension[language].value[x] 0..
* extension[language].value[x] only Coding
* extension[language].value[x] from NFDI4Health_VS_MDS_Language_NO_ENGLISH_SNOMEDCT (required)
* extension[language] ^short = "Language of the description"
* extension[language] ^definition = "Language of the description"
* extension[language] ^binding.description = "Value set defining codes to specify a language other than English."