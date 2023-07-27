Profile: NFDI4Health_PR_MDS_Questionnaire
Parent: Questionnaire
Id: nfdi4health-pr-mds-questionnaire
Title: "NFDI4Health PR MDS Questionnaire"
Description: "Resource covering metadata of a questionnaire."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-questionnaire"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Webpage named webpage 0..1 and
    NFDI4Health_EX_MDS_Format named format 0..1 and
    NFDI4Health_EX_MDS_Label named label 0.. and
    NFDI4Health_EX_MDS_Execution_Language named executionlLanguage 0.. and
    NFDI4Health_EX_MDS_Associated_Party named roles 1.. and
    NFDI4Health_EX_MDS_Related named related 0..1 and
    NFDI4Health_EX_MDS_Keywords named keywords 0..
* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "assigner.identifier.system"
* identifier ^slicing.rules = #open
* identifier ^short = "ID of the [RESOURCE]"
* identifier ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
* identifier.system 1..
* identifier.system = "NFDI4Health" (exactly)
* identifier.value 1..
* identifier contains alternative_ids 0..1
* identifier[alternative_ids] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* version ^short = "Version of the [RESOURCE]"
* version ^definition = "If existing, the version number of the resource."
* title 1..
* title ^short = "Title/name"
* title ^definition = "Scientific unabbreviated title or name of the resource."
* title.extension ^slicing.discriminator.type = #value
* title.extension ^slicing.discriminator.path = "url"
* title.extension ^slicing.rules = #open
* title.extension contains $translation named translation 0..1
* status = #unknown (exactly)
* description 1..
* description ^short = "A short plain text summary describing the resource in English."
* description ^definition = "A short plain text summary describing the resource in English."
* description.extension ^slicing.discriminator.type = #value
* description.extension ^slicing.discriminator.path = "url"
* description.extension ^slicing.rules = #open
* description.extension ^min = 0
* description.extension contains $translation named translation 0..1
* description.extension[translation] ^isModifier = false
* description.extension[translation].extension ^slicing.discriminator.type = #value
* description.extension[translation].extension ^slicing.discriminator.path = "url"
* description.extension[translation].extension ^slicing.rules = #open
* description.extension[translation].extension[lang] ^sliceName = "lang"
* description.extension[translation].extension[lang].value[x] from NFDI4Health_VS_MDS_Language_NO_ENGLISH_SNOMEDCT (required)
* description.extension[translation].extension[lang].value[x] ^binding.description = "Value set defining codes to specify a language other than English."
* description.extension[translation].extension[content] ^sliceName = "content"
* copyright ^short = "Additional information about use rights"
* copyright ^definition = "Any additional descriptive information explaining terms and conditions to (re-)use the resource."
* copyright.extension ^slicing.discriminator.type = #value
* copyright.extension ^slicing.discriminator.path = "url"
* copyright.extension ^slicing.rules = #open
* copyright.extension contains NFDI4Health_EX_MDS_Copyright_Label named label 1..1
* copyright.extension contains NFDI4Health_EX_MDS_Use_Rights named useRightsConfimations 1..  


Mapping: NFDI4Health-Questionnaire-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health Questionnaire to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright -> "1.10.3.3 resource_use_rights_description"
* identifier[alternative_ids] -> "1.12 ids_alternative"
* identifier[alternative_ids].system -> "1.12.1 type"
* identifier[alternative_ids].value -> "1.12.2 identifier"
* identifier -> "1.1 resource_identifier" "Unique identifier of the resource used for identification within the NFDI4Health."
* title -> "1.3.1 Resource.titles.text"
* copyright.extension[useRightsConfimations] -> "resource_use_rights_confirmations"
* identifier.value -> "1.1 resource_identifier" "The value that is unique"
* description -> "1.5.1 resource_description_english" "A short plain text summary describing the resource in English." #English
* description.extension[translation].extension[content].value[x] -> "1.6.1 resource_descriptions_non_english.text"
* description.extension[translation].extension[lang].value[x] -> "1.6.2 resource_descriptions_non_english.language"
* description.extension[translation] -> "1.6 Resource.resource_descriptions_non_english"
* extension[webpage] -> "1.9 resource_web_page" "Other web pages related to the resource can additionally be entered in the section \"Related resources\"."
* version -> "1.10.1 resource_version" "The identifier that is used to identify this version of the questionnaire when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the questionnaire author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence."
