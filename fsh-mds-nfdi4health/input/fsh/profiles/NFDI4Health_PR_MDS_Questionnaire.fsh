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
    NFDI4Health_EX_MDS_Label named label 0..* and
    NFDI4Health_EX_MDS_Execution_Language named executionlLanguage 0..* and
    NFDI4Health_EX_MDS_Associated_Party named roles 1..* and
    NFDI4Health_EX_MDS_Related named relatedResources 0..1 and
    NFDI4Health_EX_MDS_Keywords named keywords 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    NFDI4Health 1..1 and
    DRKS 0..* and
    NCT 0..* and
    ISRCTN 0..* and
    EudraCT 0..* and
    EUDAMED 0..* and
    UTN 0..* and
    KonsortSWD 0..* and
    MDMPortal 0..* and
    Other 0..*
* identifier.type 1..1
* identifier.type from NFDI4Health_VS_MDS_ID_TYPE_UMLS_Local (required)
* identifier[NFDI4Health] ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
* identifier[NFDI4Health] ^comment = "Additional information: The identifier is assigned automatically."
* identifier[NFDI4Health].type = $Remaining#104 "NFDI4Health" (exactly)
* identifier[NFDI4Health].use 1..
* identifier[NFDI4Health].use = #official (exactly)
* identifier[NFDI4Health].system 1..
* identifier[NFDI4Health].system = "https://csh.nfdi4health.de/resource/" (exactly)
* identifier[NFDI4Health].value 1..
* identifier[DRKS] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[DRKS].type = $Remaining#098 "DRKS" (exactly)
* identifier[DRKS].system 1..
* identifier[DRKS].system = "https://www.drks.de" (exactly)
* identifier[DRKS].system ^definition = "Name of the system where the given resource is already registered. Fixed to DRKS."
* identifier[DRKS].value 1..
* identifier[DRKS].value ^definition = "Identifier (ID) assigned to the given resource by DRKS."
* identifier[DRKS].value ^example[0].label = "DRKS Identifier"
* identifier[DRKS].value ^example[=].valueString = "DRKS00021273"
* identifier[NCT] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[NCT].type = $UMLS#C5419532 "Clinicaltrials.gov Identifier" (exactly)
* identifier[NCT].system 1..
* identifier[NCT].system = "https://www.clinicaltrials.gov/" (exactly)
* identifier[NCT].system ^definition = "Name of the system where the given resource is already registered. Fixed to NCT (CT.gov)."
* identifier[NCT].type
* identifier[NCT].value 1..
* identifier[NCT].value ^definition = "Identifier (ID) assigned to the given resource by ClinicalTrials.gov."
* identifier[NCT].value ^example[0].label = "NCT Identifier"
* identifier[NCT].value ^example[=].valueString = "NCT04327505"
* identifier[ISRCTN] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[ISRCTN].type = $Remaining#099 "ISRCTN" (exactly)
* identifier[ISRCTN].system 1..
* identifier[ISRCTN].system = "https://www.isrctn.com/" (exactly)
* identifier[ISRCTN].system ^definition = "Name of the system where the given resource is already registered. Fixed to ISRCTN."
* identifier[ISRCTN].value 1..
* identifier[ISRCTN].value ^definition = "Identifier (ID) assigned to the given resource by ISRCTN."
* identifier[EudraCT] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[EudraCT].type = $UMLS#C4329800 "European Union Drug Regulating Authorities Clinical Trials Database (Intellectual Product)" (exactly)
* identifier[EudraCT].system 1..
* identifier[EudraCT].system = "https://eudract.ema.europa.eu/results-web/index.xhtml" (exactly)
* identifier[EudraCT].system ^definition = "Name of the system where the given resource is already registered. Fixed to EudraCT."
* identifier[EudraCT].value 1..
* identifier[EUDAMED] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[EUDAMED].type = $Remaining#100 "EUDAMED" (exactly)
* identifier[EUDAMED].system 1..
* identifier[EUDAMED].system = "https://ec.europa.eu/tools/eudamed/#/screen/home" (exactly)
* identifier[EUDAMED].system ^definition = "Name of the system where the given resource is already registered. Fixed to EUDAMED."
* identifier[EUDAMED].value 1..
* identifier[EUDAMED].value ^definition = "Identifier (ID) assigned to the given resource by EUDAMED."
* identifier[UTN] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[UTN].type = $Remaining#101 "UTN" (exactly)
* identifier[UTN].system 1..
* identifier[UTN].system = "https://trialsearch.who.int/utn.aspx" (exactly)
* identifier[UTN].system ^definition = "Name of the system where the given resource is already registered. Fixed to UTN (WHO)."
* identifier[UTN].value 1..
* identifier[KonsortSWD] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[KonsortSWD].type = $Remaining#102 "KonsortSWD" (exactly)
* identifier[KonsortSWD].system 1..
* identifier[KonsortSWD].system = "https://www.konsortswd.de/" (exactly)
* identifier[KonsortSWD].system ^definition = "Name of the system where the given resource is already registered. Fixed to KonsortSWD."
* identifier[KonsortSWD].value 1..
* identifier[KonsortSWD].value ^definition = "Identifier (ID) assigned to the given resource by KonsortSWD."
* identifier[MDMPortal] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[MDMPortal].type = $Remaining#103 "MDM Portal" (exactly)
* identifier[MDMPortal].system 1..
* identifier[MDMPortal].system = "https://www.mdm-portal.de/" (exactly)
* identifier[MDMPortal].system ^definition = "Name of the system where the given resource is already registered. Fixed to MDM Portal."
* identifier[MDMPortal].value 1..
* identifier[MDMPortal].value ^definition = "Identifier (ID) assigned to the given resource by MDM Portal."
* identifier[Other] ^short = "Identifier"
* identifier[Other] ^definition = "Identifier (ID) assigned to the given resource by another registering system, e.g. by a register of clinical trials or a data repository."
* identifier[Other].type = $UMLS#C0205394 "Other (Qualitative Concept)" (exactly)
* identifier[Other].system ^definition = "Type/name of the system where the given resource is already registered."
* identifier[Other].value 1..
* identifier[Other].value ^definition = "Identifier (ID) assigned to the given resource by another registering system, e.g. by a register of clinical trials or a data repository."
* version ^short = "Version of the [RESOURCE]"
* version ^definition = "If existing, the version number of the resource."
* title 1..
* title ^short = "Title/name"
* title ^definition = "Scientific unabbreviated title or name of the resource."
* title ^comment = "Additional information: If no official title/name has been defined yet, please provide a title/name that is suitable for public display. | Short input help: Please provide at least one title/name of the resource. If the original title is not in English, please also provide an English translation of the original title."
* title.extension ^slicing.discriminator.type = #value
* title.extension ^slicing.discriminator.path = "url"
* title.extension ^slicing.rules = #open
* title.extension contains $translation named translation 0..*
* title.extension[translation] ^short = "Language translation of the title"
* title.extension[translation] ^definition = "Language of the title if it is not the base language of the resource."
* title.extension[translation].extension ^slicing.discriminator.type = #value
* title.extension[translation].extension ^slicing.discriminator.path = "url"
* title.extension[translation].extension ^slicing.rules = #open
* title.extension[translation].extension[lang] ^short = "Language of the title/name"
* title.extension[translation].extension[lang] ^definition = "Language of the title/name."
* title.extension[translation].extension[lang].value[x] ^binding.strength = #required
* title.extension[translation].extension[lang].value[x] ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* title.extension[translation].extension[content] ^short = "Title in another language"
* title.extension[translation].extension[content] ^definition = "Title in another language than the base language of the resource."
* title.extension[translation].extension[content].value[x] only string
* title.extension contains NFDI4Health_EX_MDS_Language named language 1..1
* title.extension[language] ^short = "Language of the title/name"
* title.extension[language] ^definition = "Language of the title/name"
* title.extension[language].valueCode from $CommonLanguages (required)
* title.extension[language].valueCode ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* status = #active (exactly)
* status ^comment = "The item does not exist in NFDI4Health' MDS. Fixed to 'active' for all studies."
* description 1..1
* description ^short = "English description of the [RESOURCE]"
* description ^definition = "A short plain text summary describing the resource in English."
* description ^comment = "Additional information: An English description is mandatory to facilitate the search. | Short input help: The provided information should be understandable by scientific audience."
* description.extension ^slicing.discriminator.type = #value
* description.extension ^slicing.discriminator.path = "url"
* description.extension ^slicing.rules = #open
* description.extension contains NFDI4Health_EX_MDS_Language named language 1..1
* description.extension[language] ^short = "Language of the description"
* description.extension[language] ^definition = "Language of the description text."
* description.extension[language] ^comment = "Additional information: English is a default value."
* description.extension[language].value[x] = #en (exactly)
* description.extension contains $translation named translation 0..*
* description.extension[translation] ^short = "Additional description(s) of the [RESOURCE]"
* description.extension[translation] ^definition = "Group of items with description(s) of the resource written not in English."
* description.extension[translation] ^comment = "Additional descriptions of the resource are optional. The provided information should be understandable by scientific audience."
* description.extension[translation].extension ^slicing.discriminator.type = #value
* description.extension[translation].extension ^slicing.discriminator.path = "url"
* description.extension[translation].extension ^slicing.rules = #open
* description.extension[translation].extension[lang] ^sliceName = "lang"
* description.extension[translation].extension[lang] ^short = "Language of the description text."
* description.extension[translation].extension[lang] ^definition = "Language other than English of the description text."
* description.extension[translation].extension[content] ^sliceName = "content"
* description.extension[translation].extension[content] ^short = "Description (not in English)"
* description.extension[translation].extension[content] ^definition = "Short plain text summary of the resource other than in English."
* description.extension[translation].extension[content] ^comment = "Additional information: Additional descriptions of the resource are optional. The provided information should be understandable by scientific audience."
* copyright ^short = "Additional information about use rights"
* copyright ^definition = "Any additional descriptive information explaining terms and conditions to (re-)use the resource."
* copyright ^comment = "Short input help: If “Other” is selected in the property 'License', the preferred license or terms and conditions for (re-)use can be specified here."
* copyright.extension ^slicing.discriminator.type = #value
* copyright.extension ^slicing.discriminator.path = "url"
* copyright.extension ^slicing.rules = #open
* copyright.extension contains NFDI4Health_EX_MDS_Copyright_Label named copyrightLabel 1..1
* copyright.extension contains NFDI4Health_EX_MDS_Use_Rights_Confirmations named useRightsConfirmations 1..1  
* copyright.extension[copyrightLabel] obeys core2
* extension[roles].extension[nameType] obeys core5
* extension[roles].extension[nameType] obeys core8
* extension[roles].extension[nameType] obeys core14
* extension[roles].extension[nameType] obeys core17
* extension[roles].extension[roleOrganisational] obeys core11


Mapping: NFDI4Health-Questionnaire-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Questionnaire
* identifier -> "1.1 Resource.identifier"
* identifier -> "1.12 Resource.idsAlternative"
* identifier[NFDI4Health] -> "1.1 Resource.identifier"
* identifier[DRKS] -> "1.12 Resource.idsAlternative"
* identifier[DRKS].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[NCT] -> "1.12 Resource.idsAlternative"
* identifier[NCT].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[ISRCTN] -> "1.12 Resource.idsAlternative"
* identifier[ISRCTN].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[EudraCT] -> "1.12 Resource.idsAlternative"
* identifier[EudraCT].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[EUDAMED] -> "1.12 Resource.idsAlternative"
* identifier[EUDAMED].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[UTN] -> "1.12 Resource.idsAlternative"
* identifier[UTN].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[KonsortSWD] -> "1.12 Resource.idsAlternative"
* identifier[KonsortSWD].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = KonsortSWD"
* identifier[KonsortSWD].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = KonsortSWD"
* identifier[KonsortSWD].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[MDMPortal] -> "1.12 Resource.idsAlternative"
* identifier[MDMPortal].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[Other] -> "1.12 Resource.idsAlternative"
* identifier[Other].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = Other"
* identifier[Other].type -> "1.12.1 Resource.idsAlternative.scheme" "Type = Other"
* identifier[Other].value -> "1.12.2 Resource.idsAlternative.identifier"
* version -> "1.10.1 Resource.nonStudyDetails.version"
* title -> "1.3.1 Resource.titles.text"
* title.extension[translation].extension[lang] -> "1.3.2 Resource.titles.language" "Translation language of the title"
* title.extension[translation].extension[content] -> "1.3.1 Resource.titles.text" "Translated title"
* title.extension[language] -> "1.3.2 Resource.titles.language"
* description -> "1.5.1 Resource.descriptionEnglish.text"
* description.extension[translation] -> "1.6 Resource.descriptionNonEnglish"
* description.extension[translation].extension[lang] -> "1.6.2 Resource.descriptionNonEnglish.language"
* description.extension[translation].extension[content] -> "1.6.1 Resource.descriptionNonEnglish.text"
* description.extension[language] -> "1.5.2 Resource.descriptionEnglish.language"
* copyright -> "1.10.3.3 Resource.nonStudyDetails.useRights.description"

Invariant: core2
Description: "Cardinality: 1..1, if Resource.nonStudyDetails.useRights.label != ('CC0 1.0 (Creative Commons Zero v1.0 Universal)' OR 'All rights reserved' OR 'Other' OR 'Not applicable'); otherwise 0..0"
Severity: #error
Expression: "Questionnaire.copyright.extension[copyrightLabel].exists(Creative Commons Zero v1.0 Universal) OR Questionnaire.copyright.extension[copyrightLabel].exists(All rights reserved) OR Questionnaire.copyright.extension[copyrightLabel].exists('Other (Qualitative Concept)') OR Questionnaire.copyright.extension[copyrightLabel].exists('Not Applicable (Qualitative Concept)') implies Questionnaire.copyright.extension[useRightsConfirmations].exists().not()"

Invariant: core5
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Organisational'; otherwise 0..0"
Severity: #error
Expression: "Questionnaire.extension[roles].extension[nameType].exists('Organizational (Qualitative Concept)') implies Questionnaire.extension[roles].extension[party].where(resolve() is Organization)"

Invariant: core8
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Organisational'; otherwise 0..0"
Severity: #error
Expression: "Questionnaire.extension[roles].extension[nameType].exists('Organizational (Qualitative Concept)') implies Questionnaire.extension[roles].extension[roleOrganisational].exists()"

Invariant: core11
Description: "Cardinality: 0..*, if Resource.roles.organisational.type == ('Funder (public)' OR 'Funder (private)'); otherwise 0..0"
Severity: #error
Expression: "Questionnaire.extension[roles].extension[roleOrganisational].exists('Public Funder' or 'Private Funder').not() implies ResearchStudy.extension[roles].extension[party].valueReference.where(reference=Organization).extension[fundingID].exists().not()"

Invariant: core14
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Personal'; otherwise 0..0"
Severity: #error
Expression: "Questionnaire.extension[roles].extension[nameType].exists('Personal Attribute (Organism Attribute)') implies Questionnaire.extension[roles].extension[party].where(resolve() is PractitionerRole)"

Invariant: core17
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Personal'; otherwise 0..0"
Severity: #error
Expression: "Questionnaire.extension[roles].extension[nameType].exists('Personal Attribute (Organism Attribute)') implies Questionnaire.extension[roles].extension[rolePersonal].exists()"

