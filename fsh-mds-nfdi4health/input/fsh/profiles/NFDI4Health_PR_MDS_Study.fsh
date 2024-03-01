Profile: NFDI4Health_PR_MDS_Study
Parent: ResearchStudy
Id: nfdi4health-pr-mds-study
Title: "NFDI4Health PR MDS Study"
Description: "Group of items applicable only to studies, substudies, registries, and secondary data sources."
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
    NFDI4Health_EX_MDS_Descriptions named descriptions 1..1 and
    NFDI4Health_EX_MDS_Mortality_Data named mortalityData 0..1 and
    NFDI4Health_EX_MDS_Study_Ethics_Committee_Approval named studyEthicsCommitteeApproval 0..1 and
    NFDI4Health_EX_MDS_Study_Status named studyStatus 1..1 and
    NFDI4Health_EX_MDS_Subject named subject 1..1 and
    NFDI4Health_EX_MDS_Data_Source named dataSource 0..1 and
    NFDI4Health_EX_MDS_Eligibility_Criteria_Inclusion_Criteria named inclusionCriteria 0..1 and
    NFDI4Health_EX_MDS_Eligibility_Criteria_Exclusion_Criteria named exclusionCriteria 0..1 and
    NFDI4Health_EX_MDS_Study_Comparison_Group_Backport_R5 named comparisonGroup 0..* and
    NFDI4Health_EX_MDS_OutcomeMeasure_Backport_R5 named outcomes 0..* and
    NFDI4Health_EX_MDS_Assessments named assessments 0..* and
    NFDI4Health_EX_MDS_Study_Population named population 0..1 and
    NFDI4Health_EX_MDS_Data_Sharing_Plan named dataSharingPlan 1..1 and
    NFDI4Health_EX_MDS_Study_Target_Followup_Duration named targetFollowupDuration 0..1 and
    NFDI4Health_EX_MDS_Biospecimen named biospecimen 0..1 and
    NFDI4Health_EX_MDS_Study_Masking named masking 0..1 and
    NFDI4Health_EX_MDS_Study_Type_Interventional named studyTypeInterventional 0..1 and
    NFDI4Health_EX_MDS_Time_Perspectives named timePerspectives 0..* and
    NFDI4Health_EX_MDS_Groups_Of_Diseases named groupsOfDiseases 1..1 and
    NFDI4Health_EX_MDS_Study_Sampling named sampling 0..1

* identifier 0..* 
* identifier ^short = "Alternative identifiers"
* identifier ^definition = "Group of items providing information about identifiers (IDs) assigned to the given [RESOURCE] by another registering systems, e.g. a registry of clinical trials or a data repository."
* identifier.type 1..1
* identifier.type ^short = "Type of the registry"
* identifier.type ^definition = "Type/name of the system where the given [RESOURCE] is already registered."
* identifier.type from NFDI4Health_VS_MDS_ID_TYPE_NCI_Local (required)
* identifier.type ^binding.description = "Value set defining codes to specify the type of a resource identifier."
* identifier.value 1..1
* identifier.value ^definition = "Identifier"
* identifier.value ^example[0].label = "Identifier (ID) assigned to the given [RESOURCE] by another registering system, e.g. by a registry of clinical trials or a data repository."
* identifier.value ^example[=].valueString = "ISRCTN91495258"
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
* category from NFDI4Health_VS_MDS_Study_Primary_Design_NCI (required)
* category ^short = "Is it an interventional or non-interventional [RESOURCE]?"
* category ^definition = "Non-interventional design refers to a [RESOURCE] that does not aim to alter its outcomes of interest. Interventional design refers to a [RESOURCE] that aims to alter its outcomes of interest."
* category ^comment = "Short input help: Select between non-interventional and interventional design for the given [RESOURCE]."
* category ^binding.description = "Value set defining codes for primary designs of (sub-)studies in a ResearchStudy resource."
* category.extension contains 
    NFDI4Health_EX_MDS_Study_Type named studyType 0..1
* condition ^short = "Primary health condition[conditions](s) or disease(s) considered in the [RESOURCE]"
* condition ^definition = "Group of items providing information about primary health condition[conditions](s) or disease(s) considered in the [RESOURCE]."
* condition.coding.code 1..1
* condition.coding.code ^short = "Terminology/classification"
* condition.coding.code ^definition = "Terminology/classification used for the health condition[conditions] or disease."
* condition.coding.code ^comment = "Short Input Help: If used, name of the terminology/classification."
* condition.coding.code from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* condition.text 1..1
* condition.text ^short = "Primary health condition[conditions] or disease name"
* condition.text ^definition = "Name of primary health condition[conditions] or disease considered in the [RESOURCE]."
* condition.text ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. |Short Input Help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* condition.text ^example.label = "Example of a primary health condition name"
* condition.extension contains
    NFDI4Health_EX_MDS_URI named uri 0..1
* focus ^short = "Primary focus of the [RESOURCE]"
* focus ^definition = "Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* focus.coding.extension ^slicing.discriminator.type = #value
* focus.coding.extension ^slicing.discriminator.path = "url"
* focus.coding.extension ^slicing.rules = #open
* focus.coding.extension contains NFDI4Health_EX_MDS_URI named uri 0..1
* focus.coding.system ^short = "Terminology/classification"
* focus.coding.system ^definition = "Terminology/classification used for the focus area."
* focus.coding.system ^comment = "Short Input Help: If used, name of the terminology/classification."
* focus.coding.system 1..1
* focus.coding.system ^example.label = "Example of a terminology/classification"
* focus.coding.system ^example.valueCode = $NCI#C49469
* focus.coding.system from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* focus.coding.display 1..
* focus.coding.display ^short = "Focus area"
* focus.coding.display ^definition = "Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* focus.coding.display ^comment = "Additional Information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. | Short input help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
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
* keyword.coding.system ^example.label = "Hier Beschreibung einfügen" //TODO
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
    coverage 0..1 and
    countries 1..* and
    regions 0..*
* location[coverage] ^short = "Coverage"
* location[coverage] ^definition = "Specification of the recruitment area of the [RESOURCE]."
* location[coverage] ^comment = "Short input help: Select one value from the list."
* location[coverage].coding 1..1
* location[coverage].coding from NFDI4Health_VS_MDS_Population_Coverage_NCI (required)
* location[countries] ^short = "Country(ies)"
* location[countries] ^definition = "Country or countries where the [RESOURCE] takes place."
* location[countries] ^comment = "Short input help: Select all that apply."
* location[countries].coding 1..1
* location[countries] from NFDI4Health_VS_MDS_Countries_ISO (required)
* location[countries] ^binding.description = "Value set including the country names from the ISO 3166-1 list"
* location[regions].coding 0..0
* location[regions].text 1..1
* location[regions].text ^short = "Region(s) and/or city(ies)"
* location[regions].text ^definition = "If applicable, region(s) and/or city(ies) within a country where the [RESOURCE] takes place."
* enrollment only Reference(NFDI4Health_PR_MDS_Group_Intended or NFDI4Health_PR_MDS_Group_Actual)
//* enrollment ^short = "Eligibility criteria for study participants"
//* enrollment ^definition = "Group of items providing information about eligibility criteria for study participants."
* period.start ^short = "Start date"
* period.start ^definition = "Start date of data collection for the [RESOURCE]."
* period.start ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date."
* period.end ^short = "End date"
* period.end ^definition = "In case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant's last visit."
* period.end ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date."
* site 0..1
* site only Reference(NFDI4Health_PR_MDS_Centers)
* reasonStopped.coding ^short = "Stopping stage"
* reasonStopped.coding ^definition = "Specification of the stage at which the [RESOURCE] was prematurely stopped."
* reasonStopped.coding ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0 / Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* reasonStopped.coding 0..1
* reasonStopped.coding from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* reasonStopped.text ^short = "Stopping reason"
* reasonStopped.text ^definition = "Specification of the reason(s) why the [RESOURCE] was prematurely stopped."
* reasonStopped.text ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0 / Short Input Help: You can provide reasons such as closed due to toxicity, closed due to lack of [RESOURCE] progress, temporarily-closed per [RESOURCE] design, etc. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
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
* -> "Design"
* identifier -> "Resource.idsAlternative"
* identifier.type -> "Resource.idsAlternative.scheme"
* identifier.value -> "esource.idsAlternative.identifier"
* primaryPurposeType -> "Design.primaryPurpose"
* phase -> "Design.interventional.phase"
* category -> "Design.primaryDesign"
* condition -> "Design.conditions"
* condition.extension[uri] -> "Design.conditions.code"
* extension[groupsOfDiseases] -> "Design.groupsOfDiseases"
* condition.coding.code -> "Design.conditions.classification"
* condition..text -> "Design.conditions.label"
* focus -> "Design.focus"
* focus.coding.extension[uri] -> "Design.focus.code"
* focus.coding.system -> "Design.focus.classification"
* focus.coding.display -> "Design.focus.label"
* relatedArtifact -> "1.13 Resource.ids"
* relatedArtifact -> "1.14 Resource.idsNfdi4health"
* relatedArtifact -> "1.9 Resource.webpage"
* keyword -> "1.6 Resource.keywords"
* keyword.coding.system -> "1.6.2 Resource.keywords.code"
* keyword.text -> "1.6.1 Resource.keywords.label"
* location[coverage] -> "1.17.17.1 Design.population.coverage"
* location[countries] -> "1.17.17.2 Design.population.countries"
* location[regions].text -> "1.17.17.3 Design.population.region"
* extension[descriptions] -> "Resource.descriptions"
* period.start -> "Design.administrativeInformation.startDate"
* period.end -> "Design.administrativeInformation.endDate"
* reasonStopped.text -> "Design.administrativeInformation.reasonStopped"
* reasonStopped.coding -> "Design.administrativeInformation.stageStopped"
* note.text -> "1.17.24 Design.comment"
* objective.name -> "1.17.18 Design.hypotheses"
* enrollment -> "Design.population.obtainedSampleSize"
