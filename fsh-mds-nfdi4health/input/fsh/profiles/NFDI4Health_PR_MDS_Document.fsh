Profile: NFDI4Health_PR_MDS_Document
Parent: DocumentReference
Id: nfdi4health-pr-mds-document
Title: "NFDI4Health PR MDS Document"
Description: "Resource covering metadata of a document."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-document"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Resource_Type named resourceType 1..1 and
    NFDI4Health_EX_MDS_Resource_Type_General named resourceTypeGeneral 0..1 and
    NFDI4Health_EX_MDS_Keywords named keywords 0..* and
    NFDI4Health_EX_MDS_Associated_Party named roles 1..* and
    NFDI4Health_EX_MDS_Document_Use_Rights named useRights 0..1 and 
    NFDI4Health_EX_MDS_Related named relatedResources 0..1
* masterIdentifier 1..
* masterIdentifier ^short = "ID of the [RESOURCE]"
* masterIdentifier ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
* masterIdentifier ^comment = "Additional information: The identifier is assigned automatically."
* masterIdentifier.system 1..
* masterIdentifier.system = "https://csh.nfdi4health.de/resource/" (exactly)
* masterIdentifier.value 1..
* masterIdentifier.type = $Remaining#104 "NFDI4Health" (exactly)
* masterIdentifier.use 1..
* masterIdentifier.use = #official (exactly)
* identifier ^short = "Alternative identifiers"
* identifier ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier ^comment = "Short input help: If the [RESOURCE] is registered in other systems (e.g. a register of clinical trials or a data repository), you can provide corresponding identifier(s) here."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
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
* content.attachment.extension ^slicing.discriminator.type = #value
* content.attachment.extension ^slicing.discriminator.path = "url"
* content.attachment.extension ^slicing.rules = #open
* content.attachment.extension ^min = 0
* content.attachment.extension contains NFDI4Health_EX_MDS_Label named label 0..*
* content.attachment.extension contains NFDI4Health_EX_MDS_Version named version 0..1
* content.attachment.title 1..
* content.attachment.title ^short = "Title/name"
* content.attachment.title ^definition = "Scientific unabbreviated title or name of the resource."
* content.attachment.title.extension ^slicing.discriminator.type = #value
* content.attachment.title.extension ^slicing.discriminator.path = "url"
* content.attachment.title.extension ^slicing.rules = #open
* content.attachment.title.extension contains NFDI4Health_EX_MDS_Language named language 1..1
* content.attachment.title.extension[language] ^short = "Language of the title/name"
* content.attachment.title.extension[language] ^definition = "Language of the title/name"
* content.attachment.title.extension[language].valueCode from $CommonLanguages (required)
* content.attachment.title.extension[language].valueCode ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* content.attachment.title.extension contains $translation named translation 0..*
* content.attachment.title.extension[translation] ^short = "Language translation of the title"
* content.attachment.title.extension[translation] ^definition = "Language of the title if it is not the base language of the resource."
* content.attachment.title.extension[translation].extension ^slicing.discriminator.type = #value
* content.attachment.title.extension[translation].extension ^slicing.discriminator.path = "url"
* content.attachment.title.extension[translation].extension ^slicing.rules = #open
* content.attachment.title.extension[translation].extension[lang] ^short = "Language of the title/name"
* content.attachment.title.extension[translation].extension[lang] ^definition = "Language of the title/name."
* content.attachment.title.extension[translation].extension[lang].value[x] ^binding.strength = #required
* content.attachment.title.extension[translation].extension[lang].value[x] ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* content.attachment.title.extension[translation].extension[content] ^short = "Title in another language"
* content.attachment.title.extension[translation].extension[content] ^definition = "Title in another language than the base language of the resource."
* content.attachment.title.extension[translation].extension[content].value[x] only string
* content.attachment.language 0..1
* content.attachment.language ^short = "Language(s) of the [RESOURCE]"
* content.attachment.language ^definition = "Language(s) in which a study/substudy is conducted, or a language in which a study document is composed."
* content.attachment.language ^comment = "Short input help: Select all that apply."
* content.attachment.url 0..1
* content.attachment.url ^short = "Web page of the [RESOURCE]"
* content.attachment.url ^definition = "If existing, a link to the web page directly relevant to the resource."
* content.attachment.url ^comment = "Additional information: Other web pages related to the resource can additionally be entered in the section 'Related resources'."
* content.format 0..1
* content.format ^short = "Format of the [RESOURCE]"
* content.format ^definition = "Technical format of the resource."
* content.format ^comment = "Short input help: E.g., XML, PDF, XLSX, etc."
* content.format ^example[0].label = "Example of a Document format"
* content.format ^example[=].valueString = "XML"
* content.format ^example[+].label = "Example of a Document format"
* content.format ^example[=].valueString = "PDF"
* content.format ^example[+].label = "Example of a Document format"
* content.format ^example[=].valueString = "XLSX"

* extension[useRights] obeys core1
* extension[roles].extension[nameType] obeys core4
* extension[roles].extension[nameType] obeys core7
* extension[roles].extension[nameType] obeys core13
* extension[roles].extension[nameType] obeys core16
* extension[roles].extension[roleOrganisational] obeys core10

Mapping: NFDI4Health-Document-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health Document to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Document
* masterIdentifier -> "1.1 Resource.identifier"
* identifier -> "1.12 Resource.idsAlternative"
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
* description -> "1.5.1 Resource.descriptionEnglish.text"
* description.extension[translation] -> "1.6 Resource.descriptionNonEnglish"
* description.extension[translation].extension[lang] -> "1.6.2 Resource.descriptionNonEnglish.language"
* description.extension[translation].extension[content] -> "1.6.1 Resource.descriptionNonEnglish.text"
* description.extension[language] -> "1.5.2 Resource.descriptionEnglish.language"
* content.attachment.title -> "1.3.1 Resource.titles.text"
* content.attachment.title.extension[language] -> "1.3.2 Resource.titles.language"
* content.attachment.title.extension[translation].extension[lang] -> "1.3.2 Resource.titles.language" "Translation language of the title"
* content.attachment.title.extension[translation].extension[content] -> "1.3.1 Resource.titles.text" "Translated title"
* content.attachment.language -> "1.8 Resource.languages"
* content.attachment.url -> "1.9 Resource.webpage"
* content.format -> "1.10.2 Resource.nonStudyDetails.format"


Invariant: core1
Description: "Cardinality: 1..1, if Resource.nonStudyDetails.useRights.label != ('CC0 1.0 (Creative Commons Zero v1.0 Universal)' OR 'All rights reserved' OR 'Other' OR 'Not applicable'); otherwise 0..0"
Severity: #error
Expression: "DocumentReference.extension[useRights].extension[copyrightLabel].exists(Creative Commons Zero v1.0 Universal) OR DocumentReference.extension[useRights].extension[copyrightLabel].exists(All rights reserved) OR DocumentReference.extension[useRights].extension[copyrightLabel].exists('Other (Qualitative Concept)') OR DocumentReference.extension[useRights].extension[copyrightLabel].exists('Not Applicable (Qualitative Concept)') implies DocumentReference.extension[useRights].extension[useRightsConfirmations].exists().not()"

Invariant: core4
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Organisational'; otherwise 0..0"
Severity: #error
Expression: "DocumentReference.extension[roles].extension[nameType].exists('Organizational (Qualitative Concept)') implies DocumentReference.extension[roles].extension[party].where(resolve() is Organization)"

Invariant: core7
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Organisational'; otherwise 0..0"
Severity: #error
Expression: "DocumentReference.extension[roles].extension[nameType].exists('Organizational (Qualitative Concept)') implies DocumentReference.extension[roles].extension[roleOrganisational].exists()"

Invariant: core10
Description: "Cardinality: 0..*, if Resource.roles.organisational.type == ('Funder (public)' OR 'Funder (private)'); otherwise 0..0"
Severity: #error
Expression: "DocumentReference.extension[roles].extension[roleOrganisational].exists('Public Funder' or 'Private Funder').not() implies ResearchStudy.extension[roles].extension[party].valueReference.where(reference=Organization).extension[fundingID].exists().not()"

Invariant: core13
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Personal'; otherwise 0..0"
Severity: #error
Expression: "DocumentReference.extension[roles].extension[nameType].exists('Personal Attribute (Organism Attribute)') implies DocumentReference.extension[roles].extension[party].where(resolve() is PractitionerRole)"

Invariant: core16
Description: " 	Cardinality: 1..1, if Resource.roles.nameType =='Personal'; otherwise 0..0"
Severity: #error
Expression: "DocumentReference.extension[roles].extension[nameType].exists('Personal Attribute (Organism Attribute)') implies DocumentReference.extension[roles].extension[rolePersonal].exists()"