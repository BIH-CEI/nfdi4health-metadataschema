Logical: NFDI4Health_LM_MDS_Design
Parent: Element
Id: nfdi4health-lm-mds-design
Title: "NFDI4Health Module Design"
Description: "NFDI4Health Logical Model of Module Design V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-design"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* Design 0..1 BackboneElement "Characteristics of the [RESOURCE]" "Group of items providing information about the characteristics of a [RESOURCE]."
* Design ^comment = "Additional information: Group of items applicable only to studies, substudies, registries, and secondary data sources."
* Design ^requirements = "Group of items relevant for studies, substudies, registries and/or secondary data sources, including details on targeted health conditions, study population, outcome measures, and study design."
* Design ^base.path = "Design"
* Design ^base.min = 0
* Design ^base.max = "*"
* Design.primaryDesign 0..* CodeableConcept "primaryDesign" "Is the study design non-interventional or interventional?"
* Design.primaryDesign from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-primary-design-nci (required)
* Design.primaryDesign ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.primaryDesign ^base.path = "Design.primaryDesign"
* Design.primaryDesign ^base.min = 0
* Design.primaryDesign ^base.max = "*"
* Design.primaryDesign ^binding.description = "NFDI4Health_VS_MDS_Study_Primary_Design_NCI"
* Design.studyType 0..* BackboneElement "studyType" "Information on specific study design"
* Design.studyType ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.studyType ^requirements = "Group of items providing information about the study design."
* Design.studyType ^base.path = "Design.studyType"
* Design.studyType ^base.min = 0
* Design.studyType ^base.max = "*"
* Design.studyType.interventional 0..* CodeableConcept "interventional" "Interventional study model"
* Design.studyType.interventional from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-type-interventional-nci (required)
* Design.studyType.interventional ^comment = "Cardinality: 1..*, if Design.primaryDesign == 'Interventional'; otherwise 0..0"
* Design.studyType.interventional ^requirements = "The strategy for assigning interventions to participants."
* Design.studyType.interventional ^base.path = "Design.studyType.interventional"
* Design.studyType.interventional ^base.min = 0
* Design.studyType.interventional ^base.max = "*"
* Design.studyType.interventional ^binding.description = "NFDI4Health_VS_MDS_Study_Type_Interventional_NCI"
* Design.studyType.nonInterventional 0..* CodeableConcept "nonInterventional" "Non-interventional study model"
* Design.studyType.nonInterventional from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-type-non-interventional-nci-msh-local (required)
* Design.studyType.nonInterventional ^comment = "Cardinality: 1..*, if Design.primaryDesign == 'Non-interventional'; otherwise 0..0"
* Design.studyType.nonInterventional ^requirements = "The primary strategy for participant identification and follow-up."
* Design.studyType.nonInterventional ^base.path = "Design.studyType.nonInterventional"
* Design.studyType.nonInterventional ^base.min = 0
* Design.studyType.nonInterventional ^base.max = "*"
* Design.studyType.nonInterventional ^binding.description = "NFDI4Health_VS_MDS_Study_Type_Non_Interventional_NCI_MSH_Local"
* Design.conditions 0..* BackboneElement "conditions" "Primary health conditions or diseases considered in the [RESOURCE]"
* Design.conditions ^comment = "Cardinality: 0..*"
* Design.conditions ^requirements = "Group of items providing information about primary health conditions or diseases considered in the [RESOURCE]."
* Design.conditions ^base.path = "Design.conditions"
* Design.conditions ^base.min = 0
* Design.conditions ^base.max = "*"
* Design.conditions.label 0..* string "label" "Health condition or disease"
* Design.conditions.label ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed."
* Design.conditions.label ^requirements = "The disease, disorder, syndrome, illness, or injury that is being studied. Conditions may also include other health-related issues, such as lifespan, quality of life, and health risks."
* Design.conditions.label ^base.path = "Design.conditions.label"
* Design.conditions.label ^base.min = 0
* Design.conditions.label ^base.max = "*"
* Design.conditions.label ^example.label = "example 1"
* Design.conditions.label ^example.valueString = "SARS-CoV-2"
* Design.conditions.classification 0..* CodeableConcept "classification" "Terminology/classification"
* Design.conditions.classification from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-conditions-classification-nci-local (required)
* Design.conditions.classification ^comment = "Cardinality: 1..1"
* Design.conditions.classification ^requirements = "Terminology/classification used to specify the health condition or disease."
* Design.conditions.classification ^base.path = "Design.conditions.classification"
* Design.conditions.classification ^base.min = 0
* Design.conditions.classification ^base.max = "*"
* Design.conditions.classification ^example.label = "example 1"
* Design.conditions.classification ^example.valueCodeableConcept.text = "SNOMED CT"
* Design.conditions.classification ^binding.description = "NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local"
* Design.conditions.code 0..* string "code" "Code of the health condition or disease"
* Design.conditions.code ^comment = "Cardinality: 0..1"
* Design.conditions.code ^requirements = "Code of the health condition or disease in the terminology/classification."
* Design.conditions.code ^base.path = "Design.conditions.code"
* Design.conditions.code ^base.min = 0
* Design.conditions.code ^base.max = "*"
* Design.conditions.code ^example.label = "example 1"
* Design.conditions.code ^example.valueString = "http://snomed.info/id/840533007"
* Design.focus 0..* BackboneElement "focus" "Primary focus of the [RESOURCE]"
* Design.focus ^comment = "Cardinality: 0..*"
* Design.focus ^requirements = "Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus ^base.path = "Design.focus"
* Design.focus ^base.min = 0
* Design.focus ^base.max = "*"
* Design.focus.label 0..* string "label" "Focus area"
* Design.focus.label ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed."
* Design.focus.label ^requirements = "Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus.label ^base.path = "Design.focus.label"
* Design.focus.label ^base.min = 0
* Design.focus.label ^base.max = "*"
* Design.focus.classification 0..* CodeableConcept "classification" "Terminology/classification"
* Design.focus.classification from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-conditions-classification-nci-local (required)
* Design.focus.classification ^comment = "Cardinality: 1..1"
* Design.focus.classification ^requirements = "Terminology/classification used for the focus area."
* Design.focus.classification ^base.path = "Design.focus.classification"
* Design.focus.classification ^base.min = 0
* Design.focus.classification ^base.max = "*"
* Design.focus.classification ^example.label = "example 1"
* Design.focus.classification ^example.valueCodeableConcept.text = "SNOMED CT"
* Design.focus.classification ^binding.description = "NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local"
* Design.focus.code 0..* string "code" "Code of the focus area"
* Design.focus.code ^comment = "Cardinality: 0..1"
* Design.focus.code ^requirements = "Code of the focus area in the terminology/classification."
* Design.focus.code ^base.path = "Design.focus.code"
* Design.focus.code ^base.min = 0
* Design.focus.code ^base.max = "*"
* Design.focus.code ^example.label = "example 1"
* Design.focus.code ^example.valueString = "http://snomed.info/id/840533007"
* Design.groupsOfDiseases 0..* BackboneElement "groupsOfDiseases" "Groups of diseases or conditions"
* Design.groupsOfDiseases ^comment = "Cardinality: 1..1"
* Design.groupsOfDiseases ^requirements = "Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases ^base.path = "Design.groupsOfDiseases"
* Design.groupsOfDiseases ^base.min = 0
* Design.groupsOfDiseases ^base.max = "*"
* Design.groupsOfDiseases.generally 0..* CodeableConcept "generally" "Which groups of diseases or conditions were the data collected on?"
* Design.groupsOfDiseases.generally from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-diseases-generally-icd-sct (required)
* Design.groupsOfDiseases.generally ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10)."
* Design.groupsOfDiseases.generally ^requirements = "General groups of diseases or conditions on which the data were collected."
* Design.groupsOfDiseases.generally ^base.path = "Design.groupsOfDiseases.generally"
* Design.groupsOfDiseases.generally ^base.min = 0
* Design.groupsOfDiseases.generally ^base.max = "*"
* Design.groupsOfDiseases.generally ^binding.description = "NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_SCT"
* Design.groupsOfDiseases.conditions 0..* CodeableConcept "conditions" "On which diseases or conditions were the data collected?"
* Design.groupsOfDiseases.conditions from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-groups-of-diseases-generally-conditions-icd (required)
* Design.groupsOfDiseases.conditions ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10)."
* Design.groupsOfDiseases.conditions ^requirements = "Diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.conditions ^base.path = "Design.groupsOfDiseases.conditions"
* Design.groupsOfDiseases.conditions ^base.min = 0
* Design.groupsOfDiseases.conditions ^base.max = "*"
* Design.groupsOfDiseases.conditions ^binding.description = "NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_Conditions_ICD10"
* Design.mortalityData 0..* CodeableConcept "mortalityData" "Mortality data collected?"
* Design.mortalityData from NFDI4Health_VS_MDS_Mortality_Data_NCI (required)
* Design.mortalityData ^comment = "Cardinality: 0..1, if (Resource.classification.type == ('Study' OR 'Substudy') AND Design.studyType.nonInterventional == ('Longitudinal' OR 'Cohort' OR 'Case-cohort' OR 'Birth cohort' OR 'Trend' OR 'Panel')) OR Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise\n                            0..0"
* Design.mortalityData ^requirements = "Indication whether mortality data are collected in the [RESOURCE]."
* Design.mortalityData ^base.path = "Design.mortalityData"
* Design.mortalityData ^base.min = 0
* Design.mortalityData ^base.max = "*"
* Design.mortalityData ^binding.description = "NFDI4Health_VS_MDS_Mortality_Data_NCI"
* Design.administrativeInformation 0..* BackboneElement "administrativeInformation" "Administrative information"
* Design.administrativeInformation ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..1"
* Design.administrativeInformation ^requirements = "Group of items providing administrative information about the [RESOURCE]."
* Design.administrativeInformation ^base.path = "Design.administrativeInformation"
* Design.administrativeInformation ^base.min = 0
* Design.administrativeInformation ^base.max = "*"
* Design.administrativeInformation.ethicsCommitteeApproval 0..* CodeableConcept "ethicsCommitteeApproval" "Status of the ethics committee approval"
* Design.administrativeInformation.ethicsCommitteeApproval from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-ethics-committee-approval-nci-local (required)
* Design.administrativeInformation.ethicsCommitteeApproval ^comment = "Cardinality: 0..1"
* Design.administrativeInformation.ethicsCommitteeApproval ^requirements = "Status of the request for approval from the (leading) ethics committee."
* Design.administrativeInformation.ethicsCommitteeApproval ^base.path = "Design.administrativeInformation.ethicsCommitteeApproval"
* Design.administrativeInformation.ethicsCommitteeApproval ^base.min = 0
* Design.administrativeInformation.ethicsCommitteeApproval ^base.max = "*"
* Design.administrativeInformation.ethicsCommitteeApproval ^binding.description = "NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_NCI_Local"
* Design.administrativeInformation.status 0..* CodeableConcept "status" "Overall status"
* Design.administrativeInformation.status from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-overall-status-nci-local (required)
* Design.administrativeInformation.status ^comment = "Additional information: If at least one study site in a multicenter study has the status 'Ongoing', then the overall status of the study must be 'Ongoing'."
* Design.administrativeInformation.status ^requirements = "Overall status of the [RESOURCE]."
* Design.administrativeInformation.status ^base.path = "Design.administrativeInformation.status"
* Design.administrativeInformation.status ^base.min = 0
* Design.administrativeInformation.status ^base.max = "*"
* Design.administrativeInformation.status ^binding.description = "NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local"
* Design.administrativeInformation.statusWhenIntervention 0..* CodeableConcept "statusWhenIntervention" "Is the intervention ongoing or completed?"
* Design.administrativeInformation.statusWhenIntervention from NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local (required)
* Design.administrativeInformation.statusWhenIntervention ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Interventional' AND Design.administrativeInformation.status == ('At the planning stage' OR 'Ongoing (I): Recruitment ongoing, but data collection not yet started' OR 'Ongoing (II):\n                                Recruitment and data collection ongoing' OR 'Ongoing (III): Recruitment completed, but data collection ongoing' OR 'Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing'); otherwise 0..0"
* Design.administrativeInformation.statusWhenIntervention ^base.path = "Design.administrativeInformation.statusWhenIntervention"
* Design.administrativeInformation.statusWhenIntervention ^base.min = 0
* Design.administrativeInformation.statusWhenIntervention ^base.max = "*"
* Design.administrativeInformation.statusWhenIntervention ^binding.description = "NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local"
* Design.administrativeInformation.stageStopped 0..* CodeableConcept "stageStopped" "Stopping stage"
* Design.administrativeInformation.stageStopped from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* Design.administrativeInformation.stageStopped ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and\n                                quality management halted prematurely and will not resume'); otherwise 0..0"
* Design.administrativeInformation.stageStopped ^requirements = "Specification of the stage at which the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.stageStopped ^base.path = "Design.administrativeInformation.stageStopped"
* Design.administrativeInformation.stageStopped ^base.min = 0
* Design.administrativeInformation.stageStopped ^base.max = "*"
* Design.administrativeInformation.stageStopped ^binding.description = "NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local"
* Design.administrativeInformation.reasonStopped 0..* string "reasonStopped" "Stopping reason"
* Design.administrativeInformation.reasonStopped ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and\n                                quality management halted prematurely and will not resume'); otherwise 0..0"
* Design.administrativeInformation.reasonStopped ^requirements = "Specification of the reasons why the [RESOURCE] was prematurely stopped, for example due to toxicity, closed due to lack of study progress, temporarily closed per study design."
* Design.administrativeInformation.reasonStopped ^base.path = "Design.administrativeInformation.reasonStopped"
* Design.administrativeInformation.reasonStopped ^base.min = 0
* Design.administrativeInformation.reasonStopped ^base.max = "*"
* Design.administrativeInformation.reasonStopped ^example.label = "example 1"
* Design.administrativeInformation.reasonStopped ^example.valueString = "accrual goal met"
* Design.administrativeInformation.statusEnrollingByInvitation 0..* CodeableConcept "statusEnrollingByInvitation" "Participants enrolled by invitation?"
* Design.administrativeInformation.statusEnrollingByInvitation from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.administrativeInformation.statusEnrollingByInvitation ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.administrativeInformation.statusEnrollingByInvitation ^requirements = "Specification whether participants are selected from a predetermined population."
* Design.administrativeInformation.statusEnrollingByInvitation ^base.path = "Design.administrativeInformation.statusEnrollingByInvitation"
* Design.administrativeInformation.statusEnrollingByInvitation ^base.min = 0
* Design.administrativeInformation.statusEnrollingByInvitation ^base.max = "*"
* Design.administrativeInformation.statusEnrollingByInvitation ^binding.description = "NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT"
* Design.administrativeInformation.recruitmentStatusRegister 0..* CodeableConcept "recruitmentStatusRegister" "Overall recruitment status from the register of clinical trials"
* Design.administrativeInformation.recruitmentStatusRegister from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-recruitment-register-nci-sct-local (required)
* Design.administrativeInformation.recruitmentStatusRegister ^comment = "Additional information: The item applies only to studies automatically uploaded from the registers of clinical trials."
* Design.administrativeInformation.recruitmentStatusRegister ^requirements = "Overall recruitment status of the study as indicated in the corresponding register of clinical trials."
* Design.administrativeInformation.recruitmentStatusRegister ^base.path = "Design.administrativeInformation.recruitmentStatusRegister"
* Design.administrativeInformation.recruitmentStatusRegister ^base.min = 0
* Design.administrativeInformation.recruitmentStatusRegister ^base.max = "*"
* Design.administrativeInformation.recruitmentStatusRegister ^binding.description = "NFDI4Health_VS_MDS_Study_Recruitment_Register_NCI_SCT_Local"
* Design.administrativeInformation.startDate 0..* date "startDate" "Start date"
* Design.administrativeInformation.startDate ^comment = "Additional information: Preferred date format: DD.MM.YYYY."
* Design.administrativeInformation.startDate ^requirements = "In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date."
* Design.administrativeInformation.startDate ^base.path = "Design.administrativeInformation.startDate"
* Design.administrativeInformation.startDate ^base.min = 0
* Design.administrativeInformation.startDate ^base.max = "*"
* Design.administrativeInformation.endDate 0..* date "endDate" "End date"
* Design.administrativeInformation.endDate ^comment = "Additional information: Preferred date format: DD.MM.YYYY."
* Design.administrativeInformation.endDate ^requirements = "In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date.\n \nIn case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."
* Design.administrativeInformation.endDate ^base.path = "Design.administrativeInformation.endDate"
* Design.administrativeInformation.endDate ^base.min = 0
* Design.administrativeInformation.endDate ^base.max = "*"
* Design.centers 0..* CodeableConcept "centers" "Mono- or multicentric?"
* Design.centers from NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local (required)
* Design.centers ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.centers ^requirements = "Specification whether the data are collected at only one or at more than one study center."
* Design.centers ^base.path = "Design.centers"
* Design.centers ^base.min = 0
* Design.centers ^base.max = "*"
* Design.centers ^binding.description = "NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local"
* Design.centersNumber 0..* Quantity "centersNumber" "Number of centers"
* Design.centersNumber ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.centers == 'Multicentric'; otherwise 0..0"
* Design.centersNumber ^requirements = "Number of study centers involved in data collection."
* Design.centersNumber ^base.path = "Design.centersNumber"
* Design.centersNumber ^base.min = 0
* Design.centersNumber ^base.max = "*"
* Design.dataProviders 0..* CodeableConcept "dataProviders" "One or more data providers?"
* Design.dataProviders from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-providers-local (required)
* Design.dataProviders ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise 0..0"
* Design.dataProviders ^requirements = "Specification whether the [RESOURCE] involves only one or more than one data provider."
* Design.dataProviders ^base.path = "Design.dataProviders"
* Design.dataProviders ^base.min = 0
* Design.dataProviders ^base.max = "*"
* Design.dataProviders ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Providers_Local"
* Design.dataProvidersNumber 0..* Quantity "dataProvidersNumber" "Number of data providers"
* Design.dataProvidersNumber ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Registry' OR 'Secondary data source') AND Design.dataProviders == 'Several data providers'; otherwise 0..0"
* Design.dataProvidersNumber ^requirements = "Number of data providers involved in the [RESOURCE]."
* Design.dataProvidersNumber ^base.path = "Design.dataProvidersNumber"
* Design.dataProvidersNumber ^base.min = 0
* Design.dataProvidersNumber ^base.max = "*"
* Design.subject 0..* CodeableConcept "subject" "Primary subject"
* Design.subject from NFDI4Health_VS_MDS_Study_Subject_SNOMEDCT (required)
* Design.subject ^comment = "Cardinality: 1..1"
* Design.subject ^requirements = "The primary subject addressed by the [RESOURCE], for example persons, animals or other subject types."
* Design.subject ^base.path = "Design.subject"
* Design.subject ^base.min = 0
* Design.subject ^base.max = "*"
* Design.subject ^binding.description = "NFDI4Health_VS_MDS_Study_Subject_SNOMEDCT"
* Design.sampling 0..* BackboneElement "sampling" "Sampling method"
* Design.sampling ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.sampling ^requirements = "Group of items providing information about the applied sampling method."
* Design.sampling ^base.path = "Design.sampling"
* Design.sampling ^base.min = 0
* Design.sampling ^base.max = "*"
* Design.sampling.method 0..* CodeableConcept "method" "Applied sampling method"
* Design.sampling.method from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-nci-local (required)
* Design.sampling.method ^comment = "Cardinality: 1..1"
* Design.sampling.method ^requirements = "Type of the sampling method applied for the selection of participants."
* Design.sampling.method ^base.path = "Design.sampling.method"
* Design.sampling.method ^base.min = 0
* Design.sampling.method ^base.max = "*"
* Design.sampling.method ^binding.description = "NFDI4Health_VS_MDS_Study_Sampling_Method_NCI_Local"
* Design.sampling.probabilityMethod 0..* CodeableConcept "probabilityMethod" "Specific type of probability sampling"
* Design.sampling.probabilityMethod from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-prob-method-nci-local (required)
* Design.sampling.probabilityMethod ^comment = "Cardinality: 0..1, if Design.sampling.method == 'Probability'; otherwise 0..0"
* Design.sampling.probabilityMethod ^requirements = "Specific type of the probability sampling method applied for the selection of participants."
* Design.sampling.probabilityMethod ^base.path = "Design.sampling.probabilityMethod"
* Design.sampling.probabilityMethod ^base.min = 0
* Design.sampling.probabilityMethod ^base.max = "*"
* Design.sampling.probabilityMethod ^binding.description = "NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI_local"
* Design.sampling.nonProbabilityMethod 0..* CodeableConcept "nonProbabilityMethod" "Specific type of non-probability sampling"
* Design.sampling.nonProbabilityMethod from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local (required)
* Design.sampling.nonProbabilityMethod ^comment = "Cardinality: 0..1, if Design.sampling.method == 'Non-probability'; otherwise 0..0"
* Design.sampling.nonProbabilityMethod ^requirements = "Specific type of the non-probability sampling method applied for the selection of participants."
* Design.sampling.nonProbabilityMethod ^base.path = "Design.sampling.nonProbabilityMethod"
* Design.sampling.nonProbabilityMethod ^base.min = 0
* Design.sampling.nonProbabilityMethod ^base.max = "*"
* Design.sampling.nonProbabilityMethod ^binding.description = "NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_NCI_Local"
* Design.dataSource 0..* BackboneElement "dataSource" "Data sources of the [RESOURCE]"
* Design.dataSource ^comment = "Cardinality: 0..1"
* Design.dataSource ^requirements = "Group of items providing information about data sources from which the data of the [RESOURCE] are generated or extracted."
* Design.dataSource ^base.path = "Design.dataSource"
* Design.dataSource ^base.min = 0
* Design.dataSource ^base.max = "*"
* Design.dataSource.general 0..* CodeableConcept "general" "Types of data sources"
* Design.dataSource.general from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sources-general-nci-local (required)
* Design.dataSource.general ^comment = "Cardinality: 0..*"
* Design.dataSource.general ^requirements = "Different types of data sources from which the data of the [RESOURCE] are generated or extracted."
* Design.dataSource.general ^base.path = "Design.dataSource.general"
* Design.dataSource.general ^base.min = 0
* Design.dataSource.general ^base.max = "*"
* Design.dataSource.general ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sources_General_NCI_Local"
* Design.dataSource.biosamples 0..* CodeableConcept "biosamples" "Biosamples collected"
* Design.dataSource.biosamples from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-ds-biosamples-sct-nci (required)
* Design.dataSource.biosamples ^comment = "Cardinality: 0..*, if Design.dataSource.general == 'Biological samples'; otherwise 0..0"
* Design.dataSource.biosamples ^requirements = "Specification of biosamples collected in the [RESOURCE]."
* Design.dataSource.biosamples ^base.path = "Design.dataSource.biosamples"
* Design.dataSource.biosamples ^base.min = 0
* Design.dataSource.biosamples ^base.max = "*"
* Design.dataSource.biosamples ^binding.description = "NFDI4Health_VS_MDS_Study_DS_Biosamples_SCT_NCI"
* Design.dataSource.imaging 0..* CodeableConcept "imaging" "Imaging data collected"
* Design.dataSource.imaging from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sources-imaging-nci (required)
* Design.dataSource.imaging ^comment = "Cardinality: 0..*, if Design.dataSource.general == 'Imaging data'; otherwise 0..0"
* Design.dataSource.imaging ^requirements = "Specification of imaging data collected in the [RESOURCE]."
* Design.dataSource.imaging ^base.path = "Design.dataSource.imaging"
* Design.dataSource.imaging ^base.min = 0
* Design.dataSource.imaging ^base.max = "*"
* Design.dataSource.imaging ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI"
* Design.dataSource.omics 0..* CodeableConcept "omics" "Omics technologies used"
* Design.dataSource.omics from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sources-omics-nci (required)
* Design.dataSource.omics ^comment = "Cardinality: 0..*, if Design.dataSource.general == 'Omics technology'; otherwise 0..0"
* Design.dataSource.omics ^requirements = "Specification of omics technologies applied in the [RESOURCE]."
* Design.dataSource.omics ^base.path = "Design.dataSource.omics"
* Design.dataSource.omics ^base.min = 0
* Design.dataSource.omics ^base.max = "*"
* Design.dataSource.omics ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI"
* Design.dataSource.description 0..* string "description" "Additional information about data sources"
* Design.dataSource.description ^comment = "Cardinality: 0..1"
* Design.dataSource.description ^requirements = "If needed, additional descriptive information about the data sources of the [RESOURCE], for example indication of data sources not listed in the field 'Type(s) of data sources' or a more detailed description of the selected data sources."
* Design.dataSource.description ^base.path = "Design.dataSource.description"
* Design.dataSource.description ^base.min = 0
* Design.dataSource.description ^base.max = "*"
* Design.primaryPurpose 0..* CodeableConcept "primaryPurpose" "Primary purpose of the [RESOURCE]"
* Design.primaryPurpose from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-primary-purpose-hl7-nci (required)
* Design.primaryPurpose ^comment = "Additional information: The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be\n                        selected."
* Design.primaryPurpose ^requirements = "Foremost for interventional studies, please specify the primary purpose why the study was conducted. For non-interventional studies, this field may be 'Not applicable' as multiple purposes may be defined as primary ones."
* Design.primaryPurpose ^base.path = "Design.primaryPurpose"
* Design.primaryPurpose ^base.min = 0
* Design.primaryPurpose ^base.max = "*"
* Design.primaryPurpose ^binding.description = "NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI"
* Design.eligibilityCriteria 0..* BackboneElement "eligibilityCriteria" "Eligibility criteria"
* Design.eligibilityCriteria ^comment = "Cardinality: 0..1"
* Design.eligibilityCriteria ^requirements = "Group of items providing information about eligibility criteria for participants."
* Design.eligibilityCriteria ^base.path = "Design.eligibilityCriteria"
* Design.eligibilityCriteria ^base.min = 0
* Design.eligibilityCriteria ^base.max = "*"
* Design.eligibilityCriteria.ageMin 0..* BackboneElement "ageMin" "Eligibility criteria: Minimum age"
* Design.eligibilityCriteria.ageMin ^comment = "Cardinality: 0..1"
* Design.eligibilityCriteria.ageMin ^requirements = "Group of items providing information about the minimum eligible age of participants."
* Design.eligibilityCriteria.ageMin ^base.path = "Design.eligibilityCriteria.ageMin"
* Design.eligibilityCriteria.ageMin ^base.min = 0
* Design.eligibilityCriteria.ageMin ^base.max = "*"
* Design.eligibilityCriteria.ageMin.number 0..* Quantity "number" "Minimum eligible age"
* Design.eligibilityCriteria.ageMin.number ^comment = "Additional information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'."
* Design.eligibilityCriteria.ageMin.number ^requirements = "Numerical value of the minimum age of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.ageMin.number ^base.path = "Design.eligibilityCriteria.ageMin.number"
* Design.eligibilityCriteria.ageMin.number ^base.min = 0
* Design.eligibilityCriteria.ageMin.number ^base.max = "*"
* Design.eligibilityCriteria.ageMin.timeUnit 0..* CodeableConcept "timeUnit" "Unit of age"
* Design.eligibilityCriteria.ageMin.timeUnit from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum-loinc (required)
* Design.eligibilityCriteria.ageMin.timeUnit ^comment = "Cardinality: 1..1"
* Design.eligibilityCriteria.ageMin.timeUnit ^requirements = "Unit of measurement used to describe the minimum eligible age."
* Design.eligibilityCriteria.ageMin.timeUnit ^base.path = "Design.eligibilityCriteria.ageMin.timeUnit"
* Design.eligibilityCriteria.ageMin.timeUnit ^base.min = 0
* Design.eligibilityCriteria.ageMin.timeUnit ^base.max = "*"
* Design.eligibilityCriteria.ageMin.timeUnit ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC"
* Design.eligibilityCriteria.ageMax 0..* BackboneElement "ageMax" "Eligibility criteria: Maximum age"
* Design.eligibilityCriteria.ageMax ^comment = "Cardinality: 0..1"
* Design.eligibilityCriteria.ageMax ^requirements = "Group of items providing information about the maximum eligible age of participants."
* Design.eligibilityCriteria.ageMax ^base.path = "Design.eligibilityCriteria.ageMax"
* Design.eligibilityCriteria.ageMax ^base.min = 0
* Design.eligibilityCriteria.ageMax ^base.max = "*"
* Design.eligibilityCriteria.ageMax.number 0..* Quantity "number" "Maximum eligible age"
* Design.eligibilityCriteria.ageMax.number ^comment = "Additional information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'."
* Design.eligibilityCriteria.ageMax.number ^requirements = "**Description: **Numerical value of the maximum age of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.ageMax.number ^base.path = "Design.eligibilityCriteria.ageMax.number"
* Design.eligibilityCriteria.ageMax.number ^base.min = 0
* Design.eligibilityCriteria.ageMax.number ^base.max = "*"
* Design.eligibilityCriteria.ageMax.timeUnit 0..* CodeableConcept "timeUnit" "Unit of age"
* Design.eligibilityCriteria.ageMax.timeUnit from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum-loinc (required)
* Design.eligibilityCriteria.ageMax.timeUnit ^comment = "Cardinality: 1..1"
* Design.eligibilityCriteria.ageMax.timeUnit ^requirements = "**Description: **Unit of measurement used to describe the maximum eligible age."
* Design.eligibilityCriteria.ageMax.timeUnit ^base.path = "Design.eligibilityCriteria.ageMax.timeUnit"
* Design.eligibilityCriteria.ageMax.timeUnit ^base.min = 0
* Design.eligibilityCriteria.ageMax.timeUnit ^base.max = "*"
* Design.eligibilityCriteria.ageMax.timeUnit ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC"
* Design.eligibilityCriteria.genders 0..* CodeableConcept "genders" "Eligible gender"
* Design.eligibilityCriteria.genders from NFDI4Health_VS_MDS_Study_Eligibility_Gender_SNOMEDCT_Local (required)
* Design.eligibilityCriteria.genders ^comment = "Cardinality: 0..*"
* Design.eligibilityCriteria.genders ^requirements = "Gender of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.genders ^base.path = "Design.eligibilityCriteria.genders"
* Design.eligibilityCriteria.genders ^base.min = 0
* Design.eligibilityCriteria.genders ^base.max = "*"
* Design.eligibilityCriteria.genders ^binding.description = "NFDI4Health_VS_MDS_Study_Eligibility_Gender_SNOMEDCT_Local"
* Design.eligibilityCriteria.inclusionCriteria 0..* string "inclusionCriteria" "Inclusion criteria"
* Design.eligibilityCriteria.inclusionCriteria ^comment = "Cardinality: 0..1"
* Design.eligibilityCriteria.inclusionCriteria ^requirements = "Inclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.inclusionCriteria ^base.path = "Design.eligibilityCriteria.inclusionCriteria"
* Design.eligibilityCriteria.inclusionCriteria ^base.min = 0
* Design.eligibilityCriteria.inclusionCriteria ^base.max = "*"
* Design.eligibilityCriteria.inclusionCriteria ^example.label = "example 1"
* Design.eligibilityCriteria.inclusionCriteria ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"
* Design.eligibilityCriteria.exclusionCriteria 0..* string "exclusionCriteria" "Exclusion criteria"
* Design.eligibilityCriteria.exclusionCriteria ^comment = "Cardinality: 0..1"
* Design.eligibilityCriteria.exclusionCriteria ^requirements = "Exclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.exclusionCriteria ^base.path = "Design.eligibilityCriteria.exclusionCriteria"
* Design.eligibilityCriteria.exclusionCriteria ^base.min = 0
* Design.eligibilityCriteria.exclusionCriteria ^base.max = "*"
* Design.eligibilityCriteria.exclusionCriteria ^example.label = "example 1"
* Design.eligibilityCriteria.exclusionCriteria ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"
* Design.population 0..* BackboneElement "population" "Population of the [RESOURCE]"
* Design.population ^comment = "Cardinality: 1..1"
* Design.population ^requirements = "Group of items providing information about the population of the [RESOURCE]."
* Design.population ^base.path = "Design.population"
* Design.population ^base.min = 0
* Design.population ^base.max = "*"
* Design.population.coverage 0..* CodeableConcept "coverage" "Coverage"
* Design.population.coverage from NFDI4Health_VS_MDS_Population_Coverage_NCI (required)
* Design.population.coverage ^comment = "Cardinality: 0..1"
* Design.population.coverage ^requirements = "Specification of the recruitment area of the [RESOURCE]."
* Design.population.coverage ^base.path = "Design.population.coverage"
* Design.population.coverage ^base.min = 0
* Design.population.coverage ^base.max = "*"
* Design.population.coverage ^binding.description = "NFDI4Health_VS_MDS_Population_Coverage_NCI"
* Design.population.countries 0..* CodeableConcept "countries" "Countries"
* Design.population.countries from http://hl7.org/fhir/ValueSet/country(required)
* Design.population.countries ^comment = "Cardinality: 1..*"
* Design.population.countries ^requirements = "Country or countries where the [RESOURCE] takes place."
* Design.population.countries ^base.path = "Design.population.countries"
* Design.population.countries ^base.min = 0
* Design.population.countries ^base.max = "*"
* Design.population.countries ^binding.description = "http://hl7.org/fhir/ValueSet/country"
* Design.population.region 0..* string "region" "Regions and/or cities"
* Design.population.region ^comment = "Cardinality: 0..1"
* Design.population.region ^requirements = "If applicable, regions and/or cities within a country where the [RESOURCE] takes place."
* Design.population.region ^base.path = "Design.population.region"
* Design.population.region ^base.min = 0
* Design.population.region ^base.max = "*"
* Design.population.description 0..* string "description" "Population description"
* Design.population.description ^comment = "Cardinality: 0..1"
* Design.population.description ^requirements = "Additional descriptive information providing more details about the population of the [RESOURCE]."
* Design.population.description ^base.path = "Design.population.description"
* Design.population.description ^base.min = 0
* Design.population.description ^base.max = "*"
* Design.population.targetSampleSize 0..* Quantity "targetSampleSize" "Target sample size"
* Design.population.targetSampleSize ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.population.targetSampleSize ^requirements = "Intended number of observational units for the whole [RESOURCE] (for example intended number of participants at all sites)."
* Design.population.targetSampleSize ^base.path = "Design.population.targetSampleSize"
* Design.population.targetSampleSize ^base.min = 0
* Design.population.targetSampleSize ^base.max = "*"
* Design.population.obtainedSampleSize 0..* Quantity "obtainedSampleSize" "Obtained sample size"
* Design.population.obtainedSampleSize ^comment = "Additional information: The value is only available after the end of recruitment."
* Design.population.obtainedSampleSize ^requirements = "Obtained number of observational units for the whole [RESOURCE] (for example obtained number of participants at all sites)."
* Design.population.obtainedSampleSize ^base.path = "Design.population.obtainedSampleSize"
* Design.population.obtainedSampleSize ^base.min = 0
* Design.population.obtainedSampleSize ^base.max = "*"
* Design.hypotheses 0..* string "hypotheses" "Research questions/hypotheses"
* Design.hypotheses ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.hypotheses ^requirements = "Statement of the research questions and/or hypotheses underlying the [RESOURCE]."
* Design.hypotheses ^base.path = "Design.hypotheses"
* Design.hypotheses ^base.min = 0
* Design.hypotheses ^base.max = "*"
* Design.arms 0..* BackboneElement "arms" "Arms of the study"
* Design.arms ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Interventional'; otherwise 0..0"
* Design.arms ^requirements = "Group of items providing information about the arms of the study."
* Design.arms ^base.path = "Design.arms"
* Design.arms ^base.min = 0
* Design.arms ^base.max = "*"
* Design.arms.label 0..* string "label" "Name of the arm"
* Design.arms.label ^comment = "Additional information: 'Arm' means a pre-specified group or subgroup of participants in the [RESOURCE] assigned to receive specific intervention(s) (or no intervention) according to a protocol."
* Design.arms.label ^requirements = "Short name used to identify the arm."
* Design.arms.label ^base.path = "Design.arms.label"
* Design.arms.label ^base.min = 0
* Design.arms.label ^base.max = "*"
* Design.arms.type 0..* CodeableConcept "type" "Role of the arm"
* Design.arms.type from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-arm-group-type-nci (required)
* Design.arms.type ^comment = "Cardinality: 1..1"
* Design.arms.type ^requirements = "Role of the given arm in the [RESOURCE]."
* Design.arms.type ^base.path = "Design.arms.type"
* Design.arms.type ^base.min = 0
* Design.arms.type ^base.max = "*"
* Design.arms.type ^binding.description = "NFDI4Health_VS_MDS_Study_Arm_Group_Type_NCI"
* Design.arms.description 0..* string "description" "Additional information about the arm"
* Design.arms.description ^comment = "Additional information: If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the [RESOURCE]."
* Design.arms.description ^requirements = "Additional descriptive information about the given arm."
* Design.arms.description ^base.path = "Design.arms.description"
* Design.arms.description ^base.min = 0
* Design.arms.description ^base.max = "*"
* Design.groups 0..* BackboneElement "groups" "Groups/cohorts of the [RESOURCE]"
* Design.groups ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Non-interventional'; otherwise 0..0"
* Design.groups ^requirements = "Group of items providing information about the groups/cohorts of the [RESOURCE]."
* Design.groups ^base.path = "Design.groups"
* Design.groups ^base.min = 0
* Design.groups ^base.max = "*"
* Design.groups.label 0..* string "label" "Name of the group"
* Design.groups.label ^comment = "Additional information: 'Group' means a predefined group (cohort) of participants to be studied."
* Design.groups.label ^requirements = "Short name used to identify the group."
* Design.groups.label ^base.path = "Design.groups.label"
* Design.groups.label ^base.min = 0
* Design.groups.label ^base.max = "*"
* Design.groups.description 0..* string "description" "Additional information about the group"
* Design.groups.description ^comment = "Additional information: Explanation of the nature of the group of participants (for example, participants with and without a condition, participants with and without an exposure, etc.)."
* Design.groups.description ^requirements = "Additional descriptive information about the given group."
* Design.groups.description ^base.path = "Design.groups.description"
* Design.groups.description ^base.min = 0
* Design.groups.description ^base.max = "*"
* Design.interventions 0..* BackboneElement "interventions" "Interventions of the [RESOURCE]"
* Design.interventions ^comment = "Additional information: Specification of the intervention(s) associated with each arm."
* Design.interventions ^requirements = "Group of items providing information about the interventions of the [RESOURCE]."
* Design.interventions ^base.path = "Design.interventions"
* Design.interventions ^base.min = 0
* Design.interventions ^base.max = "*"
* Design.interventions.name 0..* string "name" "Name of the intervention"
* Design.interventions.name ^comment = "Cardinality: 1..1"
* Design.interventions.name ^requirements = "A short descriptive name of the intervention."
* Design.interventions.name ^base.path = "Design.interventions.name"
* Design.interventions.name ^base.min = 0
* Design.interventions.name ^base.max = "*"
* Design.interventions.type 0..* CodeableConcept "type" "Type of the intervention"
* Design.interventions.type from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-intervention-type-nci (required)
* Design.interventions.type ^comment = "Cardinality: 0..1"
* Design.interventions.type ^requirements = "General type of the given intervention."
* Design.interventions.type ^base.path = "Design.interventions.type"
* Design.interventions.type ^base.min = 0
* Design.interventions.type ^base.max = "*"
* Design.interventions.type ^binding.description = "NFDI4Health_VS_MDS_Study_Intervention_Type_NCI"
* Design.interventions.description 0..* string "description" "Additional information about the intervention"
* Design.interventions.description ^comment = "Cardinality: 0..1"
* Design.interventions.description ^requirements = "If needed, additional descriptive information about the given intervention."
* Design.interventions.description ^base.path = "Design.interventions.description"
* Design.interventions.description ^base.min = 0
* Design.interventions.description ^base.max = "*"
* Design.interventions.armsLabel 0..* string "armsLabel" "Name(s) of the arm(s) associated with the given intervention"
* Design.interventions.armsLabel ^comment = "Cardinality: 0..*"
* Design.interventions.armsLabel ^requirements = "Name(s) of the arm(s) of the [RESOURCE] associated with the given intervention."
* Design.interventions.armsLabel ^base.path = "Design.interventions.armsLabel"
* Design.interventions.armsLabel ^base.min = 0
* Design.interventions.armsLabel ^base.max = "*"
* Design.exposures 0..* BackboneElement "exposures" "Exposures"
* Design.exposures ^comment = "Additional information: Specification of the exposure(s) associated with each group."
* Design.exposures ^requirements = "Group of items providing information about the exposures of the [RESOURCE]."
* Design.exposures ^base.path = "Design.exposures"
* Design.exposures ^base.min = 0
* Design.exposures ^base.max = "*"
* Design.exposures.name 0..* string "name" "Name of the exposure"
* Design.exposures.name ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.exposures.name ^requirements = "A short descriptive name of the exposure."
* Design.exposures.name ^base.path = "Design.exposures.name"
* Design.exposures.name ^base.min = 0
* Design.exposures.name ^base.max = "*"
* Design.exposures.type 0..* CodeableConcept "type" "Type of the exposure"
* Design.exposures.type from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-exposure-type-nci (required)
* Design.exposures.type ^comment = "Cardinality: 0..1"
* Design.exposures.type ^requirements = "General type of the given exposure."
* Design.exposures.type ^base.path = "Design.exposures.type"
* Design.exposures.type ^base.min = 0
* Design.exposures.type ^base.max = "*"
* Design.exposures.type ^binding.description = "NFDI4Health_VS_MDS_Study_Exposure_Type_NCI"
* Design.exposures.description 0..* string "description" "Additional information about the exposure"
* Design.exposures.description ^comment = "Cardinality: 0..1"
* Design.exposures.description ^requirements = "If needed, additional descriptive information about the given exposure."
* Design.exposures.description ^base.path = "Design.exposures.description"
* Design.exposures.description ^base.min = 0
* Design.exposures.description ^base.max = "*"
* Design.exposures.groupsLabel 0..* string "groupsLabel" "Name(s) of the group(s) associated with the given exposure"
* Design.exposures.groupsLabel ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.exposures.groupsLabel ^requirements = "Name(s) of the group(s) of the [RESOURCE] associated with the given exposure."
* Design.exposures.groupsLabel ^base.path = "Design.exposures.groupsLabel"
* Design.exposures.groupsLabel ^base.min = 0
* Design.exposures.groupsLabel ^base.max = "*"
* Design.outcomes 0..* BackboneElement "outcomes" "Outcome measures"
* Design.outcomes ^comment = "Additional information: The items are optional, especially for non-interventional studies."
* Design.outcomes ^requirements = "Group of items providing information about outcome measures."
* Design.outcomes ^base.path = "Design.outcomes"
* Design.outcomes ^base.min = 0
* Design.outcomes ^base.max = "*"
* Design.outcomes.title 0..* string "title" "Name of the outcome measure"
* Design.outcomes.title ^comment = "Cardinality: 1..1"
* Design.outcomes.title ^requirements = "Name of the outcome measure.\nFor non-interventional studies, this can be the name of specific measurements or observations used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* Design.outcomes.title ^base.path = "Design.outcomes.title"
* Design.outcomes.title ^base.min = 0
* Design.outcomes.title ^base.max = "*"
* Design.outcomes.description 0..* string "description" "Description of the outcome measure"
* Design.outcomes.description ^comment = "Cardinality: 0..1"
* Design.outcomes.description ^requirements = "Additional descriptive information about the given outcome."
* Design.outcomes.description ^base.path = "Design.outcomes.description"
* Design.outcomes.description ^base.min = 0
* Design.outcomes.description ^base.max = "*"
* Design.outcomes.type 0..* CodeableConcept "type" "Type of the outcome measure"
* Design.outcomes.type from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-outcome-type-nci (required)
* Design.outcomes.type ^comment = "Cardinality: 1..1, if (Design.outcomes.title != Null OR Design.outcomes.description != Null); otherwise 0..0"
* Design.outcomes.type ^requirements = "The type indicates the degree of importance of the outcome measure in the [RESOURCE]."
* Design.outcomes.type ^base.path = "Design.outcomes.type"
* Design.outcomes.type ^base.min = 0
* Design.outcomes.type ^base.max = "*"
* Design.outcomes.type ^binding.description = "NFDI4Health_VS_MDS_Study_Outcome_Type_NCI"
* Design.outcomes.timeFrame 0..* string "timeFrame" "Time point(s) of assessment"
* Design.outcomes.timeFrame ^comment = "Cardinality: 0..1"
* Design.outcomes.timeFrame ^requirements = "Description of the time point(s) at which the measurement for the outcome is assessed, for example the specific duration of time over which each participant is assessed."
* Design.outcomes.timeFrame ^base.path = "Design.outcomes.timeFrame"
* Design.outcomes.timeFrame ^base.min = 0
* Design.outcomes.timeFrame ^base.max = "*"
* Design.comment 0..* string "comment" "Additional information about the [RESOURCE]"
* Design.comment ^comment = "Cardinality: 0..1"
* Design.comment ^requirements = "Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields."
* Design.comment ^base.path = "Design.comment"
* Design.comment ^base.min = 0
* Design.comment ^base.max = "*"
* Design.assessments 0..* CodeableConcept "assessments" "Additional assessments and measurements"
* Design.assessments from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-assessments-sct-nci (required)
* Design.assessments ^comment = "Cardinality: 0..*"
* Design.assessments ^requirements = "Any additional assessments/measurements included in the [RESOURCE]."
* Design.assessments ^base.path = "Design.assessments"
* Design.assessments ^base.min = 0
* Design.assessments ^base.max = "*"
* Design.assessments ^binding.description = "NFDI4Health_VS_MDS_Study_Assessments_SCT_NCI"
* Design.dataSharingPlan 0..* BackboneElement "dataSharingPlan" "Data sharing"
* Design.dataSharingPlan ^comment = "Cardinality: 1..1"
* Design.dataSharingPlan ^requirements = "Group of items providing information regarding the sharing of data by the [RESOURCE]."
* Design.dataSharingPlan ^base.path = "Design.dataSharingPlan"
* Design.dataSharingPlan ^base.min = 0
* Design.dataSharingPlan ^base.max = "*"
* Design.dataSharingPlan.generally 0..* CodeableConcept "generally" "Is it planned to share the data?"
* Design.dataSharingPlan.generally from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-undecided-snomedct-nci (required)
* Design.dataSharingPlan.generally ^comment = "Cardinality: 1..1"
* Design.dataSharingPlan.generally ^requirements = "Indication whether there is a plan to make data collected in the [RESOURCE] available. In case of a [RESOURCE] with patients or other individuals, this refers to individual participant data (IPD)."
* Design.dataSharingPlan.generally ^base.path = "Design.dataSharingPlan.generally"
* Design.dataSharingPlan.generally ^base.min = 0
* Design.dataSharingPlan.generally ^base.max = "*"
* Design.dataSharingPlan.generally ^binding.description = "NFDI4Health_VS_MDS_Yes_No_Undecided_NCI"
* Design.dataSharingPlan.supportingInformation 0..* CodeableConcept "supportingInformation" "Supporting documents available in addition to the data"
* Design.dataSharingPlan.supportingInformation from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sharing-plan-sup-inf-nci-local (required)
* Design.dataSharingPlan.supportingInformation ^comment = "Cardinality: 0..*, if Design.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0"
* Design.dataSharingPlan.supportingInformation ^requirements = "Supporting information and documents which will be made available in addition to the data collected in the [RESOURCE]."
* Design.dataSharingPlan.supportingInformation ^base.path = "Design.dataSharingPlan.supportingInformation"
* Design.dataSharingPlan.supportingInformation ^base.min = 0
* Design.dataSharingPlan.supportingInformation ^base.max = "*"
* Design.dataSharingPlan.supportingInformation ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Supporting_Information_NCI_Local"
* Design.dataSharingPlan.timeFrame 0..* string "timeFrame" "When and for how long will the data be available?"
* Design.dataSharingPlan.timeFrame ^comment = "Cardinality: 0..1, if Design.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0"
* Design.dataSharingPlan.timeFrame ^requirements = "Indication of the time period for which the data and, if applicable, supporting documents will be made available."
* Design.dataSharingPlan.timeFrame ^base.path = "Design.dataSharingPlan.timeFrame"
* Design.dataSharingPlan.timeFrame ^base.min = 0
* Design.dataSharingPlan.timeFrame ^base.max = "*"
* Design.dataSharingPlan.accessCriteria 0..* string "accessCriteria" "Criteria for data access"
* Design.dataSharingPlan.accessCriteria ^comment = "Cardinality: 0..1, if Design.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0"
* Design.dataSharingPlan.accessCriteria ^requirements = "Indication of the access criteria by which the data will be shared, including: a) with whom; b) for which types of analyses; and c) by what mechanism."
* Design.dataSharingPlan.accessCriteria ^base.path = "Design.dataSharingPlan.accessCriteria"
* Design.dataSharingPlan.accessCriteria ^base.min = 0
* Design.dataSharingPlan.accessCriteria ^base.max = "*"
* Design.dataSharingPlan.description 0..* string "description" "Additional information about data sharing"
* Design.dataSharingPlan.description ^comment = "Cardinality: 0..1"
* Design.dataSharingPlan.description ^requirements = "Additional descriptive information providing more details about data sharing, for example indication of which data in particular will be shared or why the data will not be shared or why it is not yet decided."
* Design.dataSharingPlan.description ^base.path = "Design.dataSharingPlan.description"
* Design.dataSharingPlan.description ^base.min = 0
* Design.dataSharingPlan.description ^base.max = "*"
* Design.dataSharingPlan.datashield 0..* CodeableConcept "datashield" "DataSHIELD/Opal infrastructure available?"
* Design.dataSharingPlan.datashield from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-data-sharing-plan-ds-sct-nci (required)
* Design.dataSharingPlan.datashield ^comment = "Cardinality: 0..1"
* Design.dataSharingPlan.datashield ^requirements = "Indication whether the DataSHIELD/Opal infrastructure is available."
* Design.dataSharingPlan.datashield ^base.path = "Design.dataSharingPlan.datashield"
* Design.dataSharingPlan.datashield ^base.min = 0
* Design.dataSharingPlan.datashield ^base.max = "*"
* Design.dataSharingPlan.datashield ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Datashield_SCT_NCI"
* Design.dataSharingPlan.requestData 0..* string "requestData" "Link to data request application"
* Design.dataSharingPlan.requestData ^comment = "Cardinality: 0..1"
* Design.dataSharingPlan.requestData ^requirements = "If existing, a link to the web page where the data request form and/or information on data reuse can be found."
* Design.dataSharingPlan.requestData ^base.path = "Design.dataSharingPlan.requestData"
* Design.dataSharingPlan.requestData ^base.min = 0
* Design.dataSharingPlan.requestData ^base.max = "*"
* Design.dataSharingPlan.url 0..* string "url" "Web page with additional information about data sharing"
* Design.dataSharingPlan.url ^comment = "Cardinality: 0..1"
* Design.dataSharingPlan.url ^requirements = "If existing, a link to the web page where additional information about data sharing can be found."
* Design.dataSharingPlan.url ^base.path = "Design.dataSharingPlan.url"
* Design.dataSharingPlan.url ^base.min = 0
* Design.dataSharingPlan.url ^base.max = "*"
* Design.dataSharingPlan.recordLinkage 0..* boolean "recordLinkage" "Record linkage possible?"
* Design.dataSharingPlan.recordLinkage ^comment = "Additional information: Record linkage refers to the merging of data on the same person from different databases."
* Design.dataSharingPlan.recordLinkage ^requirements = "Indication if record linkage with other data sources is possible."
* Design.dataSharingPlan.recordLinkage ^base.path = "Design.dataSharingPlan.recordLinkage"
* Design.dataSharingPlan.recordLinkage ^base.min = 0
* Design.dataSharingPlan.recordLinkage ^base.max = "*"
* Design.nonInterventional 0..* BackboneElement "nonInterventional" "Non-interventional aspects of the [RESOURCE]"
* Design.nonInterventional ^comment = "Additional information: Group of items applicable only to non-interventional resources."
* Design.nonInterventional ^requirements = "Group of items providing information about specific non-interventional aspects of the [RESOURCE]."
* Design.nonInterventional ^base.path = "Design.nonInterventional"
* Design.nonInterventional ^base.min = 0
* Design.nonInterventional ^base.max = "*"
* Design.nonInterventional.timePerspectives 0..* CodeableConcept "timePerspectives" "Temporal design"
* Design.nonInterventional.timePerspectives from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-time-perspectives-nci (required)
* Design.nonInterventional.timePerspectives ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0"
* Design.nonInterventional.timePerspectives ^requirements = "Temporal design of the study, i.e. the observation period in relation to the time of participant enrollment."
* Design.nonInterventional.timePerspectives ^base.path = "Design.nonInterventional.timePerspectives"
* Design.nonInterventional.timePerspectives ^base.min = 0
* Design.nonInterventional.timePerspectives ^base.max = "*"
* Design.nonInterventional.timePerspectives ^binding.description = "NFDI4Health_VS_MDS_Study_Time_Perspectives_NCI"
* Design.nonInterventional.targetFollowUpDuration 0..* BackboneElement "targetFollowUpDuration" "Target follow-up duration"
* Design.nonInterventional.targetFollowUpDuration ^comment = "Cardinality: 0..1"
* Design.nonInterventional.targetFollowUpDuration ^requirements = "If applicable, anticipated time period over which each participant would be followed."
* Design.nonInterventional.targetFollowUpDuration ^base.path = "Design.nonInterventional.targetFollowUpDuration"
* Design.nonInterventional.targetFollowUpDuration ^base.min = 0
* Design.nonInterventional.targetFollowUpDuration ^base.max = "*"
* Design.nonInterventional.targetFollowUpDuration.number 0..* Quantity "number" "Target follow-up duration"
* Design.nonInterventional.targetFollowUpDuration.number ^comment = "Cardinality: 1..1"
* Design.nonInterventional.targetFollowUpDuration.number ^requirements = "Numerical value of the target follow-up duration."
* Design.nonInterventional.targetFollowUpDuration.number ^base.path = "Design.nonInterventional.targetFollowUpDuration.number"
* Design.nonInterventional.targetFollowUpDuration.number ^base.min = 0
* Design.nonInterventional.targetFollowUpDuration.number ^base.max = "*"
* Design.nonInterventional.targetFollowUpDuration.timeUnit 0..* CodeableConcept "timeUnit" "Unit of time"
* Design.nonInterventional.targetFollowUpDuration.timeUnit from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum (required)
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^comment = "Cardinality: 1..1"
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^requirements = "Unit of measurement used to describe the follow-up duration."
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^base.path = "Design.nonInterventional.targetFollowUpDuration.timeUnit"
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^base.min = 0
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^base.max = "*"
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM"
* Design.nonInterventional.targetFollowUpDuration.frequency 0..* Quantity "frequency" "Number of follow-ups conducted"
* Design.nonInterventional.targetFollowUpDuration.frequency ^comment = "Cardinality: 0..1"
* Design.nonInterventional.targetFollowUpDuration.frequency ^requirements = "The number of follow-ups conducted within the specified duration."
* Design.nonInterventional.targetFollowUpDuration.frequency ^base.path = "Design.nonInterventional.targetFollowUpDuration.frequency"
* Design.nonInterventional.targetFollowUpDuration.frequency ^base.min = 0
* Design.nonInterventional.targetFollowUpDuration.frequency ^base.max = "*"
* Design.nonInterventional.biospecimenRetention 0..* CodeableConcept "biospecimenRetention" "Biosamples retained in a biorepository"
* Design.nonInterventional.biospecimenRetention from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-biospecimen-retention-nci (required)
* Design.nonInterventional.biospecimenRetention ^comment = "Cardinality: 0..*"
* Design.nonInterventional.biospecimenRetention ^requirements = "Indication whether samples of biomaterials from participants are retained in a biorepository."
* Design.nonInterventional.biospecimenRetention ^base.path = "Design.nonInterventional.biospecimenRetention"
* Design.nonInterventional.biospecimenRetention ^base.min = 0
* Design.nonInterventional.biospecimenRetention ^base.max = "*"
* Design.nonInterventional.biospecimenRetention ^binding.description = "NFDI4Health_VS_MDS_Study_Biospecimen_Retention_NCI"
* Design.nonInterventional.biospecimenDescription 0..* string "biospecimenDescription" "Specific types of retained biosamples"
* Design.nonInterventional.biospecimenDescription ^comment = "Cardinality: 0..1, if Design.nonInterventional.biospecimenRetention != 'None retained'; otherwise 0..0"
* Design.nonInterventional.biospecimenDescription ^requirements = "Additional information about retained biosamples, i.e. an indication of the specific types of retained biospecimens (e.g. blood, serum, urine, etc.)."
* Design.nonInterventional.biospecimenDescription ^base.path = "Design.nonInterventional.biospecimenDescription"
* Design.nonInterventional.biospecimenDescription ^base.min = 0
* Design.nonInterventional.biospecimenDescription ^base.max = "*"
* Design.nonInterventional.biospecimenDescription ^example.label = "example 1"
* Design.nonInterventional.biospecimenDescription ^example.valueString = "blood"
* Design.interventional 0..* BackboneElement "interventional" "Interventional aspects of the [RESOURCE]"
* Design.interventional ^comment = "Additional information: Group of items applicable only to interventional resources."
* Design.interventional ^requirements = "Group of items providing information about specific interventional aspects of the [RESOURCE]."
* Design.interventional ^base.path = "Design.interventional"
* Design.interventional ^base.min = 0
* Design.interventional ^base.max = "*"
* Design.interventional.phase 0..* CodeableConcept "phase" "Numerical phase"
* Design.interventional.phase from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-phase-nci (required)
* Design.interventional.phase ^comment = "Cardinality: 0..1"
* Design.interventional.phase ^requirements = "If applicable, numerical phase of the [RESOURCE]."
* Design.interventional.phase ^base.path = "Design.interventional.phase"
* Design.interventional.phase ^base.min = 0
* Design.interventional.phase ^base.max = "*"
* Design.interventional.phase ^binding.description = "NFDI4Health_VS_MDS_Study_Phase_NCI"
* Design.interventional.masking 0..* BackboneElement "masking" "Masking of intervention(s) assignment"
* Design.interventional.masking ^comment = "Cardinality: 0..1"
* Design.interventional.masking ^requirements = "Group of items providing information about the masking of intervention(s) assignment."
* Design.interventional.masking ^base.path = "Design.interventional.masking"
* Design.interventional.masking ^base.min = 0
* Design.interventional.masking ^base.max = "*"
* Design.interventional.masking.general 0..* boolean "general" "Masking implemented?"
* Design.interventional.masking.general ^comment = "Cardinality: 0..1"
* Design.interventional.masking.general ^requirements = "Indication whether a masking (or blinding) of intervention(s) assignment is implemented (i.e., whether someone is prevented from having knowledge of the interventions assigned to individual participants)."
* Design.interventional.masking.general ^base.path = "Design.interventional.masking.general"
* Design.interventional.masking.general ^base.min = 0
* Design.interventional.masking.general ^base.max = "*"
* Design.interventional.masking.roles 0..* CodeableConcept "roles" "Who is masked?"
* Design.interventional.masking.roles from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-masking-roles-nci-local (required)
* Design.interventional.masking.roles ^comment = "Cardinality: 0..*, if Design.interventional.masking.general == true; otherwise 0..0"
* Design.interventional.masking.roles ^requirements = "If masking is implemented, the party(ies) who are masked."
* Design.interventional.masking.roles ^base.path = "Design.interventional.masking.roles"
* Design.interventional.masking.roles ^base.min = 0
* Design.interventional.masking.roles ^base.max = "*"
* Design.interventional.masking.roles ^binding.description = "NFDI4Health_VS_MDS_Study_Masking_Roles_NCI_Local"
* Design.interventional.masking.description 0..* string "description" "Additional information about masking"
* Design.interventional.masking.description ^comment = "Cardinality: 0..1, if Design.interventional.masking.general == true; otherwise 0..0"
* Design.interventional.masking.description ^requirements = "If needed, additional descriptive information about masking (e.g. information about other parties who may be masked)."
* Design.interventional.masking.description ^base.path = "Design.interventional.masking.description"
* Design.interventional.masking.description ^base.min = 0
* Design.interventional.masking.description ^base.max = "*"
* Design.interventional.allocation 0..* CodeableConcept "allocation" "Type of allocation of participants to an arm"
* Design.interventional.allocation from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-allocation-nci (required)
* Design.interventional.allocation ^comment = "Cardinality: 0..1"
* Design.interventional.allocation ^requirements = "Type of allocation/assignment of individual participants of the [RESOURCE] to an arm."
* Design.interventional.allocation ^base.path = "Design.interventional.allocation"
* Design.interventional.allocation ^base.min = 0
* Design.interventional.allocation ^base.max = "*"
* Design.interventional.allocation ^binding.description = "NFDI4Health_VS_MDS_Study_Allocation_NCI"
* Design.interventional.offLabelUse 0..* CodeableConcept "offLabelUse" "Off-label use of a drug product"
* Design.interventional.offLabelUse from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.interventional.offLabelUse ^comment = "Cardinality: 0..1"
* Design.interventional.offLabelUse ^requirements = "**Description: **Unapproved (off-label) use of a drug product."
* Design.interventional.offLabelUse ^base.path = "Design.interventional.offLabelUse"
* Design.interventional.offLabelUse ^base.min = 0
* Design.interventional.offLabelUse ^base.max = "*"
* Design.interventional.offLabelUse ^binding.description = "NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT"