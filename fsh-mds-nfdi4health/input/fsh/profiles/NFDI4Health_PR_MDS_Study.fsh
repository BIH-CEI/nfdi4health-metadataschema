Profile: NFDI4Health_PR_MDS_Study
Parent: ResearchStudy
Id: nfdi4health-pr-mds-study
Title: "NFDI4Health PR MDS Study"
Description: "Profile to collect information about german (or with at least one study center in Germany) clinical, epidemiological or Public health studies that were uploaded in NFDI4Health."
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
    NFDI4Health_EX_MDS_Execution_Language named executionLanguage 0..* and
    NFDI4Health_EX_MDS_Descriptions named descritpions 1..1 and
    NFDI4Health_EX_MDS_Groups_Of_Diseases named groupsOfDiseases 1..1 and
    NFDI4Health_EX_MDS_Mortality_Data named mortalityData 0..1 and
    NFDI4Health_EX_MDS_Study_Ethics_Committee_Approval named studyEthicsCommitteeApproval 0..1 and
    NFDI4Health_EX_MDS_Study_Status named studyStatus 1..1 and
    NFDI4Health_EX_MDS_Subject named subject 1..1 and
    NFDI4Health_EX_MDS_Data_Source named dataSource 0..1 and
    NFDI4Health_EX_MDS_Eligibility_Criteria_Inclusion_Criteria named inclusionCriteria 0..1 and
    NFDI4Health_EX_MDS_Eligibility_Criteria_Exclusion_Criteria named exclusionCriteria 0..1 and
    NFDI4Health_EX_MDS_Study_Comparison_Group named comparisonGroup 0..* and
    NFDI4Health_EX_MDS_Outcomes named outcomes 0..* and
    NFDI4Health_EX_MDS_Assessments named assessments 0..* and
    NFDI4Health_EX_MDS_Study_Population named population 0..1 and
    NFDI4Health_EX_MDS_Data_Sharing_Plan named dataSharingPlan 1..1 and
    NFDI4Health_EX_MDS_Study_Target_Followup_Duration named targetFollowupDuration 0..1 and
    NFDI4Health_EX_MDS_Biospecimen named biospecimen 0..1 and
    NFDI4Health_EX_MDS_Off_Label_Use named offLabelUse 0..1 and
    NFDI4Health_EX_MDS_Study_Masking named masking 0..1
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
* status = #active (exactly)
* status ^comment = "The item does not exist in NFDI4Health' MDS. Fixed to 'active' for all studies."
* primaryPurposeType from NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI (required)
* primaryPurposeType ^short = "Primary purpose of the [RESOURCE]"
* primaryPurposeType ^definition = "Specification of the main purpose of the [RESOURCE]."
* primaryPurposeType ^comment = "Additional Information: The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be selected. | Short Input Help: Foremost for interventional studies, please specify the primary purpose why the [RESOURCE] was conducted. For non-interventional studies, this field may be 'Not applicable' as multiple purposes may be defined as primary ones."
* primaryPurposeType ^binding.description = "Value set defining codes to specify the primary purpose of a (sub-)study in a ResearchStudy resource."
* primaryPurposeType.coding 1..1
* primaryPurposeType.coding.system 1..
* primaryPurposeType.coding.code 1..
* phase from NFDI4Health_VS_MDS_Study_Phase_NCI (required)
* phase ^short = "Numerical phase"
* phase ^definition = "If applicable, numerical phase of the [RESOURCE]."
* phase ^comment = "Short input help: Select one value from the list."
* phase ^binding.description = "Value set defining codes to specify the phase of a (sub-)study in a ResearchStudy resource."
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
* category[primaryDesign] from NFDI4Health_VS_MDS_Study_Primary_Design_NCI (required)
* category[primaryDesign] ^short = "Is it an interventional or non-interventional [RESOURCE]?"
* category[primaryDesign] ^definition = "Non-interventional design refers to a [RESOURCE] that does not aim to alter its outcomes of interest. Interventional design refers to a [RESOURCE] that aims to alter its outcomes of interest."
* category[primaryDesign] ^comment = "Short input help: Select between non-interventional and interventional design for the given [RESOURCE]."
* category[primaryDesign] ^binding.description = "Value set defining codes for primary designs of (sub-)studies in a ResearchStudy resource."
* category[primaryDesign].coding 0..1
* category[studyTypeInterventional] from NFDI4Health_VS_MDS_Study_Type_Interventional_NCI (required)
* category[studyTypeInterventional] ^short = "Interventional [RESOURCE] type"
* category[studyTypeInterventional] ^definition = "The strategy for assigning interventions to participants."
* category[studyTypeInterventional] ^comment = "Short input help: Select all that apply. If 'Other' is selected, please specify the type of the [RESOURCE] in the field 'Additional information about the [RESOURCE]'."
* category[studyTypeInterventional] ^binding.description = "Value set defining codes to specify the type of an interventional (sub-)study in a ResearchStudy resource."
* category[studyTypeInterventional].coding 0..*
* category[studyTypeNonInterventional] from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_NCI_MSH_Local (required)
* category[studyTypeNonInterventional] ^short = "Non-interventional [RESOURCE] type"
* category[studyTypeNonInterventional] ^definition = "The primary strategy for participant identification and follow-up."
* category[studyTypeNonInterventional] ^comment = "Short input help: Select all that apply. If 'Other' is selected, please specify the type of the [RESOURCE] in the field 'Additional information about the [RESOURCE]'."
* category[studyTypeNonInterventional] ^binding.description = "Value set defining codes to specify the type of a non interventional (sub-)study in a ResearchStudy resource."
* category[studyTypeNonInterventional].coding 0..*
* category[timePerspectives] from NFDI4Health_VS_MDS_Study_Time_Perspectives_NCI (required)
* category[timePerspectives] ^short = "Temporal design"
* category[timePerspectives] ^definition = "Temporal design of the [RESOURCE], i.e. the observation period in relation to the time of participant enrollment."
* category[timePerspectives] ^comment = "Short input help: Is it a retrospective, prospective or cross-sectional [RESOURCE]?"
* category[timePerspectives] ^binding.description = "Value set defining codes to specify the time perspective of a (sub-)study in a ResearchStudy resource."
* category[timePerspectives].coding 0..*
* category[allocation] from NFDI4Health_VS_MDS_Study_Allocation_NCI (required)
* category[allocation] ^short = "Type of allocation of participants to an arm"
* category[allocation] ^definition = "Type of allocation/assignment of individual participants of the [RESOURCE] to an arm."
* category[allocation] ^comment = "Short input help: Select one value from the list."
* category[allocation] ^binding.description = "Value set defining codes to specify the subject allocation in a (sub-)study in a ResearchStudy resource."
* category[allocation].coding 0..1
* category[samplingMethod] from NFDI4Health_VS_MDS_Study_Sampling_Method_NCI_Local (required)
* category[samplingMethod] ^short = "Applied sampling method"
* category[samplingMethod] ^definition = "Type of the sampling method applied for the selection of [RESOURCE] participants."
* category[samplingMethod] ^comment = "Short Input Help: Select one value from the list."
* category[samplingMethod] ^binding.description = "Value set defining codes to specify types of sampling methods."
* category[samplingMethod].coding 0..1
* category[samplingMethodProbability] from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI_Local (required)
* category[samplingMethodProbability] ^short = "Specific type of probability sampling"
* category[samplingMethodProbability] ^definition = "Specific type of the probability sampling method applied for the selection of [RESOURCE] participants."
* category[samplingMethodProbability] ^comment = "Short Input Help: If known, select one value from the list."
* category[samplingMethodProbability] ^binding.description = "Value set defining codes to specify types of probability sampling methods."
* category[samplingMethodProbability].coding 0..1
* category[samplingMethodNonProbability] from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_NCI_Local (required)
* category[samplingMethodNonProbability] ^short = "Specific type of non-probability sampling"
* category[samplingMethodNonProbability] ^definition = "Specific type of the non-probability sampling method applied for the selection of [RESOURCE] participants."
* category[samplingMethodNonProbability] ^comment = "Short Input Help: If known, select one value from the list."
* category[samplingMethodNonProbability] ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."
* category[samplingMethodNonProbability].coding 0..1
* condition ^short = "Primary health condition(s) or disease(s) considered in the [RESOURCE]"
* condition ^definition = "Group of items providing information about primary health condition(s) or disease(s) considered in the [RESOURCE]."
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
* condition.coding.code ^definition = "Code of the health condition, disease, focus in the terminology/classification used."
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
* keyword ^definition = "Group of items providing information about keywords describing the [RESOURCE]."
* keyword ^comment = "Additional information: The findability of the [RESOURCE] can be significantly increased if proper keywords are stated."
* keyword.coding ..1
* keyword.coding.system 1..1
* keyword.coding.system ^short = "Code of the keyword"
* keyword.coding.system ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding.system ^comment = "Short input help: If found, the code from the classification/vocabulary used."
* keyword.coding.system ^example.valueUri = http://id.nlm.nih.gov/mesh/D000086402
* keyword.text 1..1 
* keyword.text ^short = "label"
* keyword.text ^definition = "Keyword(s) describing the [RESOURCE]."
* keyword.text ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. SNOMED CT, MeSH, UMLS) is preferred. However, also self-assigned keywords are allowed. | Short input help: Preferably, use terms from SNOMED CT or MESH."
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
* note.text ^short = "Additional information about the [RESOURCE]"
* note.text ^definition = "Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields.."
* note.text ^comment = "Short input help: You can provide here specific aspects of the [RESOURCE] that could not be captured by other fields."
* arm ..0
* objective ..*
* objective.name 1..
* objective.name ^short = "Research questions/hypotheses"
* objective.name ^definition = "Statement of the research questions and/or hypotheses underlying the [RESOURCE]."

Mapping: NFDI4Health-Study-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Study

* identifier -> "Resource.idsAlternative"
* identifier[DRKS] -> "1.11 Resource.idsAlternative"
* identifier[DRKS].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[NCT] -> "1.11 Resource.idsAlternative"
* identifier[NCT].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[ISRCTN] -> "1.11 Resource.idsAlternative"
* identifier[ISRCTN].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[EudraCT] -> "1.11 Resource.idsAlternative"
* identifier[EudraCT].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[EUDAMED] -> "1.11 Resource.idsAlternative"
* identifier[EUDAMED].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[UTN] -> "1.11 Resource.idsAlternative"
* identifier[UTN].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[KonsortSWD] -> "1.11 Resource.idsAlternative"
* identifier[KonsortSWD].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = KonsortSWD"
* identifier[KonsortSWD].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = KonsortSWD"
* identifier[KonsortSWD].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[MDMPortal] -> "1.11 Resource.idsAlternative"
* identifier[MDMPortal].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].value -> "1.11.2 Resource.idsAlternative.identifier"
* identifier[Other] -> "1.11 Resource.idsAlternative"
* identifier[Other].system -> "1.11.1 Resource.idsAlternative.scheme" "Type = Other"
* identifier[Other].type -> "1.11.1 Resource.idsAlternative.scheme" "Type = Other"
* identifier[Other].value -> "1.11.2 Resource.idsAlternative.identifier"
* primaryPurposeType -> "1.17.15 Design.primaryPurpose"
* phase -> "1.17.28.1 Design.interventional.phase"
* category[primaryDesign] -> "1.17.1 Design.primaryDesign"
* category[studyTypeInterventional] -> "1.17.2.1 Design.studyType.interventional"
* category[studyTypeNonInterventional] -> "1.17.2.2 Design.nonInterventional"
* category[timePerspectives] -> "1.17.27.1 Design.nonInterventional.timePerspectives"
* category[allocation] -> "1.17.28.3 Design.interventional.allocation"
* category[samplingMethod] -> "1.17.13.1 Design.sampling.method"
* category[samplingMethodProbability] -> "1.17.13.2	Design.sampling.probabilityMethod"
* category[samplingMethodNonProbability] -> "1.17.13.3 Design.sampling.nonProbabilityMethod"
* condition -> "1.17.3 Design.conditions"
* condition.coding.extension[uri] -> "1.17.3.3 Resource.studyDesign.studyConditions.code"
* condition.coding.system -> "1.17.3.2 Resource.studyDesign.studyConditions.classification"
* condition.coding.code -> "1.17.3.3 Resource.studyDesign.studyConditions.code"
* condition.coding.display -> "1.17.3.1 Resource.studyDesign.studyConditions.label"
* condition.text -> "1.17.3.1 Resource.studyDesign.studyConditions.label"
* relatedArtifact -> "1.13 Resource.ids"
* relatedArtifact -> "1.14 Resource.idsNfdi4health"
* relatedArtifact -> "1.9 Resource.webpage"
* keyword -> "1.6 Resource.keywords"
* keyword.coding.system -> "1.6.2 Resource.keywords.code"
* keyword.text -> "1.6.1 Resource.keywords.label"
* location[countries] -> "1.17.15 Resource.studyDesign.countries"
* location[regions].text -> "1.17.16 Resource.studyDesign.region"
* extension[descritpions] -> "Resource.descriptions"
* enrollment -> "1.17.23 Resource.studyDesign.eligibilityCriteria"
* period.start -> "1.17.13 Resource.studyDesign.studyStartDate"
* period.end -> "1.17.14 Resource.studyDesign.studyEndDate"
* reasonStopped.text -> "1.17.10 Resource.studyDesign.reasonStopped"
* note.text -> "1.17.24 Design.comment"
* objective.name -> "1.17.18 Design.hypotheses"