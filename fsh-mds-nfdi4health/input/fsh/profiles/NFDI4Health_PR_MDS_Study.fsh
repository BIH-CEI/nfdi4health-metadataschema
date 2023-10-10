Profile: NFDI4Health_PR_MDS_Study
Parent: ResearchStudy
Id: nfdi4health-pr-mds-study
Title: "NFDI4Health PR MDS Study"
Description: "Resource covering metadata of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-study"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
//* language 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Resource_Type named resourceType 1..1 and
    NFDI4Health_EX_MDS_Resource_Type_General named resourceTypeGeneral 0..1 and
    NFDI4Health_EX_MDS_Execution_Language named executionLanguage 0..* and
    NFDI4Health_EX_MDS_Label named label 0..* and
    NFDI4Health_EX_MDS_Associated_Party named roles 1..* and
    NFDI4Health_EX_MDS_Nutritional_Data named nutritionalData 0..1 and
    NFDI4Health_EX_MDS_Chronic_Diseases named chronicDiseases 0..1 and
    NFDI4Health_EX_MDS_Study_Groups_Of_Diseases named studyGroupsOfDiseases 1..1 and
    NFDI4Health_EX_MDS_Mortality_Data named mortalityData 0..1 and
    NFDI4Health_EX_MDS_Study_Ethics_Committee_Approval named studyEthicsCommitteeApproval 0..1 and
    NFDI4Health_EX_MDS_Study_Status named studyStatus 1..1 and
    NFDI4Health_EX_MDS_Study_Subject named subject 1..1 and
    NFDI4Health_EX_MDS_Study_Data_Source named dataSource 0..1 and
    NFDI4Health_EX_MDS_Study_Eligibility_Criteria_Inclusion_Criteria named inclusionCriteria 0..1 and
    NFDI4Health_EX_MDS_Study_Eligibility_Criteria_Exclusion_Criteria named exclusionCriteria 0..1 and
    NFDI4Health_EX_MDS_Study_Comparison_Group named comparisonGroup 0..* and
    NFDI4Health_EX_MDS_Study_Outcomes named outcomes 0..* and
    NFDI4Health_EX_MDS_Study_Assessments named assessments 0..* and
    NFDI4Health_EX_MDS_Study_Population named population 0..1 and
    NFDI4Health_EX_MDS_Study_Data_Sharing_Plan named dataSharingPlan 1..1 and
    NFDI4Health_EX_MDS_Study_Target_Followup_Duration named targetFollowupDuration 0..1 and
    NFDI4Health_EX_MDS_Study_Biospecimen named biospecimen 0..1 and
    NFDI4Health_EX_MDS_Off_Label_Use named offLabelUse 0..1 and
    NFDI4Health_EX_MDS_Study_Masking named masking 0..1
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
* primaryPurposeType from NFDI4Health_VS_MDS_Study_Primary_Purpose_UMLS_NCI (required)
* primaryPurposeType ^short = "Primary purpose of the study"
* primaryPurposeType ^definition = "Specification of the main purpose of the study."
* primaryPurposeType ^comment = "Additional information: The field is defined foremost for interventional studies. For non-interventional  studies, this field may be not appplicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option \"Not applicable\" can be selected. | Short input help: Foremost for interventional studies, please specify the primary purpose why the study was conducted."
* primaryPurposeType ^binding.description = "Value set defining codes to specify the primary purpose of a study in a ResearchStudy resource."
* primaryPurposeType.coding 1..1
* primaryPurposeType.coding.system 1..
* primaryPurposeType.coding.code 1..
* phase from NFDI4Health_VS_MDS_Study_Phase_NCI (required)
* phase ^short = "Numerical phase of the study"
* phase ^definition = "If applicable, numerical phase of the study."
* phase ^comment = "Short input help: Select one value from the list."
* phase ^binding.description = "Value set defining codes to specify the phase of a study in a ResearchStudy resource."
* phase.coding.system 1..
* phase.coding.code 1..
* category 1..
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    primaryDesign 1..1 and
    studyTypeInterventional 0..* and
    studyTypeNonInterventional 0..* and
    timePerspectives 0..* and
    allocation 0..1 and
    samplingMethod 1..1 and
    samplingMethodProbability 0..1 and
    samplingMethodNonProbability 0..1
* category[primaryDesign] from NFDI4Health_VS_MDS_Study_Primary_Design_UMLS (required)
* category[primaryDesign] ^short = "Is it an interventional or non-interventional study?"
* category[primaryDesign] ^definition = "Non-interventional study design refers to a study that does not aim to alter study outcomes of interest.\r\nInterventional study design refers to a study that aims to alter study outcomes of interest."
* category[primaryDesign] ^comment = "Short input help: Select between non-interventional and interventional study design."
* category[primaryDesign] ^binding.description = "Value set defining codes for primary designs of studies in a ResearchStudy resource."
* category[primaryDesign].coding 1..1
* category[primaryDesign].coding.system 1..
* category[primaryDesign].coding.code 1..
* category[primaryDesign] obeys core20
* category[primaryDesign] obeys core21
* category[primaryDesign] obeys core23
* category[primaryDesign] obeys core31
* category[primaryDesign] obeys core36
* category[primaryDesign] obeys core37
* category[primaryDesign] obeys core38
* category[primaryDesign] obeys core40
* category[primaryDesign] obeys core41
* category[primaryDesign] obeys core42
* category[primaryDesign] obeys core43
* category[studyTypeInterventional] from NFDI4Health_VS_MDS_Study_Type_Interventional_UMLS (required)
* category[studyTypeInterventional] ^short = "Specification of study type"
* category[studyTypeInterventional] ^definition = "The strategy for assigning interventions to participants."
* category[studyTypeInterventional] ^comment = "Short input help: Select all that apply.\r\nIf \"Other\" is selected, you can specify the study type in the field \"Additional information about the study\"."
* category[studyTypeInterventional] ^binding.description = "Value set defining codes to specify the type of an interventional study in a ResearchStudy resource."
* category[studyTypeInterventional].coding 1..1
* category[studyTypeInterventional].coding.system 1..
* category[studyTypeInterventional].coding.code 1..
* category[studyTypeNonInterventional] from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_UMLS_Local (required)
* category[studyTypeNonInterventional] ^short = "Specification of study type"
* category[studyTypeNonInterventional] ^definition = "The primary strategy for participant identification and follow-up."
* category[studyTypeNonInterventional] ^comment = "Short input help: Select all that apply.\r\nIf \"Other\" is selected, you can specify the study type in the field \"Additional information about the study\"."
* category[studyTypeNonInterventional] ^binding.description = "Value set defining codes to specify the type of a non interventional study in a ResearchStudy resource."
* category[studyTypeNonInterventional].coding 1..1
* category[studyTypeNonInterventional].coding.system 1..
* category[studyTypeNonInterventional].coding.code 1..
* category[studyTypeNonInterventional] obeys core22
* category[timePerspectives] from NFDI4Health_VS_MDS_Study_Time_Perspectives_UMLS (required)
* category[timePerspectives] ^binding.description = "Value set defining codes to specify the time perspective of a study in a ResearchStudy resource."
* category[timePerspectives].coding 1..1
* category[timePerspectives].coding.system 1..
* category[timePerspectives].coding.code 1..
* category[allocation] from NFDI4Health_VS_MDS_Study_Allocation_NCI (required)
* category[allocation] ^short = "Type of allocation of participants to an arm"
* category[allocation] ^definition = "Type of allocation/assignment of individual study participants to an arm."
* category[allocation] ^comment = "Short input help: Select one value from the list."
* category[allocation] ^binding.description = "Value set defining codes to specify the subject allocation in a study."
* category[allocation].coding 1..1
* category[allocation].coding.system 1..
* category[allocation].coding.code 1..
* category[samplingMethod] from NFDI4Health_VS_MDS_Study_Sampling_Method_NCI_Local (required)
* category[samplingMethod] ^short = "Applied sampling method"
* category[samplingMethod] ^definition = "Type of the sampling method applied for the selection of study participants."
* category[samplingMethod] ^comment = "Short Input Help: Select one value from the list."
* category[samplingMethod] ^binding.description = "Value set defining codes to specify types of sampling methods."
* category[samplingMethod].coding 1..1
* category[samplingMethod].coding.system 1..
* category[samplingMethod].coding.code 1..
* category[samplingMethod] obeys core26
* category[samplingMethod] obeys core27
* category[samplingMethodProbability] from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI (required)
* category[samplingMethodProbability] ^short = "Specific type of probability sampling"
* category[samplingMethodProbability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* category[samplingMethodProbability] ^comment = "Short Input Help: If known, select one value from the list."
* category[samplingMethodProbability] ^binding.description = "Value set defining codes to specify types of probability sampling methods."
* category[samplingMethodProbability].coding 1..1
* category[samplingMethodProbability].coding.system 1..
* category[samplingMethodProbability].coding.code 1..
* category[samplingMethodNonProbability] from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_NCI_Local (required)
* category[samplingMethodNonProbability] ^short = "Specific type of non-probability sampling"
* category[samplingMethodNonProbability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* category[samplingMethodNonProbability] ^comment = "Short Input Help: If known, select one value from the list."
* category[samplingMethodNonProbability] ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."
* category[samplingMethodNonProbability].coding 1..1
* category[samplingMethodNonProbability].coding.system 1..
* category[samplingMethodNonProbability].coding.code 1..
* condition ^short = "Primary health condition(s), disease(s) or focus of the study"
* condition ^definition = "Group of items providing information about primary health condition(s) or disease(s) considered in the study, or the focus of the study (e.g. medication, food, therapy, device, etc.)."
* condition.coding.extension ^slicing.discriminator.type = #value
* condition.coding.extension ^slicing.discriminator.path = "url"
* condition.coding.extension ^slicing.rules = #open
* condition.coding.extension contains NFDI4Health_EX_MDS_URI named uri 0..1
* condition.coding.extension[uri] ^short = "Code ---- If known, code of the health condition, disease or focus in the terminology/classification used"
* condition.coding.extension[uri] ^definition = "Code of the health condition,  disease, focus in the terminology/classification used."
* condition.coding.extension[uri] ^comment = "Short input help: If found, the code from the terminology/classification used."
* condition.coding.system 1..
* condition.coding.system ^short = "Terminology/classification"
* condition.coding.system ^definition = "Terminology/classification used for the health condition, disease or focus."
* condition.coding.system ^comment = "Short input help: If used, name of the terminology/classification."
* condition.coding.code ^short = "Code"
* condition.coding.code ^definition = "Code of the health condition,  disease, focus in the terminology/classification used."
* condition.coding.code ^comment = "Short input help: If found, the code from the terminology/classification used."
* condition.coding.display 1..
* condition.coding.display ^short = "Name of the primary health condition, disease or focus of the study"
* condition.coding.display ^definition = "Name of primary health condition or disease considered in the study, or the focus of the study (e.g. medication, food, therapy, device, etc.)."
* condition.coding.display ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. | Short input help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* condition.text ^short = "Name of the primary health condition, disease or focus of the study"
* condition.text ^definition = "Name of primary health condition or disease considered in the study, or the focus of the study (e.g. medication, food, therapy, device, etc.)."
* condition.text ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. |  Short input help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* condition.text ^example[0].label = "Name of a Condition"
* condition.text ^example[=].valueString = "SARS-CoV-2"
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "url"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains
    webpage 0..1 and
    nonNFDI4HealthResource 0..* and
    NFDI4HealthResource 0..*
* relatedArtifact[webpage] ^short = "Web page of the [RESOURCE]"
* relatedArtifact[webpage] ^definition = "If existing, a link to the web page directly relevant to the resource."
* relatedArtifact[webpage] ^comment = "Additional information: Other web pages related to the resource can additionally be entered in the section \"Related resources\"."
* relatedArtifact[webpage].type = #documentation (exactly)
* relatedArtifact[webpage].url 1..
* relatedArtifact[nonNFDI4HealthResource] only NFDI4Health_PR_MDS_Related_Artifact_Non_NFDI4Health_Resource
* relatedArtifact[NFDI4HealthResource] only NFDI4Health_PR_MDS_Related_Artifact_NFDI4Health_Resource
* keyword ^short = "Keyword(s) describing the [RESOURCE]"
* keyword ^definition = "Group of items providing information about keywords describing the resource."
* keyword ^comment = "Additional information: The findability of the resource can be significantly increased if proper keywords are stated."
* keyword.coding ..1
* keyword.coding ^short = "Code of the keyword"
* keyword.coding ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding ^comment = "Short input help: If found, the code from the classification/vocabulary used."
* keyword.coding.extension ^slicing.discriminator.type = #value
* keyword.coding.extension ^slicing.discriminator.path = "url"
* keyword.coding.extension ^slicing.rules = #open
* keyword.coding.extension contains NFDI4Health_EX_MDS_URI named URI 1..1
* keyword.coding.extension[URI] ^short = "Code of the keyword"
* keyword.coding.extension[URI] ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding.extension[URI] ^comment = "Short input help: If found, the code from the classification/vocabulary used."
* keyword.coding.code ^short = "Code of the keyword"
* keyword.coding.code ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding.code ^comment = "Short input help: If found, the code from the classification/vocabulary used."
* keyword.coding.code ^example[0].label = "Keyword URI"
* keyword.coding.code ^example[=].valueCode = #http://id.nlm.nih.gov/mesh/D000086402
* keyword.text ^short = "Keyword"
* keyword.text ^definition = "Keyword(s) describing the resource."
* keyword.text ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. MeSH, UMLS, SNOMED CT) is preferred. However, also self-assigned keywords are allowed. | Short input help: Preferably, use terms from MeSH (https://meshb.nlm.nih.gov/search) or UMLS (https://uts.nlm.nih.gov/uts/umls/home)."
* keyword.text ^example[0].label = "Keyword label"
* keyword.text ^example[=].valueString = "SARS-CoV-2"
* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "coding.system"
* location ^slicing.rules = #open
* location ^comment = "Short input help: Select all that apply."
* location contains
    countries 1..* and
    regions 0..* 
* location[countries] ^short = "Country(ies) where the study takes place"
* location[countries] ^definition = "Country or countries where the study takes place."
* location[countries] ^comment = "Additional information: Select all that apply."
* location[countries].coding 1..1
* location[countries].coding.system 1..1
* location[countries].coding.system = $iso3166
* location[regions] ^short = "Regions and/or cities within a country where the study takes place"
* location[regions] ^definition = "If applicable, region(s) and/or city(ies) within a country where the study takes place."
* location[regions].coding 1..1
* location[regions].coding.system 1..1
* location[regions].coding.system = $iso3166-2
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
* description.extension[language].value[x] = #C0376245 "English Language" (exactly)
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
* enrollment only Reference(NFDI4Health_PR_MDS_Group_Intended or NFDI4Health_PR_MDS_Group_Actual)
* enrollment ^short = "Eligibility criteria for study participants"
* enrollment ^definition = "Group of items providing information about eligibility criteria for study participants."
* period.start ^short = "Start date of data collection for the study"
* period.start ^definition = "Start date of data collection for the study."
* period.start ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned study, it is the intended start date; in case of an ongoing study — the actual start date."
* period.end ^short = "End date of data collection for the study"
* period.end ^definition = "In case of studies with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."
* period.end ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned or ongoing study, it is the intended end date; in case of a completed study — the actual end date."
* site ..1
* site.extension ^slicing.discriminator.type = #value
* site.extension ^slicing.discriminator.path = "url"
* site.extension ^slicing.rules = #open
* site.extension contains NFDI4Health_EX_MDS_Study_Centers named centers 0..1
* site.extension[centers].extension[monoOrMulti] obeys core25
* reasonStopped ^short = "Reason why the study was stopped"
* reasonStopped ^definition = "If the study was stopped prematurely, specification of the reason(s) why it was halted."
* reasonStopped ^comment = "Short input help: E.g., accrual goal met / closed due to toxicity / closed due to lack of study progress / temporarily-closed per study design /etc."
* reasonStopped.extension ^slicing.discriminator.type = #value
* reasonStopped.extension ^slicing.discriminator.path = "url"
* reasonStopped.extension ^slicing.rules = #open
* reasonStopped.extension ^min = 0
* reasonStopped.extension contains NFDI4Health_EX_MDS_Study_Status_Halted_Stage named haltedStage 0..1
* reasonStopped.text ^short = "Reason why the study was stopped"
* reasonStopped.text ^definition = "If the study was stopped prematurely, specification of the reason(s) why it was halted."
* reasonStopped.text ^comment = "Short input help: E.g., accrual goal met / closed due to toxicity / closed due to lack of study progress / temporarily-closed per study design /etc."
* note ..1
* note ^short = "Any additional information about the study"
* note ^definition = "Any additional information about specific aspects of the study that cannot be captured by other properties."
* note ^comment = "Short input help: Any additional information about specific aspects of the study that cannot be captured by other properties."
* note.text ^short = "Any additional information about the study"
* note.text ^definition = "Any additional information about specific aspects of the study that cannot be captured by other properties."
* note.text ^comment = "Short input help: Any additional information about specific aspects of the study that cannot be captured by other properties."
* arm ..0
* objective ..1
* objective.name 1..
* objective.name ^short = "Research questions and/or hypothesis underlying the study"
* objective.name ^definition = "Statement of the research questions and/or hypotheses underlying the study."
* extension[roles].extension[nameType] obeys core3
* extension[roles].extension[nameType] obeys core6
* extension[roles].extension[nameType] obeys core12
* extension[roles].extension[nameType] obeys core15
* extension[roles].extension[roleOrganisational] obeys core9
* extension[studyStatus].extension[overallStatus] obeys core23
* extension[studyStatus].extension[overallStatus] obeys core24
* extension[dataSource].extension[general] obeys core28
* extension[dataSource].extension[general] obeys core29
* extension[dataSource].extension[general] obeys core30
* extension[outcomes].extension[name] obeys core32
* extension[outcomes].extension[description] obeys core32
* extension[dataSharingPlan].extension[generally] obeys core33
* extension[dataSharingPlan].extension[generally] obeys core34
* extension[dataSharingPlan].extension[generally] obeys core35
* extension[biospecimen].extension[retention] obeys core39
* extension[masking].extension[general] obeys core44
* extension[masking].extension[general] obeys core45

Mapping: NFDI4Health-Study-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Study
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
* extension[resourceType] -> "1.2.1 Resource.classification.resourceType"
* extension[resourceTypeGeneral] -> "1.2.2 Resource.classification.resourceTypeGeneral"
* title -> "1.3.1 Resource.titles.text"
* title.extension[translation].extension[lang] -> "1.3.2 Resource.titles.language" "Translation language of the title"
* title.extension[translation].extension[content] -> "1.3.1 Resource.titles.text" "Translated title"
* title.extension[language] -> "1.3.2 Resource.titles.language"
* primaryPurposeType -> "1.17.22 Resource.studyDesign.primaryPurpose"
* phase -> "1.17.37.1 Resource.studyDesign.interventional.phase"
* category[primaryDesign] -> "1.17.1 Resource.studyDesign.primaryDesign"
* category[studyTypeInterventional] -> "1.17.2.1 Resource.studyDesign.studyType.interventional"
* category[studyTypeNonInterventional] -> "1.17.2.2 Resource.studyDesign.studyType.nonInterventional"
* category[timePerspectives] -> "1.17.36.1 Resource.studyDesign.nonInterventional.timePerspectives"
* category[allocation] -> "1.17.37.3 Resource.studyDesign.interventional.allocation"
* category[samplingMethod] -> "1.17.20.1 Resource.studyDesign.sampling.method"
* category[samplingMethodProbability] -> "1.17.20.2 Resource.studyDesign.sampling.probabilityMethod"
* category[samplingMethodNonProbability] -> "1.17.20.3 Resource.studyDesign.sampling.nonProbabilityMethod"
* condition -> "1.17.3 Resource.studyDesign.studyConditions"
* condition.coding.extension[uri] -> "1.17.3.3 Resource.studyDesign.studyConditions.code"
* condition.coding.system -> "1.17.3.2 Resource.studyDesign.studyConditions.classification"
* condition.coding.code -> "1.17.3.3 Resource.studyDesign.studyConditions.code"
* condition.coding.display -> "1.17.3.1 Resource.studyDesign.studyConditions.label"
* condition.text -> "1.17.3.1 Resource.studyDesign.studyConditions.label"
* relatedArtifact[webpage] -> "1.9 Resource.webpage"
* keyword -> "1.7 Resource.keywords"
* keyword.coding.extension[URI] -> "1.7.2 Resource.keywords.code"
* keyword.coding.code -> "1.7.2 Resource.keywords.code"
* keyword.text -> "1.7.1 Resource.keywords.label"
* location[countries] -> "1.17.15 Resource.studyDesign.countries"
* location[regions] -> "1.17.16 Resource.studyDesign.region"
* description -> "1.5.1 Resource.descriptionEnglish.text"
* description.extension[translation] -> "1.6 Resource.descriptionNonEnglish"
* description.extension[translation].extension[lang] -> "1.6.2 Resource.descriptionNonEnglish.language"
* description.extension[translation].extension[content] -> "1.6.1 Resource.descriptionNonEnglish.text"
* description.extension[language] -> "1.5.2 Resource.descriptionEnglish.language"
* enrollment -> "1.17.23 Resource.studyDesign.eligibilityCriteria"
* period.start -> "1.17.13 Resource.studyDesign.studyStartDate"
* period.end -> "1.17.14 Resource.studyDesign.studyEndDate"
* reasonStopped.text -> "1.17.10 Resource.studyDesign.reasonStopped"
* note.text -> "1.17.33 Resource.studyDesign.comment"
* objective.name -> "1.17.29 Resource.studyDesign.hypothesis"

Invariant: core3
Description: "Cardinality: 1..1, if Resource.roles.nameType == 'Organisational'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[roles].extension[nameType].exists('Organizational (Qualitative Concept)') implies ResearchStudy.extension[roles].extension[party].where(resolve() is Organization)"

Invariant: core6
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Organisational'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[roles].extension[nameType].exists('Organizational (Qualitative Concept)') implies ResearchStudy.extension[roles].extension[roleOrganisational].exists()"

Invariant: core9
Description: "Cardinality: 0..*, if Resource.roles.organisational.type == ('Funder (public)' OR 'Funder (private)'); otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[roles].extension[roleOrganisational].exists('Public Funder' or 'Private Funder').not() implies ResearchStudy.extension[roles].extension[party].valueReference.where(reference=Organization).extension[fundingID].exists().not()"

Invariant: core12
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Personal'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[roles].extension[nameType].exists('Personal Attribute (Organism Attribute)') implies ResearchStudy.extension[roles].extension[party].where(resolve() is PractitionerRole)"

Invariant: core15
Description: "Cardinality: 1..1, if Resource.roles.nameType =='Personal'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[roles].extension[nameType].exists('Personal Attribute (Organism Attribute)') implies ResearchStudy.extension[roles].extension[rolePersonal].exists()"

Invariant: core20
Description: "Cardinality: 1..*, if Resource.studyDesign.primaryDesign == 'Interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Interventional Study (Research Study)').not() implies ResearchStudy.category[studyTypeInterventional].exists().not()"

Invariant: core21
Description: "Cardinality: 1..*, if Resource.studyDesign.primaryDesign == 'Non-interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Non-Interventional Study (Research Activity)').not() implies ResearchStudy.category[studyTypeNonInterventional].exists().not()"

Invariant: core22
Description: "Cardinality: 0..1, if Resource.studyDesign.studyType.nonInterventional == ('Longitudinal' OR 'Cohort' OR 'Case-cohort' OR 'Birth cohort' OR 'Trend' OR 'Panel'); otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[studyTypeNonInterventional].exists('Case-Control Studies (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Nested Case-Control Studies (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Case-only studies') OR ResearchStudy.category[studyTypeNonInterventional].exists('Observational Case-Crossover Study (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Ecologic or Community Based Study (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Family Study (Diagnostic Procedure)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Twin Studies as Topic (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Cross-Sectional Studies (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Cross-section ad-hoc follow-up studies') OR ResearchStudy.category[studyTypeNonInterventional].exists('time series study (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Quality control studies') OR ResearchStudy.category[studyTypeNonInterventional].exists('Patient Registry Study (Research Activity)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Other (Qualitative Concept)') OR ResearchStudy.category[studyTypeNonInterventional].exists('Unknown (Qualitative Concept)') implies ResearchStudy.extension[mortalityData].exists().not()"

Invariant: core23
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign == 'Interventional' AND Resource.studyDesign.status == ('At the planning stage' OR 'Ongoing (I): Recruitment ongoing, but data collection not yet started' OR 'Ongoing (II): Recruitment and data collection ongoing' OR 'Ongoing (III): Recruitment completed, but data collection ongoing' OR 'Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing'); otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Interventional Study (Research Study)').not() AND (ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Completed: Recruitment, data collection, and data quality management completed normally') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Other (Qualitative Concept)')) implies ResearchStudy.extension[studyStatus].extension[statusWhenIntervention].exists().not()"

Invariant: core24
Description: "Cardinality: 0..1, if Resource.studyDesign.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[studyStatus].extension[overallStatus].exists('At the planning stage') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Ongoing (I): Recruitment ongoing, but data collection not yet started') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Ongoing (II): Recruitment and data collection ongoing') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Ongoing (III): Recruitment completed, but data collection ongoing') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Completed: Recruitment, data collection, and data quality management completed normally') OR ResearchStudy.extension[studyStatus].extension[overallStatus].exists('Other (Qualitative Concept)') implies ResearchStudy.reasonStopped.exists().not()"

Invariant: core25
Description: "Cardinality: 0..1, if Resource.studyDesign.centers == 'Multicentric'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.site.extension[centers].extension[monoOrMulti].exists('Monocentric') implies ResearchStudy.site.extension[centers].extension[number].exists().not()"

Invariant: core26
Description: "Cardinality: 0..1, if Resource.studyDesign.sampling.method == 'Probability'; otherwise 0..0"
Severity: #error
Expression: "ResearchCategory.category[samplingMethod].exists('Non-Probability Sampling Method (Activity)') OR ResearchCategory.category[samplingMethod].exists('Mixed Probability and Non-Probability Sampling Method') OR ResearchCategory.category[samplingMethod].exists('Mixed Probability and Non-Probability Sampling Method') OR ResearchCategory.category[samplingMethod].exists('Total universe/Complete enumeration') OR ResearchCategory.category[samplingMethod].exists('Other (Qualitative Concept)') OR ResearchCategory.category[samplingMethod].exists('Unknown (Idea or Concept)') OR ResearchCategory.category[samplingMethod].exists('Not Applicable (Qualitative Concept)') implies ResearchCategory.category[samplingMethodProbability].exists().not()"

Invariant: core27
Description: "Cardinality: 0..1, if Resource.studyDesign.sampling.method == 'Non-probability'; otherwise 0..0"
Severity: #error
Expression: "ResearchCategory.category[samplingMethod].exists('Probability Sampling Method') OR ResearchCategory.category[samplingMethod].exists('Mixed Probability and Non-Probability Sampling Method') OR ResearchCategory.category[samplingMethod].exists('Mixed Probability and Non-Probability Sampling Method') OR ResearchCategory.category[samplingMethod].exists('Total universe/Complete enumeration') OR ResearchCategory.category[samplingMethod].exists('Other (Qualitative Concept)') OR ResearchCategory.category[samplingMethod].exists('Unknown (Idea or Concept)') OR ResearchCategory.category[samplingMethod].exists('Not Applicable (Qualitative Concept)') implies ResearchCategory.category[samplingMethodNonProbability].exists().not()"

Invariant: core28
Description: "Cardinality: 0..*, if Resource.studyDesign.dataSource.general == 'Biological samples'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[dataSource].extension[general].exists('Biospecimen (Body Substance)').not() implies ResearchStudy.extension[dataSource].extension[biosamples].exists().not()"

Invariant: core29
Description: "Cardinality: 0..*, if Resource.studyDesign.dataSource.general == 'Imaging data'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[dataSource].extension[general].exists('Imaging data').not() implies ResearchStudy.extension[dataSource].extension[imaging].exists().not()"

Invariant: core30
Description: "Cardinality: 0..*, if Resource.studyDesign.dataSource.general == 'Omics technology'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[dataSource].extension[general].exists('Omics technology').not() implies ResearchStudy.extension[dataSource].extension[omics].exists().not()"

Invariant: core31
Description: "Cardinality: 1..1, if study_primary_design =='Interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Non-Interventional Study (Research Activity)') implies ResearchStudy.extension[comparisonGroup].extension[type].exists().not()"

Invariant: core32
Description: "Cardinality: 1..1, if (Resource.studyDesign.studyOutcomes.title != Null OR Resource.studyDesign.studyOutcomes.description != Null); otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[outcomes].extension[titles].exists().not() OR ResearchStudy.extension[outcomes].extension[description].exists().not() implies ResearchStudy.extension[outcomes].extension[type].exists().not()"

Invariant: core33
Description: "Cardinality: 0..*, if Resource.studyDesign.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[dataSharingPlan].extension[generally].exists('No (qualifier value)') OR ResearchStudy.extension[dataSharingPlan].extension[generally].exists('Undecided (Intellectual Product)') implies ResearchStudy.extension[dataSharingPlan].extension[supportingInformation].exists().not()"

Invariant: core34
Description: "Cardinality: 0..*, if Resource.studyDesign.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[dataSharingPlan].extension[generally].exists('No (qualifier value)') OR ResearchStudy.extension[dataSharingPlan].extension[generally].exists('Undecided (Intellectual Product)') implies ResearchStudy.extension[dataSharingPlan].extension[timeFrame].exists().not()"

Invariant: core35
Description: "Cardinality: 0..*, if Resource.studyDesign.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[dataSharingPlan].extension[generally].exists('No (qualifier value)') OR ResearchStudy.extension[dataSharingPlan].extension[generally].exists('Undecided (Intellectual Product)') implies ResearchStudy.extension[dataSharingPlan].extension[accessCriteria].exists().not()"

Invariant: core36
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Non-interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Interventional Study (Research Study)') implies ResearchStudy.category[timePerspectives].exists().not()"

Invariant: core37
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Non-interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Interventional Study (Research Study)') implies ResearchStudy.extension[targetFollowupDuration].exists().not()"

Invariant: core38
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Non-interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Interventional Study (Research Study)') implies ResearchStudy.extension[biospecimen].exists().not()"

Invariant: core39
Description: "Cardinality: 0..1, if Resource.studyDesign.nonInterventional.biospecimenRetention != 'None retained'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[biospecimen].extension[retention].exists('Biospecimens Not Retained (Conceptual Entity)') implies ResearchStudy.extension[biospecimen].extension[description].exists().not()"

Invariant: core40
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Non-Interventional Study (Research Activity)') implies ResearchStudy.phase.exists().not()"

Invariant: core41
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Non-Interventional Study (Research Activity)') implies ResearchStudy.extension[masking].exists().not()"

Invariant: core42
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Non-Interventional Study (Research Activity)') implies ResearchStudy.category[allocation].exists().not()"

Invariant: core43
Description: "Cardinality: 0..1, if Resource.studyDesign.primaryDesign =='Interventional'; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.category[primaryDesign].exists('Non-Interventional Study (Research Activity)') implies ResearchStudy.extension[offLabelUse].exists().not()"

Invariant: core44
Description: "Cardinality: 0..*, if Resource.studyDesign.interventional.masking.general == true; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[masking].extension[general] = false implies ResearchStudy.extension[masking].extension[roles].exists().not()"

Invariant: core45
Description: "Cardinality: 0..1, if Resource.studyDesign.interventional.masking.general == true; otherwise 0..0"
Severity: #error
Expression: "ResearchStudy.extension[masking].extension[general] = false implies ResearchStudy.extension[masking].extension[description].exists().not()"

