Profile: NFDI4Health_PR_MDS_Questionnaire
Parent: Questionnaire
Id: nfdi4health-pr-mds-questionnaire
Title: "NFDI4Health PR MDS Questionnaire"
Description: "Profile collecting information on questionnaires within NFDI4Health."
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
    NFDI4Health_EX_MDS_Format named format 0..1 and
    NFDI4Health_EX_MDS_Descriptions named descriptions 1..1 and
    NFDI4Health_EX_MDS_Execution_Language named executionlLanguage 0..* and
    NFDI4Health_EX_MDS_Related named relatedResources 0..1 and
    NFDI4Health_EX_MDS_Keywords named keywords 0..*
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
* version ^short = "Version"
* version ^definition = "If applicable, the version number of the [RESOURCE]."
* status = #active (exactly)
* status ^comment = "The item does not exist in NFDI4Health' MDS. Fixed to 'active' for all studies."
* copyright ^short = "(Re-)use rights"
* copyright ^definition = "Group of items providing information about the rights to (re-)use the [RESOURCE]."
* copyright ^comment = "Additional information about use rights"
* copyright.extension ^slicing.discriminator.type = #value
* copyright.extension ^slicing.discriminator.path = "url"
* copyright.extension ^slicing.rules = #open
* copyright.extension contains NFDI4Health_EX_MDS_Copyright_Label_And_Link named copyrightLabelandLink 1..1
* copyright.extension contains NFDI4Health_EX_MDS_Use_Rights_Confirmations named useRightsConfirmations 0..1  


Mapping: NFDI4Health-Questionnaire-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Questionnaire
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
* version -> "Resource.nonStudyDetails.version"
* extension[descriptions] -> "Resource.descriptions"
* copyright -> "Resource.nonStudyDetails.useRights.description"
* copyright.extension[NFDI4Health_EX_MDS_Copyright_Label_And_Link] -> "Resource.nonStudyDetails.useRights.label"
* copyright.extension[NFDI4Health_EX_MDS_Copyright_Label_And_Link] -> "Resource.nonStudyDetails.useRights.link"
* copyright.extension[useRightsConfirmations] -> "Resource.nonStudyDetails.useRights.useRightsConfirmations"
* extension[relatedResources] -> "1.12 Resource.ids"
* extension[relatedResources] -> "1.13 Resource.idsNfdi4health"
* extension[relatedResources] -> "1.8 Resource.webpage"
* extension[format] -> "Resource.nonStudyDetails.format"
* extension[descriptions] -> "Resource.descriptions"




