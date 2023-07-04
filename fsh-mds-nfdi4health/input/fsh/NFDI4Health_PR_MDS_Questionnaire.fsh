Alias: $nfdi4health-ex-mds-webpage = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-webpage
Alias: $nfdi4health-ex-mds-format = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-format
Alias: $nfdi4health-ex-mds-label = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-label
Alias: $nfdi4health-ex-mds-execution-language = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-execution-language
Alias: $nfdi4health-ex-mds-associated-party = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-associated-party
Alias: $NFDI4Health_EX_MDS_Related = https://example.org/fhir/StructureDefinition/NFDI4Health_EX_MDS_Related
Alias: $nfdi4health-ex-mds-keywords2 = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-keywords2
Alias: $nfdi4health-ex-mds-language = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-language
Alias: $nfdi4health-ex-mds-copyright-label = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-copyright-label
Alias: $nfdi4health-ex-mds-use_rights = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-use_rights
Alias: $nfdi4health-vs-mds-language-no-english-snomedct = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-language-no-english-snomedct
Alias: $nfdi4health-vs-mds-yes-no-not-applicable-snomedct = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-not-applicable-snomedct

Profile: NFDI4Health_PR_MDS_Questionnaire
Parent: Questionnaire
Id: nfdi4health-pr-mds-questionnaire
Title: "NFDI4Health PR MDS Questionnaire"
Description: "Resource covering metadata of a questionnaire."
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $nfdi4health-ex-mds-webpage named webpage 0..1 and
    $nfdi4health-ex-mds-format named format 0..1 and
    $nfdi4health-ex-mds-label named label 0..* and
    $nfdi4health-ex-mds-execution-language named execution-language 0..* and
    $nfdi4health-ex-mds-associated-party named associatedParty 1..1 and
    $NFDI4Health_EX_MDS_Related named related 0..1 and
    $nfdi4health-ex-mds-keywords2 named keywords 0..*
* extension[webpage] ^short = "Web page of the [RESOURCE]"
* extension[webpage] ^definition = "If existing, a link to the web page directly relevant to the resource."
* extension[webpage] ^isModifier = false
* extension[format] ^short = "Format of the [RESOURCE]"
* extension[format] ^definition = "Technical format of the resource."
* extension[format] ^isModifier = false
* extension[label] ^min = 0
* extension[label] ^isModifier = false
* extension[execution-language] ^min = 0
* extension[execution-language] ^isModifier = false
* extension[associatedParty] ^isModifier = false
* extension[related] ^isModifier = false
* extension[keywords] ^isModifier = false
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
* title.extension[translation] only Translation
* title.extension[translation] ^sliceName = "translation"
* title.extension[translation] ^min = 0
* title.extension[translation] ^isModifier = false
* title.extension[translation].extension 2..
* title.extension[translation].extension ^slicing.discriminator.type = #value
* title.extension[translation].extension ^slicing.discriminator.path = "url"
* title.extension[translation].extension ^slicing.rules = #open
* title.extension[translation].extension[lang] ^sliceName = "lang"
* title.extension[translation].extension[lang].value[x] ^binding.strength = #required
* title.extension contains $nfdi4health-ex-mds-language named language 1..1
* title.extension[language] ^isModifier = false
* status = #unknown (exactly)
* description 1..
* description ^short = "A short plain text summary describing the resource in English."
* description ^definition = "A short plain text summary describing the resource in English."
* description.extension ^slicing.discriminator.type = #value
* description.extension ^slicing.discriminator.path = "url"
* description.extension ^slicing.rules = #open
* description.extension ^min = 0
* description.extension contains Translation named translation 0..1
* description.extension[translation] ^isModifier = false
* description.extension[translation].extension ^slicing.discriminator.type = #value
* description.extension[translation].extension ^slicing.discriminator.path = "url"
* description.extension[translation].extension ^slicing.rules = #open
* description.extension[translation].extension[lang] ^sliceName = "lang"
* description.extension[translation].extension[lang].value[x] from $nfdi4health-vs-mds-language-no-english-snomedct (required)
* description.extension[translation].extension[lang].value[x] ^binding.description = "Value set defining codes to specify a language other than English."
* description.extension[translation].extension[content] ^sliceName = "content"
* copyright ^short = "Additional information about use rights"
* copyright ^definition = "Any additional descriptive information explaining terms and conditions to (re-)use the resource."
* copyright.extension ^slicing.discriminator.type = #value
* copyright.extension ^slicing.discriminator.path = "url"
* copyright.extension ^slicing.rules = #open
* copyright.extension[label] only $nfdi4health-ex-mds-copyright-label
* copyright.extension[label] ^sliceName = "label"
* copyright.extension[label] ^short = "License"
* copyright.extension[label] ^definition = "License defining the rights to (re-)use the resource."
* copyright.extension[label] ^isModifier = false
* copyright.extension[label].value[x] from $nfdi4health-vs-mds-yes-no-not-applicable-snomedct (required)
* copyright.extension[label].value[x] ^binding.description = "Value set used to indicate the use rights of a resource."
* copyright.extension[label].value[x].text ..0
* copyright.extension[useRightsConfimations] only $nfdi4health-ex-mds-use_rights
* copyright.extension[useRightsConfimations] ^sliceName = "useRightsConfimations"
* copyright.extension[useRightsConfimations] ^isModifier = false
* copyright.extension[useRightsConfimations].extension ^slicing.discriminator.type = #value
* copyright.extension[useRightsConfimations].extension ^slicing.discriminator.path = "url"
* copyright.extension[useRightsConfimations].extension ^slicing.rules = #open
* copyright.extension[useRightsConfimations].extension[authorsConfirmationOne] ^sliceName = "authorsConfirmationOne"
* copyright.extension[useRightsConfimations].extension[authorsConfirmationTwo] ^sliceName = "authorsConfirmationTwo"
* copyright.extension[useRightsConfimations].extension[authorsConfirmationThree] ^sliceName = "authorsConfirmationThree"
* copyright.extension[useRightsConfimations].extension[supportByLicensing] ^sliceName = "supportByLicensing"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.9.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.9
Id: 1.9
Source: NFDI4Health_PR_MDS_Questionnaire
* extension[webpage] -> "resource_web_page" "Other web pages related to the resource can additionally be entered in the section \"Related resources\"."

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health
Id: NFDI4Health
Source: NFDI4Health_PR_MDS_Questionnaire
* identifier -> "1.1 resource_identifier" "Unique identifier of the resource used for identification within the NFDI4Health."
* title -> "1.3.1 Resource.titles.text"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.1
Id: 1.1
Source: NFDI4Health_PR_MDS_Questionnaire
* identifier.system -> "resource_identifier" "The namespace for the identifier value"
* identifier.value -> "resource_identifier" "The value that is unique"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.12.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.12
Id: 1.12
Source: NFDI4Health_PR_MDS_Questionnaire
* identifier[alternative_ids] -> "ids_alternative"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.12.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.12.1
Id: 1.12.1
Source: NFDI4Health_PR_MDS_Questionnaire
* identifier[alternative_ids].system -> "type"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.12.2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.12.2
Id: 1.12.2
Source: NFDI4Health_PR_MDS_Questionnaire
* identifier[alternative_ids].value -> "identifier"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.1
Id: 1.10.1
Source: NFDI4Health_PR_MDS_Questionnaire
* version -> "resource_version" "The identifier that is used to identify this version of the questionnaire when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the questionnaire author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence."

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.5.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.5.1
Id: 1.5.1
Source: NFDI4Health_PR_MDS_Questionnaire
* description -> "resource_description_english" "A short plain text summary describing the resource in English." #English

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.6.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.6
Id: 1.6
Source: NFDI4Health_PR_MDS_Questionnaire
* description.extension[translation] -> "Resource.resource_descriptions_non_english"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.6.2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.6.2
Id: 1.6.2
Source: NFDI4Health_PR_MDS_Questionnaire
* description.extension[translation].extension[lang].value[x] -> "resource_descriptions_non_english.language"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.6.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.6.1
Id: 1.6.1
Source: NFDI4Health_PR_MDS_Questionnaire
* description.extension[translation].extension[content].value[x] -> "resource_descriptions_non_english.text"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.3.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.3
Id: 1.10.3.3
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright -> "resource_use_rights_description"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.1
Id: 1.10.3.1
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright.extension[label] -> "resource_use_rights_label"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.2
Id: 1.10.3.2
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright.extension[useRightsConfimations] -> "resource_use_rights_confirmations"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.2.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.2.1
Id: 1.10.3.2.1
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright.extension[useRightsConfimations].extension[authorsConfirmationOne] -> "resource_use_rights_confirmation_authority"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.2.2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.2.2
Id: 1.10.3.2.2
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright.extension[useRightsConfimations].extension[authorsConfirmationTwo] -> "Item renamed to resource_use_rights_confirmation_terms"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.2.3.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.2.3
Id: 1.10.3.2.3
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright.extension[useRightsConfimations].extension[authorsConfirmationThree] -> "Item renamed to resource_use_rights_confirmation_irrevocability"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Questionnaire
// StructureDefinition was missing the mapping entry for 1.10.3.2.4.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.10.3.2.4
Id: 1.10.3.2.4
Source: NFDI4Health_PR_MDS_Questionnaire
* copyright.extension[useRightsConfimations].extension[supportByLicensing] -> "resource_use_rights_support_by_licencing"