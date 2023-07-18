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
* language 1..
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Execution_Language named executionLanguage 0..* and
    NFDI4Health_EX_MDS_Label named label 0..* and
    NFDI4Health_EX_MDS_Associated_Party named roles 1..* and
    NFDI4Health_EX_MDS_Nutritional_Data named nutritionalData 1..* and
    NFDI4Health_EX_MDS_Chronic_Diseases named chronicDiseases 1..* and
    NFDI4Health_EX_MDS_Study_Groups_Of_Diseases named studyGroupsOfDiseases 1..* and
    NFDI4Health_EX_MDS_Mortality_Data named mortalityData 0..* and
    NFDI4Health_EX_MDS_Study_Ethics_Committee_Approval named studyEthicsCommitteeApproval 0..* and
    NFDI4Health_EX_MDS_Study_Status named studyStatus 1..* and
    NFDI4Health_EX_MDS_Study_Subject named subject 1..* and
    NFDI4Health_EX_MDS_Study_Data_Source named dataSource 0..* and
    NFDI4Health_EX_MDS_Study_Eligibility_Criteria_Inclusion_Criteria named inclusionCriteria 0..* and
    NFDI4Health_EX_MDS_Study_Eligibility_Criteria_Exclusion_Criteria named exclusionCriteria 0..* and
    NFDI4Health_EX_MDS_Study_Comparison_Group named comparisonGroup 0..* and
    NFDI4Health_EX_MDS_Study_Outcomes named outcomes 0..* and
    NFDI4Health_EX_MDS_Study_Assessments named assessments 0..* and
    NFDI4Health_EX_MDS_Study_Population named population 0..* and
    NFDI4Health_EX_MDS_Study_Data_Sharing_Plan named dataSharingPlan 1..* and
    NFDI4Health_EX_MDS_Study_Target_Followup_Duration named targetFollowupDuration 0..1 and
    NFDI4Health_EX_MDS_Study_Biospecimen named biospecimen 0..* and
    NFDI4Health_EX_MDS_Off_Label_Use named offLabelUse 0..* and
    NFDI4Health_EX_MDS_Study_Masking named masking 0..1
* extension[executionLanguage] ^short = "Execution language(s) of the [RESOURCE]"
* extension[executionLanguage] ^definition = "Language(s) in which a study/substudy is conducted, or a language in which a study document is composed."
* extension[executionLanguage] ^comment = "Short input help: Select all that apply."
* extension[executionLanguage] ^min = 0
* extension[executionLanguage] ^isModifier = false
* extension[label] ^min = 0
* extension[label] ^isModifier = false
* extension[roles] ^comment = "Additional information: For each resource, there may be multiple roles, but at least one person, group of persons or institution/organisation must be specified."
* extension[roles] ^isModifier = false
* extension[nutritionalData] ^short = "Nutritional data collected?"
* extension[nutritionalData] ^definition = "Indication whether nutritional data was collected by the resource."
* extension[nutritionalData] ^isModifier = false
* extension[chronicDiseases] ^short = "Chronic diseases included?"
* extension[chronicDiseases] ^definition = "Indication whether chronic diseases were addressed by the resource."
* extension[chronicDiseases] ^isModifier = false
* extension[studyGroupsOfDiseases] ^isModifier = false
* extension[studyGroupsOfDiseases].extension 1..
* extension[studyGroupsOfDiseases].extension ^slicing.discriminator.type = #value
* extension[studyGroupsOfDiseases].extension ^slicing.discriminator.path = "url"
* extension[studyGroupsOfDiseases].extension ^slicing.rules = #open
* extension[studyGroupsOfDiseases].extension[generally] from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD11_UMLS (required)
* extension[studyGroupsOfDiseases].extension[generally] ^sliceName = "generally"
* extension[studyGroupsOfDiseases].extension[generally] ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 11th Revision (ICD-11). | Short input help: Select all that apply. For more information about the groups of diseases/conditions, visit the WHO's ICD-11 homepage: https://icd.who.int/en."
* extension[studyGroupsOfDiseases].extension[generally] ^binding.description = "Value set defining codes to specify groups of diseases or conditions on which the data were collected in the study."
* extension[studyGroupsOfDiseases].extension[generally].value[x].coding.system 1..
* extension[studyGroupsOfDiseases].extension[generally].value[x].coding.code 1..
* extension[studyGroupsOfDiseases].extension[conditions] ^sliceName = "conditions"
* extension[studyGroupsOfDiseases].extension[conditions] ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 11th Revision (ICD-11). | Short input help: For more information about the groups of diseases/conditions, visit the WHO's ICD-11 homepage: https://icd.who.int/en."
* extension[studyGroupsOfDiseases].extension[conditions] ^min = 0
* extension[mortalityData] from NFDI4Health_VS_MDS_Mortality_Data_NCI_SNOMEDCT (required)
* extension[mortalityData] ^min = 0
* extension[mortalityData] ^isModifier = false
* extension[mortalityData] ^binding.description = "Value set defining codes to specify if mortality data were collected in a study."
* extension[mortalityData].value[x].system 1..
* extension[studyEthicsCommitteeApproval] ^definition = "Status of the study approval from the (leading) ethics committee."
* extension[studyEthicsCommitteeApproval] ^min = 0
* extension[studyEthicsCommitteeApproval] ^isModifier = false
* extension[studyEthicsCommitteeApproval].value[x].system 1..
* extension[studyStatus] ^isModifier = false
* extension[studyStatus].extension 1..
* extension[studyStatus].extension ^slicing.discriminator.type = #value
* extension[studyStatus].extension ^slicing.discriminator.path = "url"
* extension[studyStatus].extension ^slicing.rules = #open
* extension[studyStatus].extension[overallStatus] ^sliceName = "overallStatus"
* extension[studyStatus].extension[overallStatus] ^comment = "Additional information: If at least one study site in a multicenter study has the status 'Ongoing', then the overall status for the study must be 'Ongoing'. | Short input help: Select one value from the list."
* extension[studyStatus].extension[statusWhenIntervention] ^sliceName = "statusWhenIntervention"
* extension[studyStatus].extension[statusWhenIntervention] ^comment = "Short input help: Select one value from the list."
* extension[studyStatus].extension[statusWhenIntervention] ^min = 0
* extension[studyStatus].extension[recruitmentStatusRegister] ^sliceName = "recruitmentStatusRegister"
* extension[studyStatus].extension[recruitmentStatusRegister] ^comment = "Additional information: The item applies only to studies automatically uploaded from the registers of clinical trials."
* extension[studyStatus].extension[recruitmentStatusRegister] ^min = 0
* extension[subject] ^comment = "Short input help: Select one value from the list."
* extension[subject] ^isModifier = false
* extension[dataSource] ^min = 0
* extension[dataSource] ^isModifier = false
* extension[dataSource].extension ^slicing.discriminator.type = #value
* extension[dataSource].extension ^slicing.discriminator.path = "url"
* extension[dataSource].extension ^slicing.rules = #open
* extension[dataSource].extension ^min = 0
* extension[dataSource].extension[general] ^sliceName = "general"
* extension[dataSource].extension[general] ^comment = "Short input help: Select all that apply."
* extension[dataSource].extension[general] ^min = 0
* extension[dataSource].extension[description] ^sliceName = "description"
* extension[dataSource].extension[description] ^comment = "Short input help: E.g., indication of the data source(s) not listed in the field „Data sources for the study” or more detailed description of the selected data sources."
* extension[dataSource].extension[description] ^min = 0
* extension[inclusionCriteria] ^comment = "Short input help: If possible, use an enumerated or bulleted list for each criterion."
* extension[inclusionCriteria] ^min = 0
* extension[inclusionCriteria] ^isModifier = false
* extension[exclusionCriteria] ^comment = "Short input help: If possible, use an enumerated or bulleted list for each criterion."
* extension[exclusionCriteria] ^min = 0
* extension[exclusionCriteria] ^isModifier = false
* extension[comparisonGroup] ^short = "Additional information about the arm/group"
* extension[comparisonGroup] ^definition = "Additional descriptive information about the given arm/group."
* extension[comparisonGroup] ^comment = "Additional information:\r\nFor interventional studies: If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the clinical trial.\r\nFor non-interventional studies: Explanation of the nature of the study group (for example, those with a condition and those without a condition; those with an exposure and those without an exposure).\r\n\r\nExtension based on R5"
* extension[comparisonGroup] ^min = 0
* extension[comparisonGroup] ^isModifier = false
* extension[comparisonGroup].extension ^slicing.discriminator.type = #value
* extension[comparisonGroup].extension ^slicing.discriminator.path = "url"
* extension[comparisonGroup].extension ^slicing.rules = #open
* extension[comparisonGroup].extension[intendedExposure] ^sliceName = "intendedExposure"
* extension[comparisonGroup].extension[intendedExposure] ^min = 0
* extension[comparisonGroup].extension[intendedExposure].value[x] only Reference(NFDI4Health_PR_MDS_Evidence_Variable_Intervention_Exposure)
* extension[outcomes] ^comment = "Additional information: The items are optional for non-interventional studies.\r\n\r\nExtension based on R5"
* extension[outcomes] ^min = 0
* extension[outcomes] ^isModifier = false
* extension[outcomes].extension 1..
* extension[outcomes].extension ^slicing.discriminator.type = #value
* extension[outcomes].extension ^slicing.discriminator.path = "url"
* extension[outcomes].extension ^slicing.rules = #open
* extension[outcomes].extension[name] ^sliceName = "name"
* extension[outcomes].extension[name] ^min = 0
* extension[outcomes].extension[name].value[x] 1..
* extension[outcomes].extension[description] ^sliceName = "description"
* extension[outcomes].extension[description] ^min = 0
* extension[outcomes].extension[description].value[x] 1..
* extension[outcomes].extension[timeFrame] ^sliceName = "timeFrame"
* extension[outcomes].extension[timeFrame] ^min = 0
* extension[outcomes].extension[timeFrame].value[x] 1..
* extension[assessments] ^min = 0
* extension[assessments] ^isModifier = false
* extension[population] ^comment = "Short input help: Any information important for the given study population can be specified here."
* extension[population] ^min = 0
* extension[population] ^isModifier = false
* extension[dataSharingPlan] ^isModifier = false
* extension[targetFollowupDuration] ^comment = "Short input help: The value must be provided in years."
* extension[targetFollowupDuration] ^isModifier = false
* extension[targetFollowupDuration].value[x].system 1..
* extension[targetFollowupDuration].value[x].system = "http://unitsofmeasure.org" (exactly)
* extension[targetFollowupDuration].value[x].code ^binding.description = "a"
* extension[biospecimen] ^min = 0
* extension[biospecimen] ^isModifier = false
* extension[offLabelUse] ^comment = "Short input help: Select \"Yes\" or \"No\" only for drug studies and \"Not applicable” for all other studies."
* extension[offLabelUse] ^min = 0
* extension[offLabelUse] ^isModifier = false
* extension[masking] ^short = "Information about masking of intervention(s) assignment"
* extension[masking] ^definition = "Group of items providing information about the masking of intervention(s) assignment."
* extension[masking] ^isModifier = false
* extension[masking].extension ^slicing.discriminator.type = #value
* extension[masking].extension ^slicing.discriminator.path = "url"
* extension[masking].extension ^slicing.rules = #open
* extension[masking].extension ^min = 0
* extension[masking].extension[roles] ^sliceName = "roles"
* extension[masking].extension[roles] ^min = 0
* extension[masking].extension[description] ^sliceName = "description"
* extension[masking].extension[description] ^min = 0
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
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
* identifier[NFDI4Health] ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
* identifier[NFDI4Health] ^comment = "The identifier is assigned automatically."
* identifier[NFDI4Health].use 1..
* identifier[NFDI4Health].use = #official (exactly)
* identifier[NFDI4Health].system 1..
* identifier[NFDI4Health].system = "https://www.nfdi4health.de/" (exactly)
* identifier[NFDI4Health].value 1..
* identifier[DRKS] ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* identifier[DRKS].system 1..
* identifier[DRKS].system = "https://www.drks.de" (exactly)
* identifier[DRKS].system ^definition = "Name of the system where the given resource is already registered. Fixed to DRKS."
* identifier[DRKS].value 1..
* identifier[DRKS].value ^definition = "Identifier (ID) assigned to the given resource by DRKS."
* identifier[NCT].system 1..
* identifier[NCT].system = "https://www.clinicaltrials.gov/" (exactly)
* identifier[NCT].system ^definition = "Name of the system where the given resource is already registered. Fixed to NCT (CT.gov)."
* identifier[NCT].value 1..
* identifier[NCT].value ^definition = "Identifier (ID) assigned to the given resource by ClinicalTrials.gov."
* identifier[ISRCTN].system 1..
* identifier[ISRCTN].system = "https://www.isrctn.com/" (exactly)
* identifier[ISRCTN].system ^definition = "Name of the system where the given resource is already registered. Fixed to ISRCTN."
* identifier[ISRCTN].value 1..
* identifier[ISRCTN].value ^definition = "Identifier (ID) assigned to the given resource by ISRCTN."
* identifier[EudraCT].system 1..
* identifier[EudraCT].system = "https://eudract.ema.europa.eu/results-web/index.xhtml" (exactly)
* identifier[EudraCT].system ^definition = "Name of the system where the given resource is already registered. Fixed to EudraCT."
* identifier[EudraCT].value 1..
* identifier[EUDAMED].system 1..
* identifier[EUDAMED].system = "https://ec.europa.eu/tools/eudamed/#/screen/home" (exactly)
* identifier[EUDAMED].system ^definition = "Name of the system where the given resource is already registered. Fixed to EUDAMED."
* identifier[EUDAMED].value 1..
* identifier[EUDAMED].value ^definition = "Identifier (ID) assigned to the given resource by EUDAMED."
* identifier[UTN].system 1..
* identifier[UTN].system = "http://www.who.int/ictrp/unam-" (exactly)
* identifier[UTN].system ^definition = "Name of the system where the given resource is already registered. Fixed to UTN (WHO)."
* identifier[UTN].value 1..
* identifier[KonsortSWD].system 1..
* identifier[KonsortSWD].system = "https://www.konsortswd.de/" (exactly)
* identifier[KonsortSWD].system ^definition = "Name of the system where the given resource is already registered. Fixed to KonsortSWD."
* identifier[KonsortSWD].value 1..
* identifier[KonsortSWD].value ^definition = "Identifier (ID) assigned to the given resource by KonsortSWD."
* identifier[MDMPortal].system 1..
* identifier[MDMPortal].system = "https://www.mdm-portal.de/" (exactly)
* identifier[MDMPortal].system ^definition = "Name of the system where the given resource is already registered. Fixed to MDM Portal."
* identifier[MDMPortal].value 1..
* identifier[MDMPortal].value ^definition = "Identifier (ID) assigned to the given resource by MDM Portal."
* identifier[Other] ^short = "Identifier"
* identifier[Other] ^definition = "Identifier (ID) assigned to the given resource by another registering system, e.g. by a register of clinical trials or a data repository."
* identifier[Other].type 1..
* identifier[Other].system ^definition = "Type/name of the system where the given resource is already registered."
* identifier[Other].value 1..
* identifier[Other].value ^definition = "Identifier (ID) assigned to the given resource by another registering system, e.g. by a register of clinical trials or a data repository."
* identifier[Other].value ^example[0].label = "DRKS Identifier"
* identifier[Other].value ^example[=].valueString = "DRKS00021273"
* identifier[Other].value ^example[+].label = "NCT Identifier"
* identifier[Other].value ^example[=].valueString = "NCT04327505"
* title 1..
* title ^short = "Title/name"
* title ^definition = "Scientific unabbreviated title or name of the resource."
* title ^comment = "Additional information: If no official title/name has been defined yet, please provide a title/name that is suitable for public display. | Short input help: Please provide at least one title/name of the resource. If the original title is not in English, please also provide an English translation of the original title."
* title.extension ^slicing.discriminator.type = #value
* title.extension ^slicing.discriminator.path = "url"
* title.extension ^slicing.rules = #open
* title.extension[translation] only Translation
* title.extension[translation] ^sliceName = "translation"
* title.extension[translation] ^short = "Language translation of the title"
* title.extension[translation] ^definition = "Language of the title if it is not the base language of the resource."
* title.extension[translation] ^min = 0
* title.extension[translation] ^isModifier = false
* title.extension[translation].extension ^slicing.discriminator.type = #value
* title.extension[translation].extension ^slicing.discriminator.path = "url"
* title.extension[translation].extension ^slicing.rules = #open
* title.extension[translation].extension[lang] ^sliceName = "lang"
* title.extension[translation].extension[lang] ^short = "Language of the title/name"
* title.extension[translation].extension[lang] ^definition = "Language of the title/name."
* title.extension[translation].extension[lang].value[x] ^binding.strength = #required
* title.extension[translation].extension[lang].value[x] ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* title.extension[translation].extension[content] ^sliceName = "content"
* title.extension[translation].extension[content] ^short = "Title in another language"
* title.extension[translation].extension[content] ^definition = "Title in another language than the base language of the resource."
* title.extension[translation].extension[content].value[x] only string
* title.extension contains NFDI4Health_EX_MDS_Language named language 1..1
* title.extension[language] from CommonLanguages (required)
* title.extension[language] ^short = "Language of the title/name"
* title.extension[language] ^definition = "Language of the title/name"
* title.extension[language] ^isModifier = false
* title.extension[language] ^binding.description = "This value set includes common codes from BCP-47 (http://tools.ietf.org/html/bcp47)"
* status = #active (exactly)
* status ^comment = "The item does not exist in NFDI4Health' MDS. Fixed to \"active\" for all studies."
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
    studyTypeInterventional 1..* and
    studyTypeNonInterventional 1..* and
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
* category[studyTypeNonInterventional] ^comment = "Select all that apply.\r\nIf \"Other\" is selected, you can specify the study type in the field \"Additional information about the study\"."
* category[studyTypeNonInterventional] ^binding.description = "Value set defining codes to specify the type of a non interventional study in a ResearchStudy resource."
* category[studyTypeNonInterventional].coding 1..1
* category[studyTypeNonInterventional].coding.system 1..
* category[studyTypeNonInterventional].coding.code 1..
* category[timePerspectives] from NFDI4Health_VS_MDS_Study_Time_Perspectives_UMLS (required)
* category[timePerspectives] ^binding.description = "Value set defining codes to specify the time perspective of a study in a ResearchStudy resource."
* category[timePerspectives].coding 1..1
* category[timePerspectives].coding.system 1..
* category[timePerspectives].coding.code 1..
* category[allocation] from NFDI4Health_VS_MDS_Study_Allocation_UMLS_SNOMEDCT (required)
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
* condition.coding.extension ^min = 0
* condition.coding.extension contains NFDI4Health_EX_MDS_URI named uri 0..1
* condition.coding.extension[uri] ^short = "Code ---- If known, code of the health condition, disease or focus in the terminology/classification used"
* condition.coding.extension[uri] ^definition = "Code of the health condition,  disease, focus in the terminology/classification used."
* condition.coding.extension[uri] ^comment = "Short input help: If found, the code from the terminology/classification used."
* condition.coding.extension[uri] ^isModifier = false
* condition.coding.system 1..
* condition.coding.system ^short = "Terminology/classification"
* condition.coding.system ^definition = "Terminology/classification used for the health condition, diesease or focus."
* condition.coding.system ^comment = "If used, name of the terminology/classification."
* condition.coding.code ^short = "Code"
* condition.coding.code ^definition = "Code of the health condition,  disease, focus in the terminology/classification used."
* condition.coding.code ^comment = "If found, the code from the terminology/classification used."
* condition.coding.display 1..
* condition.coding.display ^short = "Name of the primary health condition, disease or focus of the study"
* condition.coding.display ^definition = "Name of primary health condition or disease considered in the study, or the focus of the study (e.g. medication, food, therapy, device, etc.)."
* condition.coding.display ^comment = "The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. | Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* condition.text 1..
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
* relatedArtifact[NFDI4HealthResource] ^short = "Related (sub-)studies, study documents, etc. registered on this portal"
* relatedArtifact[NFDI4HealthResource] ^definition = "Group of items providing information about related resources registered on this portal."
* relatedArtifact[NFDI4HealthResource] ^comment = "Short input help: Does the [RESOURCE] have any related resources registered on this portal?"
* keyword ^short = "Keyword(s) describing the [RESOURCE]"
* keyword ^definition = "Group of items providing information about keywords describing the resource."
* keyword ^comment = "Additional information: The findability of the resource can be significantly increased if proper keywords are stated."
* keyword.coding ..1
* keyword.coding ^short = "Code of the keyword"
* keyword.coding ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding ^comment = "If found, the code from the classification/vocabulary used."
* keyword.coding.extension ^slicing.discriminator.type = #value
* keyword.coding.extension ^slicing.discriminator.path = "url"
* keyword.coding.extension ^slicing.rules = #open
* keyword.coding.extension contains NFDI4Health_EX_MDS_URI named URI 1..1
* keyword.coding.extension[URI] ^short = "Code of the keyword"
* keyword.coding.extension[URI] ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding.extension[URI] ^comment = "Short input help: If found, the code from the classification/vocabulary used."
* keyword.coding.extension[URI] ^isModifier = false
* keyword.coding.code ^short = "Code of the keyword"
* keyword.coding.code ^definition = "If known, the code of the keyword in a classification/vocabulary."
* keyword.coding.code ^comment = "Short input help: If found, the code from the classification/vocabulary used."
* keyword.coding.code ^example[0].label = "Keyword URI"
* keyword.coding.code ^example[=].valueCode = #http://id.nlm.nih.gov/mesh/D000086402
* keyword.text 1..
* keyword.text ^short = "Keyword"
* keyword.text ^definition = "Keyword(s) describing the resource."
* keyword.text ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. MeSH, UMLS, SNOMED CT) is preferred. However, also self-assigned keywords are allowed. | Short input help: Preferably, use terms from MeSH (https://meshb.nlm.nih.gov/search) or UMLS (https://uts.nlm.nih.gov/uts/umls/home)."
* keyword.text ^example[0].label = "Keyword label"
* keyword.text ^example[=].valueString = "SARS-CoV-2"
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "coding"
* location ^slicing.rules = #open
* location ^comment = "Select all that apply."
* location contains
    countries 1..* and
    regions 0..1
* location[countries] ^short = "Country(ies) where the study takes place"
* location[countries] ^definition = "Country or countries where the study takes place."
* location[countries] ^comment = "Additional information: Select all that apply."
* location[countries].coding 1..1
* location[regions] ^short = "Regions and/or cities within a country where the study takes place"
* location[regions] ^definition = "If applicable, region(s) and/or city(ies) within a country where the study takes place."
* location[regions].coding 1..1
* description 1..
* description ^short = "English description of the [RESOURCE]"
* description ^definition = "A short plain text summary describing the resource in English."
* description ^comment = "Additional information: An English description is mandatory to facilitate the search. | Short input help: The provided information should be understandable by scientific audience."
* description.extension ^slicing.discriminator.type = #value
* description.extension ^slicing.discriminator.path = "url"
* description.extension ^slicing.rules = #open
* description.extension[translation] only Translation
* description.extension[translation] ^sliceName = "translation"
* description.extension[translation] ^short = "Additional description(s) of the [RESOURCE]"
* description.extension[translation] ^definition = "Group of items with description(s) of the resource written not in English."
* description.extension[translation] ^comment = "Additional descriptions of the resource are optional. \r\nThe provided information should be understandable by scientific audience."
* description.extension[translation] ^min = 0
* description.extension[translation] ^isModifier = false
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
* description.extension contains NFDI4Health_EX_MDS_Language named language 1..1
* description.extension[language] ^short = "Language of the description"
* description.extension[language] ^definition = "Language of the description text."
* description.extension[language] ^comment = "Additional information: English is a default value."
* description.extension[language] ^isModifier = false
* description.extension[language].value[x] = #en (exactly)
* enrollment only Reference(NFDI4Health_PR_MDS_Group_Intended or ttps://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-group-actual)
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
* site.extension ^min = 0
* site.extension[centers] only NFDI4Health_EX_MDS_Study_Centers
* site.extension[centers] ^sliceName = "centers"
* site.extension[centers] ^min = 0
* site.extension[centers] ^isModifier = false
* reasonStopped ^short = "Reason why the study was stopped"
* reasonStopped ^definition = "If the study was stopped prematurely, specification of the reason(s) why it was halted."
* reasonStopped ^comment = "Short input help: E.g., accrual goal met / closed due to toxicity / closed due to lack of study progress / temporarily-closed per study design /etc."
* reasonStopped.extension ^slicing.discriminator.type = #value
* reasonStopped.extension ^slicing.discriminator.path = "url"
* reasonStopped.extension ^slicing.rules = #open
* reasonStopped.extension ^min = 0
* reasonStopped.extension[haltedStage] only NFDI4Health_EX_MDS_Study_Status_Halted_Stage
* reasonStopped.extension[haltedStage] ^sliceName = "haltedStage"
* reasonStopped.extension[haltedStage] ^comment = "Short input help: Select one value from the list."
* reasonStopped.extension[haltedStage] ^min = 0
* reasonStopped.extension[haltedStage] ^isModifier = false
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
* arm.name ^comment = "Additional information: \r\nFor interventional studies: \"Arm\" means a pre-specified group or subgroup of participant(s) in a clinical trial assigned to receive specific intervention(s) (or no intervention) according to a protocol.\r\nFor non-interventional studies: \"Group\" means a predefined group (cohort) of participants to be studied."
* arm.type.coding ..1
* arm.description ^comment = "Additional information : \r\nFor interventional studies: If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the clinical trial.\r\nFor non-interventional studies: Explanation of the nature of the study group (for example, those with a condition and those without a condition; those with an exposure and those without an exposure)."
* objective ..1
* objective.name 1..
* objective.name ^short = "Research questions and/or hypothesis underlying the study"
* objective.name ^definition = "Statement of the research questions and/or hypotheses underlying the study."

Mapping: NFDI4Health-Study-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Study
* extension[masking].extension[roles] -> "1.17.37.2.2 Resource.studyDesign.interventional.masking.roles"
* extension[masking].extension[description] -> "1.17.37.2.3 Resource.studyDesign.interventional.masking.description"
* identifier -> "1.1 Resource.identifier"
* identifier -> "1.12 Resource.idsAlternative"
* identifier[NFDI4Health] -> "1.1 Resource.identifier"
* identifier[DRKS] -> "1.12 Resource.idsAlternative"
* identifier[DRKS].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = DRKS"
* identifier[DRKS].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[NCT] -> "1.12 Resource.idsAlternative"
* identifier[NCT].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = NCT"
* identifier[NCT].value -> "1.12.2 Resource.ids_alternative.identifier"
* identifier[ISRCTN] -> "1.12 Resource.idsAlternative"
* identifier[ISRCTN].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = ISRCTN"
* identifier[ISRCTN].value -> "1.12.2 Resource.idsAlternative.identifier"
* identifier[EudraCT] -> "1.12 Resource.idsAlternative"
* identifier[EudraCT].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = EudraCT"
* identifier[EudraCT].value -> "1.12.2 Resource.ids_alternative.identifier"
* identifier[EUDAMED] -> "1.12 Resource.idsAlternative"
* identifier[EUDAMED].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = EUDAMED"
* identifier[EUDAMED].value -> "1.12.2 Resource.ids_alternative.identifier"
* identifier[UTN] -> "1.12 Resource.idsAlternative"
* identifier[UTN].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = UTN"
* identifier[UTN].value -> "1.12.2 Resource.ids_alternative.identifier"
* identifier[KonsortSWD] -> "1.12 Resource.idsAlternative"
* identifier[KonsortSWD].system -> "1.12.1 Resource.ids_alternative.type" "Type = KonsortSWD"
* identifier[KonsortSWD].value -> "1.12.2 Resource.ids_alternative.identifier"
* identifier[MDMPortal] -> "1.12 Resource.idsAlternative"
* identifier[MDMPortal].system -> "1.12.1 Resource.idsAlternative.scheme" "Type = MDM Portal"
* identifier[MDMPortal].value -> "1.12.2 Resource.ids_alternative.identifier"
* identifier[Other] -> "1.12 Resource.idsAlternative"
* identifier[Other].type -> "1.12.1 Resource.idsAlternative.scheme"
* identifier[Other].system -> "1.12.1 Resource.ids_alternative.type" "Type = Other"
* identifier[Other].value -> "1.12.2 Resource.idsAlternative.identifier"
* title -> "1.3.1 Resource.titles.text"
* title.extension[translation].extension[lang] -> "1.3.2 Resource.titles.language" "Translation language of the title"
* title.extension[translation].extension[lang].value[x] -> "1.3.2 Resource.resource_titles.language"
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