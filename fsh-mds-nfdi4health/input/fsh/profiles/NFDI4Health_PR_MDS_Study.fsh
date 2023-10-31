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
* title.extension contains NFDI4Health_EX_MDS_Label named label 0..*
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
* category[primaryDesign] from NFDI4Health_VS_MDS_Study_Primary_Design_Local (required)
* category[primaryDesign] ^short = "Is it an interventional or non-interventional study?"
* category[primaryDesign] ^definition = "Non-interventional study design refers to a study that does not aim to alter study outcomes of interest.\r\nInterventional study design refers to a study that aims to alter study outcomes of interest."
* category[primaryDesign] ^comment = "Short input help: Select between non-interventional and interventional study design."
* category[primaryDesign] ^binding.description = "Value set defining codes for primary designs of studies in a ResearchStudy resource."
* category[primaryDesign].coding 0..1
* category[studyTypeInterventional] from NFDI4Health_VS_MDS_Study_Type_Interventional_Local (required)
* category[studyTypeInterventional] ^short = "Specification of study type"
* category[studyTypeInterventional] ^definition = "The strategy for assigning interventions to participants."
* category[studyTypeInterventional] ^comment = "Short input help: Select all that apply.\r\nIf \"Other\" is selected, you can specify the study type in the field \"Additional information about the study\"."
* category[studyTypeInterventional] ^binding.description = "Value set defining codes to specify the type of an interventional study in a ResearchStudy resource."
* category[studyTypeInterventional].coding 0..*
* category[studyTypeNonInterventional] from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_Local (required)
* category[studyTypeNonInterventional] ^short = "Specification of study type"
* category[studyTypeNonInterventional] ^definition = "The primary strategy for participant identification and follow-up."
* category[studyTypeNonInterventional] ^comment = "Short input help: Select all that apply.\r\nIf \"Other\" is selected, you can specify the study type in the field \"Additional information about the study\"."
* category[studyTypeNonInterventional] ^binding.description = "Value set defining codes to specify the type of a non interventional study in a ResearchStudy resource."
* category[studyTypeNonInterventional].coding 0..*
* category[timePerspectives] from NFDI4Health_VS_MDS_Study_Time_Perspectives_Local (required)
* category[timePerspectives] ^binding.description = "Value set defining codes to specify the time perspective of a study in a ResearchStudy resource."
* category[timePerspectives].coding 0..*
* category[allocation] from NFDI4Health_VS_MDS_Study_Allocation_Local (required)
* category[allocation] ^short = "Type of allocation of participants to an arm"
* category[allocation] ^definition = "Type of allocation/assignment of individual study participants to an arm."
* category[allocation] ^comment = "Short input help: Select one value from the list."
* category[allocation] ^binding.description = "Value set defining codes to specify the subject allocation in a study."
* category[allocation].coding 0..1
* category[samplingMethod] from NFDI4Health_VS_MDS_Study_Sampling_Method_Local (required)
* category[samplingMethod] ^short = "Applied sampling method"
* category[samplingMethod] ^definition = "Type of the sampling method applied for the selection of study participants."
* category[samplingMethod] ^comment = "Short Input Help: Select one value from the list."
* category[samplingMethod] ^binding.description = "Value set defining codes to specify types of sampling methods."
* category[samplingMethod].coding 0..1
* category[samplingMethodProbability] from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_Local (required)
* category[samplingMethodProbability] ^short = "Specific type of probability sampling"
* category[samplingMethodProbability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* category[samplingMethodProbability] ^comment = "Short Input Help: If known, select one value from the list."
* category[samplingMethodProbability] ^binding.description = "Value set defining codes to specify types of probability sampling methods."
* category[samplingMethodProbability].coding 0..1
* category[samplingMethodNonProbability] from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_Local (required)
* category[samplingMethodNonProbability] ^short = "Specific type of non-probability sampling"
* category[samplingMethodNonProbability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* category[samplingMethodNonProbability] ^comment = "Short Input Help: If known, select one value from the list."
* category[samplingMethodNonProbability] ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."
* category[samplingMethodNonProbability].coding 0..1
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
* relatedArtifact ..1
* relatedArtifact only NFDI4Health_PR_MDS_Related_Artifact_Resource
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
* location ^slicing.discriminator.type = #exists
* location ^slicing.discriminator.path = "coding"
* location ^slicing.rules = #open
* location ^comment = "Short input help: Select all that apply."
* location contains
    countries 1..* and
    regions 0..*
* location[countries] ^short = "Country(ies) where the study takes place"
* location[countries] ^definition = "Country or countries where the study takes place."
* location[countries] ^comment = "Additional information: Select all that apply."
* location[countries].coding 1..1
* location[countries] from NFDI4Health_VS_MDS_Countries_ISO (required)
* location[regions].coding 0..0
* location[regions].text 1..1
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
* description.extension[language].value[x] = $UMLS#C0376245 "English Language" (exactly)
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
* site 0..1
* site only Reference(NFDI4Health_PR_MDS_Centers)
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
* relatedArtifact -> "1.13 Resource.ids"
* relatedArtifact -> "1.14 Resource.idsNfdi4health"
* relatedArtifact -> "1.9 Resource.webpage"
* keyword -> "1.7 Resource.keywords"
* keyword.coding.extension[URI] -> "1.7.2 Resource.keywords.code"
* keyword.coding.code -> "1.7.2 Resource.keywords.code"
* keyword.text -> "1.7.1 Resource.keywords.label"
* location[countries] -> "1.17.15 Resource.studyDesign.countries"
* location[regions].text -> "1.17.16 Resource.studyDesign.region"
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



