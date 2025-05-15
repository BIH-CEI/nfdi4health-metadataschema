Logical: NFDI4Health_LM_MDS_Design
Parent: Element
Id: nfdi4health-lm-mds-design
Title: "NFDI4Health Module Design"
Description: "NFDI4Health Logical Model of Module Design V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-design"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* Design 0..1 BackboneElement "Characteristics of the [RESOURCE]"
* Design ^comment = "Additional information: Group of items applicable only to studies, substudies, registries, and secondary data sources."
* Design ^definition = "Group of items relevant for studies, substudies, registries and/or secondary data sources, including details on targeted health conditions, study population, outcome measures, and study design."

* Design.primaryDesign 0..1 CodeableConcept "Is the study design non-interventional or interventional?"
* Design.primaryDesign from NFDI4Health_VS_MDS_Study_Primary_Design_NCI (required)
* Design.primaryDesign ^comment = "Cardinality: \n*  1..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"

* Design.studyType 0..1 BackboneElement "Information on specific study design"
* Design.studyType ^comment = "Cardinality: \n*  1..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.studyType ^definition = "Group of items providing information about the study design."

* Design.studyType.interventional 0..* CodeableConcept "Interventional study model"
* Design.studyType.interventional from NFDI4Health_VS_MDS_Study_Type_Interventional_NCI (required)
* Design.studyType.interventional ^comment = "Cardinality: \n* 1..*, if Design.primaryDesign == \"Interventional\"\n* 0..0, if Design.primaryDesign != \"Interventional\""
* Design.studyType.interventional ^definition = "The strategy for assigning interventions to participants."

* Design.studyType.nonInterventional 0..* CodeableConcept "Non-interventional study model"
* Design.studyType.nonInterventional from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_NCI_MSH_Local (required)
* Design.studyType.nonInterventional ^comment = "Cardinality: \n* 1..*, if Design.primaryDesign == \"Non-interventional\"\n* 0..0, if Design.primaryDesign != \"Non-interventional\""
* Design.studyType.nonInterventional ^definition = "The primary strategy for participant identification and follow-up."

* Design.conditions 0..* BackboneElement "Primary health conditions or diseases considered in the [RESOURCE]"
* Design.conditions ^definition = "Group of items providing information about primary health conditions or diseases considered in the [RESOURCE]."

* Design.conditions.label 1..1 string "Health condition or disease"
* Design.conditions.label ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed."
* Design.conditions.label ^definition = "The disease, disorder, syndrome, illness, or injury that is being studied. Conditions may also include other health-related issues, such as lifespan, quality of life, and health risks."
* Design.conditions.label ^example.label = "example"
* Design.conditions.label ^example.valueString = "SARS-CoV-2"

* Design.conditions.classification 1..1 CodeableConcept "Terminology/classification"
* Design.conditions.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.conditions.classification ^definition = "Terminology/classification used to specify the health condition or disease."
* Design.conditions.classification ^example.label = "example"
* Design.conditions.classification ^example.valueCodeableConcept.text = "SNOMED CT"

* Design.conditions.code 0..1 string "Code of the health condition or disease"
* Design.conditions.code ^definition = "Code of the health condition or disease in the terminology/classification."
* Design.conditions.code ^example.label = "example"
* Design.conditions.code ^example.valueString = "http://snomed.info/id/840533007"

* Design.focus 0..* BackboneElement "Primary focus of the [RESOURCE]"
* Design.focus ^definition = "Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."

* Design.focus.label 1..1 string "Focus area"
* Design.focus.label ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed."
* Design.focus.label ^definition = "Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."

* Design.focus.classification 1..1  CodeableConcept "Terminology/classification"
* Design.focus.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.focus.classification ^definition = "Terminology/classification used for the focus area."
* Design.focus.classification ^base.path = "Design.focus.classification"
* Design.focus.classification ^example.label = "example"
* Design.focus.classification ^example.valueCodeableConcept.text = "SNOMED CT"

* Design.focus.code 0..1 string "Code of the focus area"
* Design.focus.code ^definition = "Code of the focus area in the terminology/classification."
* Design.focus.code ^example.label = "example"
* Design.focus.code ^example.valueString = "http://snomed.info/id/840533007"

* Design.groupsOfDiseases 1..1 BackboneElement "Groups of diseases or conditions"
* Design.groupsOfDiseases ^definition = "Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases ^base.path = "Design.groupsOfDiseases"

* Design.groupsOfDiseases.generally 1..* CodeableConcept "Which groups of diseases or conditions were the data collected on?"
* Design.groupsOfDiseases.generally from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_SCT (required)
* Design.groupsOfDiseases.generally ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10)."
* Design.groupsOfDiseases.generally ^definition = "General groups of diseases or conditions on which the data were collected."

* Design.groupsOfDiseases.conditions 0..* CodeableConcept "On which diseases or conditions were the data collected?"
* Design.groupsOfDiseases.conditions from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_Conditions_ICD (required)
* Design.groupsOfDiseases.conditions ^comment = "Additional information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10)."
* Design.groupsOfDiseases.conditions ^definition = "Diseases or conditions on which the data were collected in the [RESOURCE]."

* Design.mortalityData 0..1 CodeableConcept "Mortality data collected?"
* Design.mortalityData from NFDI4Health_VS_MDS_Mortality_Data_NCI (required)
* Design.mortalityData ^comment = "Cardinality: \n* 0..1, if (Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.studyType.nonInterventional == (\"Longitudinal\" OR \"Cohort\" OR \"Case-cohort\" OR \"Birth cohort\" OR \"Trend\" OR \"Panel\")) OR Resource.classification.type == (\"Registry\" OR\n                                    \"Secondary data source\")\n* 0..0, if Resource.classification.type != (\"Registry\" OR \"Secondary data source\") AND Design.studyType.nonInterventional != (\"Longitudinal\" OR \"Cohort\" OR \"Case-cohort\" OR \"Birth cohort\" OR \"Trend\" OR \"Panel\")"
* Design.mortalityData ^definition = "Indication whether mortality data are collected in the [RESOURCE]."

* Design.administrativeInformation 0..1 BackboneElement "Administrative information"
* Design.administrativeInformation ^comment = "Cardinality: \n*  1..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..1, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.administrativeInformation ^definition = "Group of items providing administrative information about the [RESOURCE]."

* Design.administrativeInformation.ethicsCommitteeApproval 0..1 CodeableConcept "Status of the ethics committee approval"
* Design.administrativeInformation.ethicsCommitteeApproval from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_NCI_Local (required)
* Design.administrativeInformation.ethicsCommitteeApproval ^definition = "Status of the request for approval from the (leading) ethics committee."

* Design.administrativeInformation.status 0..1 CodeableConcept "Overall status"
* Design.administrativeInformation.status from NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local (required)
* Design.administrativeInformation.status ^comment = "Additional information: If at least one study site in a multicenter study has the status 'Ongoing', then the overall status of the study must be 'Ongoing'. Cardinality: \n*  1..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.administrativeInformation.status ^definition = "Overall status of the [RESOURCE]."

* Design.administrativeInformation.statusWhenIntervention 0..1 CodeableConcept "Is the intervention ongoing or completed?"
* Design.administrativeInformation.statusWhenIntervention from NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local (required)
* Design.administrativeInformation.statusWhenIntervention ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign == \"Interventional\" AND Design.administrativeInformation.status == (\"At the planning stage\" OR \"Ongoing (I): Recruitment ongoing, but data collection not yet\n                                    started\" OR \"Ongoing (II): Recruitment and data collection ongoing\" OR \"Ongoing (III): Recruitment completed, but data collection ongoing\" OR \"Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.primaryDesign != \"Interventional\" OR Design.administrativeInformation.status != (\"At the planning stage\" OR \"Ongoing (I): Recruitment ongoing, but data\n                                    collection not yet started\" OR \"Ongoing (II): Recruitment and data collection ongoing\" OR \"Ongoing (III): Recruitment completed, but data collection ongoing\" OR \"Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing\")"

* Design.administrativeInformation.stageStopped 0..1 CodeableConcept "Stopping stage"
* Design.administrativeInformation.stageStopped from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* Design.administrativeInformation.stageStopped ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.administrativeInformation.status == (\"Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume\" OR \"Terminated: Recruitment, data\n                                    collection, data and quality management halted prematurely and will not resume\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.administrativeInformation.status != (\"Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume\" OR \"Terminated:\n                                    Recruitment, data collection, data and quality management halted prematurely and will not resume\")"
* Design.administrativeInformation.stageStopped ^definition = "Specification of the stage at which the [RESOURCE] was prematurely stopped."

* Design.administrativeInformation.reasonStopped 0..1 string "Stopping reason"
* Design.administrativeInformation.reasonStopped ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.administrativeInformation.status == (\"Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume\" OR \"Terminated: Recruitment, data\n                                    collection, data and quality management halted prematurely and will not resume\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.administrativeInformation.status != (\"Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume\" OR \"Terminated:\n                                    Recruitment, data collection, data and quality management halted prematurely and will not resume\")"
* Design.administrativeInformation.reasonStopped ^definition = "Specification of the reasons why the [RESOURCE] was prematurely stopped, for example due to toxicity, closed due to lack of study progress, temporarily closed per study design."
* Design.administrativeInformation.reasonStopped ^example.label = "example"
* Design.administrativeInformation.reasonStopped ^example.valueString = "accrual goal met"

* Design.administrativeInformation.statusEnrollingByInvitation 0..1 CodeableConcept "Participants enrolled by invitation?"
* Design.administrativeInformation.statusEnrollingByInvitation from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.administrativeInformation.statusEnrollingByInvitation ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.administrativeInformation.statusEnrollingByInvitation ^definition = "Specification whether participants are selected from a predetermined population."

* Design.administrativeInformation.recruitmentStatusRegister 0..1 CodeableConcept "Overall recruitment status from the register of clinical trials"
* Design.administrativeInformation.recruitmentStatusRegister from NFDI4Health_VS_MDS_Study_Recruitment_Register_NCI_SCT_Local (required)
* Design.administrativeInformation.recruitmentStatusRegister ^comment = "Additional information: The item applies only to studies automatically uploaded from the registers of clinical trials.\n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Resource.provenance.dataSource != \"Manually collected\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Resource.provenance.dataSource == \"Manually collected\""
* Design.administrativeInformation.recruitmentStatusRegister ^definition = "Overall recruitment status of the study as indicated in the corresponding register of clinical trials."

* Design.administrativeInformation.startDate 0..1 date "Start date"
* Design.administrativeInformation.startDate ^comment = "Additional information: Preferred date format: DD.MM.YYYY."
* Design.administrativeInformation.startDate ^definition = "In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date."

* Design.administrativeInformation.endDates 0..1 date "End date"
* Design.administrativeInformation.endDates ^comment = "Additional information: Preferred date format: DD.MM.YYYY."
* Design.administrativeInformation.endDates ^definition = "In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date.\n                             \nIn case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."

* Design.centers 0..1 CodeableConcept "Mono- or multicentric?"
* Design.centers from NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local (required)
* Design.centers ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.centers ^definition = "Specification whether the data are collected at only one or at more than one study center."

* Design.centersNumber 0..1 Quantity "Number of centers"
* Design.centersNumber ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.centers == \"Multicentric\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.centers != \"Multicentric\""
* Design.centersNumber ^definition = "Number of study centers involved in data collection."

* Design.dataProviders 0..1 CodeableConcept "One or more data providers?"
* Design.dataProviders from NFDI4Health_VS_MDS_Study_Data_Providers_Local (required)
* Design.dataProviders ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Registry\" OR \"Secondary data source\")\n* 0..0, if Resource.classification.type != (\"Registry\" OR \"Secondary data source\")"
* Design.dataProviders ^definition = "Specification whether the [RESOURCE] involves only one or more than one data provider."

* Design.dataProvidersNumbers 0..1 Quantity "Number of data providers"
* Design.dataProvidersNumbers ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Registry\" OR \"Secondary data source\") AND Design.dataProviders == \"Several data providers\"\n* 0..0, if Resource.classification.type != (\"Registry\" OR \"Secondary data source\") OR Design.dataProviders != \"Several data providers\""
* Design.dataProvidersNumbers ^definition = "Number of data providers involved in the [RESOURCE]."

* Design.subject 1..1 CodeableConcept "Primary subject"
* Design.subject from NFDI4Health_VS_MDS_Study_Subject_SNOMEDCT (required)
* Design.subject ^definition = "The primary subject addressed by the [RESOURCE], for example persons, animals or other subject types."

* Design.sampling 0..1 BackboneElement "Sampling method"
* Design.sampling ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.sampling ^definition = "Group of items providing information about the applied sampling method."

* Design.sampling.method 1..1  CodeableConcept "Applied sampling method"
* Design.sampling.method from NFDI4Health_VS_MDS_Study_Sampling_Method_NCI_Local (required)
* Design.sampling.method ^definition = "Type of the sampling method applied for the selection of participants."

* Design.sampling.probabilityMethod 0..1 CodeableConcept "Specific type of probability sampling"
* Design.sampling.probabilityMethod from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI_Local (required)
* Design.sampling.probabilityMethod ^comment = "Cardinality: \n* 0..1, if Design.sampling.method == \"Probability\"\n* 0..0, if Design.sampling.method != \"Probability\""
* Design.sampling.probabilityMethod ^definition = "Specific type of the probability sampling method applied for the selection of participants."

* Design.sampling.nonProbabilityMethod 0..1 CodeableConcept "Specific type of non-probability sampling"
* Design.sampling.nonProbabilityMethod from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_NCI_Local (required)
* Design.sampling.nonProbabilityMethod ^comment = "Cardinality: \n* 0..1, if Design.sampling.method == \"Non-probability\"\n* 0..0, if Design.sampling.method != \"Non-probability\""
* Design.sampling.nonProbabilityMethod ^definition = "Specific type of the non-probability sampling method applied for the selection of participants."

* Design.dataSource 0..1 BackboneElement "Data sources of the [RESOURCE]"
* Design.dataSource ^definition = "Group of items providing information about data sources from which the data of the [RESOURCE] are generated or extracted."

* Design.dataSource.general 0..* CodeableConcept "Types of data sources"
* Design.dataSource.general from NFDI4Health_VS_MDS_Study_Data_Sources_General_NCI_Local (required)
* Design.dataSource.general ^definition = "Different types of data sources from which the data of the [RESOURCE] are generated or extracted."

* Design.dataSource.biosamples 0..* CodeableConcept "Biosamples collected"
* Design.dataSource.biosamples from NFDI4Health_VS_MDS_Study_DS_Biosamples_SCT_NCI (required)
* Design.dataSource.biosamples ^comment = "Cardinality: \n* 0..*, if Design.dataSource.general == \"Biological samples\"\n* 0..0, if Design.dataSource.general != \"Biological samples\""
* Design.dataSource.biosamples ^definition = "Specification of biosamples collected in the [RESOURCE]."

* Design.dataSource.imaging 0..* CodeableConcept "Imaging data collected"
* Design.dataSource.imaging from NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI (required)
* Design.dataSource.imaging ^comment = "Cardinality: \n* 0..*, if Design.dataSource.general == \"Imaging data\"\n* 0..0, if Design.dataSource.general != \"Imaging data\""
* Design.dataSource.imaging ^definition = "Specification of imaging data collected in the [RESOURCE]."

* Design.dataSource.omics 0..* CodeableConcept "Omics technologies used"
* Design.dataSource.omics from NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI (required)
* Design.dataSource.omics ^comment = "Cardinality: \n* 0..*, if Design.dataSource.general == \"Omics technology\"\n* 0..0, if Design.dataSource.general != \"Omics technology\""
* Design.dataSource.omics ^definition = "Specification of omics technologies applied in the [RESOURCE]."

* Design.dataSource.description 0..1 string "Additional information about data sources"
* Design.dataSource.description ^definition = "If needed, additional descriptive information about the data sources of the [RESOURCE], for example indication of data sources not listed in the field 'Type(s) of data sources' or a more detailed description of the selected data sources."

* Design.primaryPurpose 0..1 CodeableConcept "Primary purpose of the [RESOURCE]"
* Design.primaryPurpose from NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI (required)
* Design.primaryPurpose ^comment = "Additional information: The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be\n                        selected.\n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.primaryPurpose ^definition = "Foremost for interventional studies, please specify the primary purpose why the study was conducted. For non-interventional studies, this field may be 'Not applicable' as multiple purposes may be defined as primary ones."

* Design.eligibilityCriteria 0..1 BackboneElement "Eligibility criteria"
* Design.eligibilityCriteria ^definition = "Group of items providing information about eligibility criteria for participants."

* Design.eligibilityCriteria.ageMin 0..1 BackboneElement "Eligibility criteria: Minimum age"
* Design.eligibilityCriteria.ageMin ^definition = "Group of items providing information about the minimum eligible age of participants."
* Design.eligibilityCriteria.ageMin ^base.path = "Design.eligibilityCriteria.ageMin"

* Design.eligibilityCriteria.ageMin.number 1..1 Quantity "Minimum eligible age"
* Design.eligibilityCriteria.ageMin.number ^comment = "Additional information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'."
* Design.eligibilityCriteria.ageMin.number ^definition = "Numerical value of the minimum age of potential participants eligible to participate in the [RESOURCE]."

* Design.eligibilityCriteria.ageMin.timeUnit 1..1 CodeableConcept "Unit of age"
* Design.eligibilityCriteria.ageMin.timeUnit from NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC (required)
* Design.eligibilityCriteria.ageMin.timeUnit ^definition = "Unit of measurement used to describe the minimum eligible age."

* Design.eligibilityCriteria.ageMax 0..1 BackboneElement "Eligibility criteria: Maximum age"
* Design.eligibilityCriteria.ageMax ^definition = "Group of items providing information about the maximum eligible age of participants."

* Design.eligibilityCriteria.ageMax.number 1..1 Quantity "Maximum eligible age"
* Design.eligibilityCriteria.ageMax.number ^comment = "Additional information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'."
* Design.eligibilityCriteria.ageMax.number ^definition = "Numerical value of the maximum age of potential participants eligible to participate in the [RESOURCE]."

* Design.eligibilityCriteria.ageMax.timeUnit 1..1 CodeableConcept "Unit of age"
* Design.eligibilityCriteria.ageMax.timeUnit from NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC (required)
* Design.eligibilityCriteria.ageMax.timeUnit ^definition = "Unit of measurement used to describe the maximum eligible age."

* Design.eligibilityCriteria.genders 0..* CodeableConcept "Eligible gender"
* Design.eligibilityCriteria.genders from NFDI4Health_VS_MDS_Study_Eligibility_Gender_SNOMEDCT_Local (required)
* Design.eligibilityCriteria.genders ^definition = "Gender of potential participants eligible to participate in the [RESOURCE]."

* Design.eligibilityCriteria.inclusionCriteria 0..1 string "Inclusion criteria"
* Design.eligibilityCriteria.inclusionCriteria ^definition = "Inclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.inclusionCriteria ^example.label = "example"
* Design.eligibilityCriteria.inclusionCriteria ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"

* Design.eligibilityCriteria.exclusionCriteria 0..1 string "Exclusion criteria"
* Design.eligibilityCriteria.exclusionCriteria ^definition = "Exclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.exclusionCriteria ^example.label = "example"
* Design.eligibilityCriteria.exclusionCriteria ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"

* Design.population 1..1 BackboneElement "Population of the [RESOURCE]"
* Design.population ^definition = "Group of items providing information about the population of the [RESOURCE]."

* Design.population.coverage 0..1 CodeableConcept "Coverage"
* Design.population.coverage from NFDI4Health_VS_MDS_Population_Coverage_NCI (required)
* Design.population.coverage ^definition = "Specification of the recruitment area of the [RESOURCE]."

* Design.population.countries 1..* CodeableConcept "Countries"
* Design.population.countries from http://hl7.org/fhir/ValueSet/country (required)
* Design.population.countries ^definition = "Country or countries where the [RESOURCE] takes place."

* Design.population.region 0..1 string "Regions and/or cities"
* Design.population.region ^definition = "If applicable, regions and/or cities within a country where the [RESOURCE] takes place."

* Design.population.description 0..1 string "Population description"
* Design.population.description ^definition = "Additional descriptive information providing more details about the population of the [RESOURCE]."

* Design.population.targetSampleSize 0..1 Quantity "Target sample size"
* Design.population.targetSampleSize ^comment = "Cardinality: \n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.population.targetSampleSize ^definition = "Intended number of observational units for the whole [RESOURCE] (for example intended number of participants at all sites)."

* Design.population.obtainedSampleSize 0..1 Quantity "Obtained sample size"
* Design.population.obtainedSampleSize ^comment = "Additional information: The value is only available after the end of recruitment."
* Design.population.obtainedSampleSize ^definition = "Obtained number of observational units for the whole [RESOURCE] (for example obtained number of participants at all sites)."

* Design.hypotheses 0..* string "Research questions/hypotheses"
* Design.hypotheses ^comment = "Cardinality: \n* 0..*, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.hypotheses ^definition = "Statement of the research questions and/or hypotheses underlying the [RESOURCE]."

* Design.arms 0..* BackboneElement "Arms of the study"
* Design.arms ^comment = "Cardinality: \n* 0..*, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign == \"Interventional\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.primaryDesign != \"Interventional\""
* Design.arms ^definition = "Group of items providing information about the arms of the study."

* Design.arms.label 1..1 string "Name of the arm"
* Design.arms.label ^comment = "Additional information: 'Arm' means a pre-specified group or subgroup of participants in the [RESOURCE] assigned to receive specific intervention(s) (or no intervention) according to a protocol."
* Design.arms.label ^definition = "Short name used to identify the arm."

* Design.arms.type 1..1 CodeableConcept "Role of the arm"
* Design.arms.type from NFDI4Health_VS_MDS_Study_Arm_Group_Type_NCI (required)
* Design.arms.type ^definition = "Role of the given arm in the [RESOURCE]."

* Design.arms.description 0..1 string "Additional information about the arm"
* Design.arms.description ^comment = "Additional information: If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the [RESOURCE]."
* Design.arms.description ^definition = "Additional descriptive information about the given arm."

* Design.groups 0..* BackboneElement "Groups/cohorts of the [RESOURCE]"
* Design.groups ^comment = "Cardinality: \n* 0..*, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign == \"Non-interventional\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.primaryDesign != \"Non-interventional\""
* Design.groups ^definition = "Group of items providing information about the groups/cohorts of the [RESOURCE]."

* Design.groups.label 1..1 string "Name of the group"
* Design.groups.label ^comment = "Additional information: 'Group' means a predefined group (cohort) of participants to be studied."
* Design.groups.label ^definition = "Short name used to identify the group."

* Design.groups.description 0..1 string "Additional information about the group"
* Design.groups.description ^comment = "Additional information: Explanation of the nature of the group of participants (for example, participants with and without a condition, participants with and without an exposure, etc.)."
* Design.groups.description ^definition = "Additional descriptive information about the given group."

* Design.interventions 0..* BackboneElement "Interventions of the [RESOURCE]"
* Design.interventions ^comment = "Additional information: Specification of the intervention(s) associated with each arm.\n* 0..*, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign == \"Interventional\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.primaryDesign != \"Interventional\""
* Design.interventions ^definition = "Group of items providing information about the interventions of the [RESOURCE]."

* Design.interventions.name 1..1 string "Name of the intervention"
* Design.interventions.name ^definition = "A short descriptive name of the intervention."

* Design.interventions.type 0..1 CodeableConcept "Type of the intervention"
* Design.interventions.type from NFDI4Health_VS_MDS_Study_Intervention_Type_NCI (required)
* Design.interventions.type ^definition = "General type of the given intervention."

* Design.interventions.description 0..1 string "Additional information about the intervention"
* Design.interventions.description ^definition = "If needed, additional descriptive information about the given intervention."

* Design.interventions.armsLabel 0..* string "Name(s) of the arm(s) associated with the given intervention"
* Design.interventions.armsLabel ^definition = "Name(s) of the arm(s) of the [RESOURCE] associated with the given intervention."

* Design.exposures 0..* BackboneElement "Exposures"
* Design.exposures ^comment = "Additional information: Specification of the exposure(s) associated with each group.\n* 0..*, if (Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign == \"Non-interventional\") OR Resource.classification.type == (\"Registry\" OR \"Secondary data source\")\n* 0..0, if Resource.classification.type != (\"Registry\" OR \"Secondary data source\") AND Design.primaryDesign != \"Non-interventional\""
* Design.exposures ^definition = "Group of items providing information about the exposures of the [RESOURCE]."

* Design.exposures.name 0..1 string "Name of the exposure"
* Design.exposures.name ^comment = "Cardinality: \n*  1..1, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.exposures.name ^definition = "A short descriptive name of the exposure."

* Design.exposures.type 0..1 CodeableConcept "type" "Type of the exposure"
* Design.exposures.type from NFDI4Health_VS_MDS_Study_Exposure_Type_NCI (required)
* Design.exposures.type ^definition = "General type of the given exposure."

* Design.exposures.description 0..1 string "Additional information about the exposure"
* Design.exposures.description ^definition = "If needed, additional descriptive information about the given exposure."

* Design.exposures.groupsLabel 0..* string "Name(s) of the group(s) associated with the given exposure"
* Design.exposures.groupsLabel ^comment = "Cardinality: \n* 0..*, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.exposures.groupsLabel ^definition = "Name(s) of the group(s) of the [RESOURCE] associated with the given exposure."

* Design.outcomes 0..* BackboneElement "Outcome measures"
* Design.outcomes ^comment = "Additional information: The items are optional, especially for non-interventional studies."
* Design.outcomes ^definition = "Group of items providing information about outcome measures."

* Design.outcomes.title 1..1 string "Name of the outcome measure"
* Design.outcomes.title ^definition = "Name of the outcome measure.\nFor non-interventional studies, this can be the name of specific measurements or observations used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."

* Design.outcomes.description 0..1 string "Description of the outcome measure"
* Design.outcomes.description ^definition = "Additional descriptive information about the given outcome."

* Design.outcomes.type 0..1 CodeableConcept "Type of the outcome measure"
* Design.outcomes.type from NFDI4Health_VS_MDS_Study_Outcome_Type_NCI (required)
* Design.outcomes.type ^comment = "Cardinality: \n*  1..1, if Design.outcomes.title != Null OR Design.outcomes.description != Null\n* 0..0, if Design.outcomes.title == Null AND Design.outcomes.description == Null"
* Design.outcomes.type ^definition = "The type indicates the degree of importance of the outcome measure in the [RESOURCE]."

* Design.outcomes.timeFrame 0..1 string "Time point(s) of assessment"
* Design.outcomes.timeFrame ^definition = "Description of the time point(s) at which the measurement for the outcome is assessed, for example the specific duration of time over which each participant is assessed."

* Design.comment 0..1 string "Additional information about the [RESOURCE]"
* Design.comment ^definition = "Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields."

* Design.assessments 0..* CodeableConcept "Additional assessments and measurements"
* Design.assessments from NFDI4Health_VS_MDS_Study_Assessments_SCT_NCI (required)
* Design.assessments ^definition = "Any additional assessments/measurements included in the [RESOURCE]."

* Design.dataSharingPlan 1..1 BackboneElement "Data sharing"
* Design.dataSharingPlan ^definition = "Group of items providing information regarding the sharing of data by the [RESOURCE]."

* Design.dataSharingPlan.generally 1..1 CodeableConcept "Is it planned to share the data?"
* Design.dataSharingPlan.generally from NFDI4Health_VS_MDS_Yes_No_Undecided_NCI (required)
* Design.dataSharingPlan.generally ^definition = "Indication whether there is a plan to make data collected in the [RESOURCE] available. In case of a [RESOURCE] with patients or other individuals, this refers to individual participant data (IPD)."

* Design.dataSharingPlan.supportingInformation 0..* CodeableConcept "Supporting documents available in addition to the data"
* Design.dataSharingPlan.supportingInformation from NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Supporting_Information_NCI_Local (required)
* Design.dataSharingPlan.supportingInformation ^comment = "Cardinality: \n* 0..*, if Design.dataSharingPlan.generally == \"Yes, there is a plan to make data available\"\n* 0..0, if Design.dataSharingPlan.generally != \"Yes, there is a plan to make data available\""
* Design.dataSharingPlan.supportingInformation ^definition = "Supporting information and documents which will be made available in addition to the data collected in the [RESOURCE]."

* Design.dataSharingPlan.timeFrame 0..1 string "When and for how long will the data be available?"
* Design.dataSharingPlan.timeFrame ^comment = "Cardinality: \n* 0..1, if Design.dataSharingPlan.generally == \"Yes, there is a plan to make data available\"\n* 0..0, if Design.dataSharingPlan.generally != \"Yes, there is a plan to make data available\""
* Design.dataSharingPlan.timeFrame ^definition = "Indication of the time period for which the data and, if applicable, supporting documents will be made available."

* Design.dataSharingPlan.accessCriteria 0..1 string "Criteria for data access"
* Design.dataSharingPlan.accessCriteria ^comment = "Cardinality: \n* 0..1, if Design.dataSharingPlan.generally == \"Yes, there is a plan to make data available\"\n* 0..0, if Design.dataSharingPlan.generally != \"Yes, there is a plan to make data available\""
* Design.dataSharingPlan.accessCriteria ^definition = "Indication of the access criteria by which the data will be shared, including: a) with whom; b) for which types of analyses; and c) by what mechanism."

* Design.dataSharingPlan.description 0..1 string  "Additional information about data sharing"
* Design.dataSharingPlan.description ^definition = "Additional descriptive information providing more details about data sharing, for example indication of which data in particular will be shared or why the data will not be shared or why it is not yet decided."

* Design.dataSharingPlan.datashield 0..1 CodeableConcept "DataSHIELD/Opal infrastructure available?"
* Design.dataSharingPlan.datashield from NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Datashield_SCT_NCI (required)
* Design.dataSharingPlan.datashield ^definition = "Indication whether the DataSHIELD/Opal infrastructure is available."

* Design.dataSharingPlan.requestData 0..1 string "Link to data request application"
* Design.dataSharingPlan.requestData ^definition = "If existing, a link to the web page where the data request form and/or information on data reuse can be found."

* Design.dataSharingPlan.url 0..1 string "Web page with additional information about data sharing"
* Design.dataSharingPlan.url ^definition = "If existing, a link to the web page where additional information about data sharing can be found."

* Design.dataSharingPlan.recordLinkage 0..1 boolean "Record linkage possible?"
* Design.dataSharingPlan.recordLinkage ^comment = "Additional information: Record linkage refers to the merging of data on the same person from different databases.\n*  1..1, if Resource.provenance.dataSource == \"Manually collected\"\n* 0..0, if Resource.provenance.dataSource != \"Manually collected\""
* Design.dataSharingPlan.recordLinkage ^definition = "Indication if record linkage with other data sources is possible."

* Design.nonInterventional 0..1 BackboneElement "Non-interventional aspects of the [RESOURCE]"
* Design.nonInterventional ^comment = "Additional information: Group of items applicable only to non-interventional resources.\n* 0..1, if (Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign == \"Non-interventional\") OR Resource.classification.type == (\"Registry\" OR \"Secondary data source\")\n* 0..0, if Resource.classification.type != (\"Registry\" OR \"Secondary data source\") AND Design.primaryDesign != \"Non-interventional\""
* Design.nonInterventional ^definition = "Group of items providing information about specific non-interventional aspects of the [RESOURCE]."

* Design.nonInterventional.timePerspectives 0..* CodeableConcept "Temporal design"
* Design.nonInterventional.timePerspectives from NFDI4Health_VS_MDS_Study_Time_Perspectives_NCI (required)
* Design.nonInterventional.timePerspectives ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0\n* 0..*, if Resource.classification.type == (\"Study\" OR \"Substudy\")\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\")"
* Design.nonInterventional.timePerspectives ^definition = "Temporal design of the study, i.e. the observation period in relation to the time of participant enrollment."

* Design.nonInterventional.targetFollowUpDuration 0..1 BackboneElement "Target follow-up duration"
* Design.nonInterventional.targetFollowUpDuration ^definition = "If applicable, anticipated time period over which each participant would be followed."

* Design.nonInterventional.targetFollowUpDuration.number 1..1 Quantity "Target follow-up duration"
* Design.nonInterventional.targetFollowUpDuration.number ^definition = "Numerical value of the target follow-up duration."

* Design.nonInterventional.targetFollowUpDuration.timeUnit 1..1 CodeableConcept "Unit of time"
* Design.nonInterventional.targetFollowUpDuration.timeUnit from NFDI4Health_VS_MDS_Time_Units_UCUM (required)
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^definition = "Unit of measurement used to describe the follow-up duration."

* Design.nonInterventional.targetFollowUpDuration.frequency 0..1 Quantity "Number of follow-ups conducted"
* Design.nonInterventional.targetFollowUpDuration.frequency ^definition = "The number of follow-ups conducted within the specified duration."

* Design.nonInterventional.biospecimenRetention 0..* CodeableConcept "Biosamples retained in a biorepository"
* Design.nonInterventional.biospecimenRetention from NFDI4Health_VS_MDS_Study_Biospecimen_Retention_NCI (required)
* Design.nonInterventional.biospecimenRetention ^definition = "Indication whether samples of biomaterials from participants are retained in a biorepository."

* Design.nonInterventional.biospecimenDescription 0..1 string "Specific types of retained biosamples"
* Design.nonInterventional.biospecimenDescription ^comment = "Cardinality: \n* 0..1, if Design.nonInterventional.biospecimenRetention != \"None retained\"\n* 0..0, if Design.nonInterventional.biospecimenRetention == \"None retained\""
* Design.nonInterventional.biospecimenDescription ^definition = "Additional information about retained biosamples, i.e. an indication of the specific types of retained biospecimens (e.g. blood, serum, urine, etc.)."
* Design.nonInterventional.biospecimenDescription ^example.label = "example"
* Design.nonInterventional.biospecimenDescription ^example.valueString = "blood"

* Design.interventional 0..1 BackboneElement "Interventional aspects of the [RESOURCE]"
* Design.interventional ^comment = "Additional information: Group of items applicable only to interventional resources.\n* 0..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Design.primaryDesign ==\"Interventional\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Design.primaryDesign !=\"Interventional\""
* Design.interventional ^definition = "Group of items providing information about specific interventional aspects of the [RESOURCE]."

* Design.interventional.phase 0..1 CodeableConcept "Numerical phase"
* Design.interventional.phase from NFDI4Health_VS_MDS_Study_Phase_NCI (required)
* Design.interventional.phase ^definition = "If applicable, numerical phase of the [RESOURCE]."

* Design.interventional.masking 0..1 BackboneElement "Masking of intervention(s) assignment"
* Design.interventional.masking ^definition = "Group of items providing information about the masking of intervention(s) assignment."

* Design.interventional.masking.general 0..1 boolean "Masking implemented?"
* Design.interventional.masking.general ^definition = "Indication whether a masking (or blinding) of intervention(s) assignment is implemented (i.e., whether someone is prevented from having knowledge of the interventions assigned to individual participants)."

* Design.interventional.masking.roles 0..* CodeableConcept "Who is masked?"
* Design.interventional.masking.roles from NFDI4Health_VS_MDS_Study_Masking_Roles_NCI_Local (required)
* Design.interventional.masking.roles ^comment = "Cardinality: \n* 0..*, if Design.interventional.masking.general == true\n* 0..0, if Design.interventional.masking.general == false"
* Design.interventional.masking.roles ^definition = "If masking is implemented, the party(ies) who are masked."

* Design.interventional.masking.description 0..1 string "Additional information about masking"
* Design.interventional.masking.description ^comment = "Cardinality: \n* 0..1, if Design.interventional.masking.general == true\n* 0..0, if Design.interventional.masking.general == false"
* Design.interventional.masking.description ^definition = "If needed, additional descriptive information about masking (e.g. information about other parties who may be masked)."

* Design.interventional.allocation 0..1 CodeableConcept "Type of allocation of participants to an arm"
* Design.interventional.allocation from NFDI4Health_VS_MDS_Study_Allocation_NCI (required)
* Design.interventional.allocation ^definition = "Type of allocation/assignment of individual participants of the [RESOURCE] to an arm."

* Design.interventional.offLabelUse 0..1 CodeableConcept "Off-label use of a drug product"
* Design.interventional.offLabelUse from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.interventional.offLabelUse ^definition = "Unapproved (off-label) use of a drug product."
