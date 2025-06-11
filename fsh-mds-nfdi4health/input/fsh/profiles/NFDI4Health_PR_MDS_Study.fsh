Profile: NFDI4Health_PR_MDS_Study
Parent: ResearchStudy
Id: nfdi4health-pr-mds-study
Title: "NFDI4Health PR MDS Study"
Description: "Group of items applicable only to studies, substudies."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-study"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

// Invariants
* obeys category-interventional-a and category-interventional-b
* obeys category-nonInterventional-a and category-nonInterventional-b
* obeys study-mortalityData-a and study-mortalityData-b
* obeys study-statusWhenIntervention-a and study-statusWhenIntervention-b and study-statusWhenIntervention-c and study-statusWhenIntervention-d
* obeys study-recruitmentStatusRegister-a and study-recruitmentStatusRegister-b
* obeys probabilityMethod-a and probabilityMethod-b
* obeys nonProbabilityMethod-a and nonProbabilityMethod-b
* obeys biosamples-a and biosamples-b
* obeys imaging-a and imaging-b
* obeys omics-a and omics-b
* obeys supportingInformation-a and supportingInformation-b
* obeys timeFrame-a and timeFrame-b
* obeys accessCriteria-a and accessCriteria-b
* obeys masking-roles-a and masking-roles-b
* obeys masking-description-a and masking-description-b
* obeys interventional-a and interventional-b
* obeys nonInterventional-a and nonInterventional-b
* obeys study-stageStopped-a and study-stageStopped-b
* obeys study-reasonStopped-a and study-reasonStopped-b
* obeys recordLinkage-a and recordLinkage-b
* obeys legalBasisDetails-a and legalBasisDetails-b

// Extensions
* extension contains
    NFDI4Health_EX_MDS_Descriptions named descriptions 1..1 and
    NFDI4Health_EX_MDS_Mortality_Data named mortalityData 0..1 and
    NFDI4Health_EX_MDS_Study_Admin_Info named administrativeInformation 1..1 and
    NFDI4Health_EX_MDS_Subject named subject 1..1 and
    NFDI4Health_EX_MDS_Data_Source named dataSource 0..1 and
    NFDI4Health_EX_MDS_Recruitment_Backport_R5 named recruitment 0..1 and
    NFDI4Health_EX_MDS_Study_Comparison_Group_Backport_R5 named comparisonGroup 0..* and
    NFDI4Health_EX_MDS_OutcomeMeasure_Backport_R5 named outcomes 0..* and
    NFDI4Health_EX_MDS_Assessments named assessments 0..* and
    NFDI4Health_EX_MDS_Data_Sharing_Plan named dataSharingPlan 1..1 and
    NFDI4Health_EX_MDS_Study_Non_Interventional named nonInterventional 0..1 and
    NFDI4Health_EX_MDS_Study_Interventional named interventional 0..1 and
    NFDI4Health_EX_MDS_Groups_Of_Diseases named groupsOfDiseases 1..1 and
    NFDI4Health_EX_MDS_Study_Sampling named sampling 0..1 and
    NFDI4Health_EX_MDS_Record_Linkage named recordLinkage 0..1 and
    NFDI4Health_EX_MDS_Imaging named imaging 0..1

// Elements
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
* primaryPurposeType.coding from NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI (required)
* primaryPurposeType.coding  ^short = "Primary purpose of the [RESOURCE]"
* primaryPurposeType.coding  ^definition = "Specification of the main purpose of the [RESOURCE]."
* primaryPurposeType.coding  ^comment = "Additional Information: The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be selected. | Short Input Help: Foremost for interventional studies, please specify the primary purpose why the [RESOURCE] was conducted. For non-interventional studies, this field may be 'Not applicable' as multiple purposes may be defined as primary ones."
* primaryPurposeType.coding  ^binding.description = "Value set defining codes to specify the primary purpose of a (sub-)study in a ResearchStudy resource."
* phase.coding from NFDI4Health_VS_MDS_Study_Phase_NCI (required)
* phase.coding ^short = "Numerical phase"
* phase.coding ^definition = "If applicable, numerical phase of the [RESOURCE]."
* phase.coding ^comment = "Short input help: Select one value from the list."
* phase.coding ^binding.description = "Value set defining codes to specify the phase of a (sub-)study in a ResearchStudy resource."
* category 1..1 // Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0
* category from NFDI4Health_VS_MDS_Study_Primary_Design_NCI (required)
* category ^short = "Is the study design non-interventional or interventional?"
* category ^binding.description = "Value set defining codes for primary designs of (sub-)studies in a ResearchStudy resource."
* category.extension contains 
    NFDI4Health_EX_MDS_Study_Type named studyType 1..1 // Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0

* condition ^short = "Primary health conditions or diseases considered in the [RESOURCE]"
* condition ^definition = "Group of items providing information about primary health conditions or diseases considered in the [RESOURCE]."
* condition.text 1..1
* condition.text ^short = "Health condition or disease"
* condition.text ^definition = "The disease, disorder, syndrome, illness, or injury that is being studied. Conditions may also include other health-related issues, such as lifespan, quality of life, and health risks."
* condition.text ^comment = "Preferably, use terms from terminologies such as SNOMED CT."
* condition.text ^example.label = "Example of a health condition"
* condition.text ^example.valueString = "SARS-CoV-2"
* condition.coding.extension contains
    NFDI4Health_EX_MDS_CodeableConcept named codeableConcept 1..1

* focus ^short = "Primary focus of the [RESOURCE]"
* focus ^definition = "Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* focus.text 1..
* focus.text ^short = "Focus area"
* focus.text ^definition = "Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* focus.text ^comment = "Additional Information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. | Short input help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* focus.coding.extension contains
    NFDI4Health_EX_MDS_CodeableConcept named codeableConcept 1..1

* relatedArtifact ..1
* relatedArtifact only NFDI4Health_PR_MDS_Related_Artifact_Resource


* keyword ^short = "Keywords"
* keyword ^definition = "Group of items providing information about keywords describing the [RESOURCE]."
* keyword ^comment = "Additional information: The findability of the [RESOURCE] can be significantly increased if proper keywords are stated."
* keyword.coding.code.extension contains
    NFDI4Health_EX_MDS_Code named code 0..1
* keyword.text 1..1 
* keyword.text ^short = "label"
* keyword.text ^definition = "Keyword(s) describing the [RESOURCE]."
* keyword.text ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. SNOMED CT, MeSH, UMLS) is preferred. However, also self-assigned keywords are allowed. | Short input help: Preferably, use terms from SNOMED CT or MESH."
* keyword.text ^example[0].label = "Keyword label"
* keyword.text ^example[=].valueString = "SARS-CoV-2"

* period.start ^short = "Start date"
* period.start ^definition = "In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date."
* period.start ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date."
* period.end ^short = "End date"
* period.end ^definition = "In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date. In case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."
* period.end ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date."
* site 0..1
* site only Reference(NFDI4Health_PR_MDS_Centers)
* reasonStopped.coding ^short = "Stopping stage"
* reasonStopped.coding ^definition = "Specification of the stage at which the [RESOURCE] was prematurely stopped."
* reasonStopped.coding ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0 / Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* reasonStopped.coding 0..1
* reasonStopped.coding from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* reasonStopped.text ^short = "Stopping reason"
* reasonStopped.text ^definition = "Specification of the reasons why the [RESOURCE] was prematurely stopped, for example due to toxicity, closed due to lack of study progress, temporarily closed per study design."
* reasonStopped.text ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0 / Short Input Help: You can provide reasons such as closed due to toxicity, closed due to lack of [RESOURCE] progress, temporarily-closed per [RESOURCE] design, etc. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* note ..1
* note.text ^short = "Additional information about the [RESOURCE]"
* note.text ^definition = "Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields.."
* note.text ^comment = "Short input help: You can provide here specific aspects of the [RESOURCE] that could not be captured by other fields."
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
* condition.coding.extension[codeableConcept] -> "Design.conditions.code"
* condition.coding.extension[codeableConcept] -> "Design.conditions.classification"
* extension[groupsOfDiseases] -> "Design.groupsOfDiseases"
* condition.text -> "Design.conditions.label"
* focus -> "Design.focus"
* focus.coding.extension[codeableConcept] -> "Design.focus.code"
* focus.coding.extension[codeableConcept] -> "Design.focus.classification"
* focus.text -> "Design.focus.label"
* relatedArtifact -> "Resource.ids"
* relatedArtifact -> "Resource.idsNfdi4health"
* relatedArtifact -> "Resource.webpage"
* keyword -> "Resource.keywords"
* keyword.coding.code.extension[code] -> "Resource.keywords.code"
* keyword.text -> "Resource.keywords.label"
* extension[descriptions] -> "Resource.descriptions"
* period.start -> "Design.administrativeInformation.startDate"
* period.end -> "Design.administrativeInformation.endDate"
* reasonStopped.text -> "Design.administrativeInformation.reasonStopped"
* reasonStopped.coding -> "Design.administrativeInformation.stageStopped"
* note.text -> "Design.comment"
* objective.name -> "Design.hypotheses"


// All conditions stating Resource.classification.type == ('Study' OR 'Substudy were evaluated as given within the ResearchStudy Profile
Invariant: category-interventional-a
Description: "Cardinality: 1..*, if Design.primaryDesign == 'C98388'"
Severity: #error
Expression: "category.coding.where(code = 'C98388').exists() implies category.extension.extension.where(url='interventional').exists()"

Invariant: category-interventional-b
Description: "Cardinality: 0..0, if Design.primaryDesign != 'C98388'"
Severity: #error
Expression: "category.coding.where(code = 'C98388').exists().not() implies category.extension.extension.where(url='interventional').exists().not()"

Invariant: category-nonInterventional-a
Description: "Cardinality: 1..*, if Design.primaryDesign == 'C142615''"
Severity: #error
Expression: "category.coding.where(code = 'C142615').exists() implies category.extension.extension.where(url='nonInterventional').exists()"

Invariant: category-nonInterventional-b
Description: "Cardinality: 0..0, if Design.primaryDesign != 'C142615'"
Severity: #error
Expression: "category.coding.where(code = 'C142615').exists().not() implies category.extension.extension.where(url='nonInterventional').exists().not()"

Invariant: study-mortalityData-a
Description: "Cardinality: 0..1, if Design.studyType.nonInterventional == ('C15273' OR 'C15208' OR '004' OR 'D015331' OR '005' OR 'C53311'))"
Severity: #error
Expression: "category.extension.extension.where(url='nonInterventional').valueCoding.where(code = 'C15273' or code = 'C15208' or code =  '004' or code =  'D015331' or code =  '005' or code =  'C53311').exists() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-mortality-data').exists()"

Invariant: study-mortalityData-b
Description: "Cardinality: 0..0, if Design.studyType.nonInterventional != ('C15273' OR 'C15208' OR '004' OR 'D015331' OR '005' OR 'C53311'))"
Severity: #error
Expression: "category.extension.extension.where(url='nonInterventional').valueCoding.where(code = 'C15273' or code = 'C15208' or code = '004' or 'D015331' or code = '005' or code = 'C53311').exists().not() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-mortality-data').exists().not()"

Invariant: study-statusWhenIntervention-a
Description: "Cardinality: 0..1, if Design.primaryDesign == 'C98388'"
Severity: #error
Expression: "category.coding.where(code = 'C98388').exists() implies extension.extension.where(url='statusWhenIntervention').exists()"

Invariant: study-statusWhenIntervention-b
Description: "Cardinality: 0..1, if Design.administrativeInformation.status == ('01' OR '02' OR '03' OR '04' OR '05')"
Severity: #error
Expression: "extension.extension.where(url='status').valueCoding.where(code = '01' or code = '02' or code =  '03' or code = '04' or code = '05').exists() implies extension.extension.where(url='statusWhenIntervention').exists().not()"

Invariant: study-statusWhenIntervention-c
Description: "Cardinality: 0..0, if Design.primaryDesign != 'C98388'"
Severity: #error
Expression: "category.coding.where(code = 'C98388').exists().not() implies extension.extension.where(url='statusWhenIntervention').exists().not()"

Invariant: study-statusWhenIntervention-d
Description: "Cardinality: 0..0, if Design.administrativeInformation.status != ('01' OR '02' OR '03' OR '04' OR '05')"
Severity: #error
Expression: "extension.extension.where(url='status').valueCoding.where(code = '01' or code = '02' or code =  '03' or code = '04' or code = '05').exists().not() implies extension.extension.where(url='statusWhenIntervention').exists().not()"


Invariant: probabilityMethod-a
Description: "0..1, if Design.sampling.method == '034'"
Severity: #error
Expression: "extension.extension.where(url='method').valueCoding.where(code = '034').exists() implies extension.extension.where(url='probabilityMethod').exists()"

Invariant: probabilityMethod-b
Description: "0..0, if Design.sampling.method != '034'"
Severity: #error
Expression: "extension.extension.where(url='method').valueCoding.where(code = '034').exists().not() implies extension.extension.where(url='probabilityMethod').exists().not()"

Invariant: nonProbabilityMethod-a
Description: "0..1, if Design.sampling.method == 'C127781'"
Severity: #error
Expression: "extension.extension.where(url='method').valueCoding.where(code = 'C127781').exists() implies extension.extension.where(url='nonProbabilityMethod').exists()"

Invariant: nonProbabilityMethod-b
Description: "0..0, if Design.sampling.method != 'C127781'"
Severity: #error
Expression: "extension.extension.where(url='method').valueCoding.where(code = 'C127781').exists().not() implies extension.extension.where(url='nonProbabilityMethod').exists().not()"

Invariant: biosamples-a
Description: "0..*, if Design.dataSource.general == 'C70699'"
Severity: #error
Expression: "extension.extension.where(url='general').valueCoding.where(code = 'C70699').exists() implies extension.extension.where(url='biosamples').exists()"

Invariant: biosamples-b
Description: "0..0, if Design.dataSource.general != 'C70699'"
Severity: #error
Expression: "extension.extension.where(url='general').valueCoding.where(code = 'C70699').exists().not() implies extension.extension.where(url='biosamples').exists().not()"

Invariant: imaging-a
Description: "0..*, if Design.dataSource.general == '031'"
Severity: #error
Expression: "extension.extension.where(url='general').valueCoding.where(code = '031').exists() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-radiomics').exists()"

Invariant: imaging-b
Description: "0..0, if Design.dataSource.general != '031'"
Severity: #error
Expression: "extension.extension.where(url='general').valueCoding.where(code = '031').exists().not() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-radiomics').exists().not()"

Invariant: omics-a
Description: "0..*, if Design.dataSource.general == '033'"
Severity: #error
Expression: "extension.extension.where(url='general').valueCoding.where(code = '033').exists() implies extension.extension.where(url='omics').exists()"

Invariant: omics-b
Description: "0..0, if Design.dataSource.general != '033'"
Severity: #error
Expression: "extension.extension.where(url='general').valueCoding.where(code = '033').exists().not() implies extension.extension.where(url='omics').exists().not()"

Invariant: supportingInformation-a
Description: "Cardinality: 0..*, if Design.dataSharingPlan.generally == '373066001'"
Severity: #error
Expression: "extension.extension.where(url='generally').valueCoding.where(code = '373066001').exists() implies extension.extension.where(url='supportingInformation').exists()"

Invariant: supportingInformation-b
Description: "Cardinality: 0..0, if Design.dataSharingPlan.generally != '373066001'"
Severity: #error
Expression: "extension.extension.where(url='generally').valueCoding.where(code = '373066001').exists().not() implies extension.extension.where(url='supportingInformation').exists().not()"

Invariant: timeFrame-a
Description: "Cardinality: 0..*, if Design.dataSharingPlan.generally == '373066001'"
Severity: #error
Expression: "extension.extension.where(url='generally').valueCoding.where(code = '373066001').exists() implies extension.extension.where(url='timeFrame').exists()"

Invariant: timeFrame-b
Description: "Cardinality: 0..0, if Design.dataSharingPlan.generally != '373066001'"
Severity: #error
Expression: "extension.extension.where(url='generally').valueCoding.where(code = '373066001').exists().not() implies extension.extension.where(url='timeFrame').exists().not()"

Invariant: accessCriteria-a
Description: "Cardinality: 0..*, if Design.dataSharingPlan.generally == '373066001'"
Severity: #error
Expression: "extension.extension.where(url='generally').valueCoding.where(code = '373066001').exists() implies extension.extension.where(url='accessCriteria').exists()"

Invariant: accessCriteria-b
Description: "Cardinality: 0..0, if Design.dataSharingPlan.generally != '373066001'"
Severity: #error
Expression: "extension.extension.where(url='generally').valueCoding.where(code = '373066001').exists().not() implies extension.extension.where(url='accessCriteria').exists().not()"

Invariant: masking-roles-a
Description: "Cardinality: 0..*, if Design.interventional.masking.general == true"
Severity: #error
Expression: "extension.extension.extension.where(url='general').where(value=true).exists() implies extension.extension.extension.where(url='roles').exists()"

Invariant: masking-roles-b
Description: "Cardinality: 0..*, if Design.interventional.masking.general == false"
Severity: #error
Expression: "extension.extension.extension.where(url='general').where(value=true).exists().not() implies extension.extension.extension.where(url='roles').exists().not()"

Invariant: masking-description-a
Description: "Cardinality: 0..*, if Design.interventional.masking.general == true"
Severity: #error
Expression: "extension.extension.extension.where(url='general').where(value=true).exists() implies extension.extension.extension.where(url='description').exists()"

Invariant: masking-description-b
Description: "Cardinality: 0..*, if Design.interventional.masking.general == false"
Severity: #error
Expression: "extension.extension.extension.where(url='general').where(value=true).exists().not() implies extension.extension.extension.where(url='description').exists().not()"

Invariant: interventional-a
Description: "Cardinality: 0..1, Design.primaryDesign == 'Interventional'"
Severity: #error
Expression: "category.coding.where(code = 'C98388').exists() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-interventional').exists()"

Invariant: interventional-b
Description: "Cardinality: 0..0, Design.primaryDesign != 'Interventional'"
Severity: #error
Expression: "category.coding.where(code = 'C98388').exists().not() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-interventional').exists().not()"

Invariant: nonInterventional-a
Description: "Cardinality: 0..1, Design.primaryDesign == 'Non-interventional'"
Severity: #error
Expression: "category.coding.where(code = 'C142615').exists() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-non-interventional').exists()"

Invariant: nonInterventional-b
Description: "Cardinality: 0..0, Design.primaryDesign != 'Non-interventional'"
Severity: #error
Expression: "category.coding.where(code = 'C142615').exists().not() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-non-interventional').exists().not()"

Invariant: study-stageStopped-a
Description: "Cardinality: 0..1, if Design.administrativeInformation.status == ('06' OR '07')"
Severity: #error
Expression: "extension.extension.where(url='status').valueCoding.where(code = '06' or code = '07').exists() implies reasonStopped.coding.exists()"

Invariant: study-stageStopped-b
Description: "Cardinality: 0..0, if Design.administrativeInformation.status != ('06' OR '07')"
Severity: #error
Expression: "extension.extension.where(url='status').valueCoding.where(code = '06' or code = '07').exists().not() implies reasonStopped.coding.exists().not()"

Invariant: study-reasonStopped-a
Description: "Cardinality: 0..1, if Design.administrativeInformation.status == ('06' OR '07')"
Severity: #error
Expression: "extension.extension.where(url='status').valueCoding.where(code = '06' or code = '07').exists() implies reasonStopped.text.exists()"

Invariant: study-reasonStopped-b
Description: "Cardinality: 0..0, if Design.administrativeInformation.status != ('06' OR '07')"
Severity: #error
Expression: "extension.extension.where(url='status').valueCoding.where(code = '06' or code = '07').exists().not() implies reasonStopped.text.exists().not()"

Invariant: recordLinkage-a
Description: "Cardinality: 1..1, if Design.dataSharingPlan.recordLinkage == 'Yes'"
Severity: #error
Expression: "extension.extension.where(url='recordLinkage').where(value=true).exists()  implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-record-linkage').exists()"

Invariant: recordLinkage-b
Description: "Cardinality: 0..0, if Design.dataSharingPlan.recordLinkage == 'No'"
Severity: #error
Expression: "extension.extension.where(url='recordLinkage').where(value=false).exists() implies extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-record-linkage').exists().not()"

Invariant: legalBasisDetails-a
Description: "Cardinality: 1..1, if RecordLinkage.legalBasis == 'True'"
Severity: #error
Expression: "extension.extension.where(url='legalBasis').where(value=true).exists() implies extension.extension.where(url='legalBasisDetails').exists()"

Invariant: legalBasisDetails-b
Description: "Cardinality: 0..0, if RecordLinkage.legalBasis == 'False'"
Severity: #error
Expression: "extension.extension.where(url='legalBasis').where(value=false).exists() implies extension.extension.where(url='legalBasisDetails').exists().not()"

// Can NOT be tested but needs example data with recruitmentStatusRegister
Invariant: study-recruitmentStatusRegister-a
Description: "Cardinality: 0..1, if Resource.provenance.dataSource != '06'"
Severity: #error
Expression: "Composition.extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-provenance-data-source').valueCoding.where(code='06').exists().not() implies extension.extension.where(url='recruitmentStatusRegister').exists()"

Invariant: study-recruitmentStatusRegister-b
Description: "Cardinality: 0..0, if Resource.provenance.dataSource == '06'"
Severity: #error
Expression: "Composition.extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-provenance-data-source').valueCoding.where(code='06').exists() implies extension.extension.where(url='recruitmentStatusRegister').exists().not()"



