Profile: NFDI4Health_PR_MDS_Document
Parent: DocumentReference
Id: nfdi4health-pr-mds-document
Title: "NFDI4Health PR MDS Document"
Description: "Profile to collect information about documents related to german clinical, epidemiological or Public health studies."
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
    NFDI4Health_EX_MDS_Keywords named keywords 0..* and
    NFDI4Health_EX_MDS_Descriptions named descriptions 1..* and
    NFDI4Health_EX_MDS_Document_Use_Rights named useRights 0..1 and 
    NFDI4Health_EX_MDS_Related named relatedResources 0..1 and
    NFDI4Health_EX_MDS_Execution_Language named executionLanguage 0..*
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
* identifier.type from NFDI4Health_VS_MDS_ID_TYPE_NCI_Local (required)
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
* identifier[NCT].type = $NCI#C172240 "Clinicaltrials.gov Identifier" (exactly)
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
* identifier[EudraCT].type = $NCI#C132782 "European Union Drug Regulating Authorities Clinical Trials Database" (exactly)
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
* identifier[Other].type = $NCI#C17649 "Other" (exactly)
* identifier[Other].system ^definition = "Type/name of the system where the given resource is already registered."
* identifier[Other].value 1..
* identifier[Other].value ^definition = "Identifier (ID) assigned to the given resource by another registering system, e.g. by a register of clinical trials or a data repository."
* content.extension ^slicing.discriminator.type = #value
* content.extension ^slicing.discriminator.path = "url"
* content.extension ^slicing.rules = #open
* content.extension ^min = 0
* content.extension contains NFDI4Health_EX_MDS_Version named version 0..1
* content.attachment.language 0..1
* content.attachment.language ^short = "Language(s) of the [RESOURCE]"
* content.attachment.language ^definition = "Language(s) in which a study/substudy is conducted, or a language in which a study document is composed."
* content.attachment.language ^comment = "Short input help: Select all that apply."
* content.format 0..1
* content.format ^short = "Format"
* content.format ^definition = "If applicable, the file format of the [RESOURCE] (e.g., XML, PDF, XLSX, etc.)."
* content.format ^example[0].label = "Example of a Document format"
* content.format ^example[=].valueString = "XML"
* content.format ^example[+].label = "Example of a Document format"
* content.format ^example[=].valueString = "PDF"
* content.format ^example[+].label = "Example of a Document format"
* content.format ^example[=].valueString = "XLSX"

Mapping: NFDI4Health-Document-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health Document to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Document
* identifier -> "Resource.idsAlternative"
* identifier[DRKS] -> "Resource.idsAlternative"
* identifier[DRKS].system -> "esource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].type -> "Resource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].value -> "Resource.idsAlternative.identifier"
* identifier[NCT] -> "Resource.idsAlternative"
* identifier[NCT].system -> "Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].type -> "Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].value -> "Resource.idsAlternative.identifier"
* identifier[ISRCTN] -> "Resource.idsAlternative"
* identifier[ISRCTN].system -> "Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].type -> "Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].value -> "Resource.idsAlternative.identifier"
* identifier[EudraCT] -> "Resource.idsAlternative"
* identifier[EudraCT].system -> "Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].type -> "Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].value -> "Resource.idsAlternative.identifier"
* identifier[EUDAMED] -> "Resource.idsAlternative"
* identifier[EUDAMED].system -> "Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].type -> "Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].value -> "Resource.idsAlternative.identifier"
* identifier[UTN] -> "Resource.idsAlternative"
* identifier[UTN].system -> "Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].type -> "Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].value -> "Resource.idsAlternative.identifier"
* identifier[KonsortSWD] -> "Resource.idsAlternative"
* identifier[KonsortSWD].system -> "Resource.idsAlternative.scheme" "Type = KonsortSWD"
* identifier[KonsortSWD].type -> "Resource.idsAlternative.scheme" "Type = KonsortSWD"
* identifier[KonsortSWD].value -> "Resource.idsAlternative.identifier"
* identifier[MDMPortal] -> "Resource.idsAlternative"
* identifier[MDMPortal].system -> "Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].type -> "Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].value -> "Resource.idsAlternative.identifier"
* identifier[Other] -> "Resource.idsAlternative"
* identifier[Other].system -> "Resource.idsAlternative.scheme" "Type = Other"
* identifier[Other].type -> "Resource.idsAlternative.scheme" "Type = Other"
* identifier[Other].value -> "Resource.idsAlternative.identifier"
* extension[descriptions] -> "Resource.descriptions"
* content.extension[version] -> "Resource.nonStudyDetails.version"
* content.attachment.language -> "1.8 Resource.languages"
* content.format -> "Resource.nonStudyDetails.format"
* extension[relatedResources] -> "Resource.ids"
* extension[relatedResources] -> "Resource.idsNfdi4health"
* extension[relatedResources] -> "Resource.webpage"
* extension[useRights] -> "Resource.nonStudyDetails.useRights"

