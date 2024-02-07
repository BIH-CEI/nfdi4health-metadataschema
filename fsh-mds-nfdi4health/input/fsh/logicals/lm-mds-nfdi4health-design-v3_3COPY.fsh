Logical: NFDI4Health_LM_MDS_Design
Parent: Element
Id: nfdi4health-lm-mds-design
Title: "NFDI4Health LM MDS Module Design"
Description: "NFDI4Health Logical Model MDS Module Design V3.3"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-design-v3-3"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* Design 0..1 BackboneElement "Characteristics of the [RESOURCE]" "Group of items providing information about the characteristics of a [RESOURCE]."
* Design ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy' OR 'Registry' OR 'Secondary data source'); otherwise 0..0 / Additional Information: Group of items applicable only to studies, substudies, registries, and secondary data sources. / Source of the property and/or allowed values: NFDI4Health"
* Design.primaryDesign 0..1 Coding "Is it an interventional or non-interventional [RESOURCE]?" "Non-interventional design refers to a [RESOURCE] that does not aim to alter its outcomes of interest. Interventional design refers to a [RESOURCE] that aims to alter its outcomes of interest."
* Design.primaryDesign from NFDI4Health_VS_MDS_Study_Primary_Design_NCI (required)
* Design.primaryDesign ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Short Input Help: Select between non-interventional and interventional design for the given [RESOURCE]. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.studyType 0..1 BackboneElement "Specification of the type of the [RESOURCE]" "Group of items providing information about the type of the [RESOURCE]."
* Design.studyType ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: CT.gov [2], DRKS [3], DDI [7], MIABIS [6]"
* Design.studyType.interventional 0..* Coding "Interventional [RESOURCE] type" "The strategy for assigning interventions to participants."
* Design.studyType.interventional from NFDI4Health_VS_MDS_Study_Type_Interventional_NCI (required)
* Design.studyType.interventional ^comment = "Cardinality: 1..*, if Design.primaryDesign == 'Interventional'; otherwise 0..0 / Short Input Help: Select all that apply. If 'Other' is selected, please specify the type of the [RESOURCE] in the field 'Additional information about the [RESOURCE]'. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.studyType.nonInterventional 0..* Coding "Non-interventional [RESOURCE] type" "The primary strategy for participant identification and follow-up."
* Design.studyType.nonInterventional from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_NCI_MSH_Local (required)
* Design.studyType.nonInterventional ^comment = "Cardinality: 1..*, if Design.primaryDesign == 'Non-interventional'; otherwise 0..0 / Short Input Help: Select all that apply. If 'Other' is selected, please specify the type of the [RESOURCE] in the field 'Additional information about the [RESOURCE]'./ Source of the property and/or allowed values: CT.gov [2], DRKS [3], DDI [7], MIABIS [6]"
* Design.conditions 0..* BackboneElement "Primary health condition(s) or disease(s) considered in the [RESOURCE]" "Group of items providing information about primary health condition(s) or disease(s) considered in the [RESOURCE]."
* Design.conditions ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.conditions.label 1..1 string "Primary health condition or disease name"	"Name of primary health condition or disease considered in the [RESOURCE]."
* Design.conditions.label ^comment = "Additional Information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. / Short Input Help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org). / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.conditions.label ^example.label = "Example of a condition or disease name"
* Design.conditions.label ^example.valueString = "SARS-CoV-2"
* Design.conditions.classification 1..1 Coding "Terminology/classification"	"Terminology/classification used for the health condition or disease."
* Design.conditions.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.conditions.classification ^comment = "Short Input Help: If used, name of the terminology/classification. / Source of the property and/or allowed values: DRKS [3], DataCite [1]"
* Design.conditions.classification ^example.label = "Example of a terminology"
* Design.conditions.classification ^example.valueCodeableConcept.text = "SNOMED CT"
* Design.conditions.code 0..1 uri "Code of the health condition or disease"	"Code of the health condition or disease in the terminology/classification used."
* Design.conditions.code ^comment = "Short Input Help: If known, you can provide the code from the terminology/classification used. / Source of the property and/or allowed values: DataCite [1]"
* Design.conditions.code ^example.label = "Example of a code for a condition or disease"
* Design.conditions.code ^example.valueString = "http://snomed.info/id/840533007"
* Design.focus 0..* BackboneElement "Primary focus of the [RESOURCE]"	"Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.focus.label 1..1 string "Focus area" "Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus.label ^comment = "Additional Information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. / Short Input Help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org). / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.focus.classification 1..1 Coding "Terminology/classification" "Terminology/classification used for the focus area."
* Design.focus.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.focus.classification ^comment = "Short Input Help: If used, name of the terminology/classification. / Source of the property and/or allowed values: DRKS [3], DataCite [1]"
* Design.focus.classification ^example.label = "Example of a terminology or classification"
* Design.focus.classification ^example.valueCodeableConcept.text = "SNOMED CT"
* Design.focus.code 0..1 uri "Code of the focus area" "Code of the focus area in the terminology/classification used."
* Design.focus.code ^comment = "Short Input Help: If known, you can provide the code from the terminology/classification used. / Source of the property and/or allowed values: DataCite [1]"
* Design.focus.code ^example.label = "Example of a code for a focus area"
* Design.focus.code ^example.valueString = "http://snomed.info/id/840533007"
* Design.groupsOfDiseases 1..1 BackboneElement "Groups of diseases or conditions" "Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.groupsOfDiseases.generally 1..* Coding "Which groups of diseases or conditions were the data collected on?" "General groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.generally from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_SCT (required)
* Design.groupsOfDiseases.generally ^comment = "Additional Information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10). / Short Input Help: Select all that apply. For more information about the groups of diseases/conditions, visit the WHO's ICD-10 homepage: https://icd.who.int/en. /	Source of the property and/or allowed values: ICD-10 [15]"
* Design.groupsOfDiseases.conditions 0..* Coding "On which diseases or conditions were the data collected?" "Diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.conditions ^comment = "Additional Information: The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10). / Short Input Help: Select all that apply. Values are based on lower level ICD-10. For more information visit the WHO's ICD-10 homepage: https://icd.who.int/en. / Source of the property and/or allowed values: ICD-10 [15] (NFDI4Health UC 5.2 requirements)"
* Design.mortalityData 0..1 Coding "Collects mortality data?" "Indication whether mortality data are collected in the [RESOURCE]."
* Design.mortalityData from NFDI4Health_VS_MDS_Mortality_Data_NCI (required)
* Design.mortalityData ^comment = "Cardinality: 0..1, if (Resource.classification.type == ('Study' OR 'Substudy') AND Design.studyType.nonInterventional == ('Longitudinal' OR 'Cohort' OR 'Case-cohort' OR 'Birth cohort' OR 'Trend' OR 'Panel')) OR Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.2 requirements"
* Design.administrativeInformation 0..1 BackboneElement "Administrative information about the [RESOURCE]"	"Group of items providing administrative information about the [RESOURCE]."
* Design.administrativeInformation ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..1 / Source of the property and/or allowed values: NFDI4Health"
* Design.administrativeInformation.ethicsCommitteeApproval 0..1 Coding "Status of the ethics committee approval" "Status of the [RESOURCE] approval from the (leading) ethics committee."
* Design.administrativeInformation.ethicsCommitteeApproval from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_NCI_Local (required)
* Design.administrativeInformation.ethicsCommitteeApproval ^comment = "Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.administrativeInformation.status 0..1 Coding "Overall [RESOURCE] status" "Overall status of the [RESOURCE]."
* Design.administrativeInformation.status from NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local (required)
* Design.administrativeInformation.status ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Additional Information: If at least one [RESOURCE] site in a multicenter [RESOURCE] has the status 'Ongoing', then the overall status of the [RESOURCE] must be 'Ongoing'. / Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* Design.administrativeInformation.statusWhenIntervention 0..1 Coding "Participants receive an intervention?" "Specification whether [RESOURCE] participants receive an intervention or have completed it but are still being followed up according to the primary objective of the [RESOURCE]."
* Design.administrativeInformation.statusWhenIntervention from NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local (required)
* Design.administrativeInformation.statusWhenIntervention ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Interventional' AND Design.administrativeInformation.status == ('At the planning stage' OR 'Ongoing (I): Recruitment ongoing, but data collection not yet started' OR 'Ongoing (II): Recruitment and data collection ongoing' OR 'Ongoing (III): Recruitment completed, but data collection ongoing' OR 'Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing'); otherwise 0..0/ Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* Design.administrativeInformation.stageStopped 0..1 Coding "Stopping stage" "Specification of the stage at which the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.stageStopped from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* Design.administrativeInformation.stageStopped ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0 / Short Input Help: Select one value from the list.	/ Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* Design.administrativeInformation.reasonStopped 0..1 string "Stopping reason" "Specification of the reason(s) why the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.reasonStopped ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.administrativeInformation.status == ('Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume' OR 'Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume'); otherwise 0..0 / Short Input Help: You can provide reasons such as closed due to toxicity, closed due to lack of [RESOURCE] progress, temporarily-closed per [RESOURCE] design, etc. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.administrativeInformation.reasonStopped ^example.label = "Example of a stopping reason"
* Design.administrativeInformation.reasonStopped ^example.valueString = "accrual goal met"
* Design.administrativeInformation.statusEnrollingByInvitation 0..1 Coding "Participants enrolled by invitation?" "Specification whether [RESOURCE] participants are selected from a predetermined population."
* Design.administrativeInformation.statusEnrollingByInvitation from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.administrativeInformation.statusEnrollingByInvitation ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* Design.administrativeInformation.recruitmentStatusRegister 0..1 Coding "Overall recruitment status from the register of clinical trials" "Overall recruitment status of the [RESOURCE] as indicated in the corresponding register of clinical trials."
* Design.administrativeInformation.recruitmentStatusRegister from NFDI4Health_VS_MDS_Study_Recruitment_Register_NCI_SCT_Local (required)
* Design.administrativeInformation.recruitmentStatusRegister ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Resource.provenance.dataSource != 'Manually collected'; otherwise 0..0 / Additional Information: The item applies only to studies automatically uploaded from the registers of clinical trials. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.administrativeInformation.startDate 0..1 date "Start date"	"Start date of data collection for the [RESOURCE]."
* Design.administrativeInformation.startDate ^comment = "Additional Information: Preferred date format: DD.MM.YYYY.	/ Short Input Help: In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date. / Source of the property and/or allowed values: CT.gov [2], DRKS [3], NFDI4Health"
* Design.administrativeInformation.endDate 0..1 date "End date" "In case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."
* Design.administrativeInformation.endDate ^comment = "Additional Information: Preferred date format: DD.MM.YYYY. / Short Input Help: In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date. / Source of the property and/or allowed values: CT.gov [2], DRKS [3], NFDI4Health"
* Design.centers 0..1 Coding "Mono- or multicentric?" "Specification whether the [RESOURCE] is conducted at only one or at more than one [RESOURCE] center."
* Design.centers from NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local (required)
* Design.centers ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: DRKS [3], CT.gov [2]"
* Design.centersNumber 0..1 integer	"Number of centers"	"Number of centers involved in the [RESOURCE]."
* Design.centersNumber ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.centers == 'Multicentric'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health, DRKS [3], CT.gov [2]"
* Design.dataProviders 0..1 CodeableConcept "One or more data providers?" "Specification whether the [RESOURCE] involves only one or more than one data provider."
* Design.dataProviders ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* Design.dataProvidersNumber 0..1 integer "Number of data providers" "Number of data providers involved in the [RESOURCE]."
* Design.dataProvidersNumber ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Registry' OR 'Secondary data source') AND Design.dataProviders == 'Several data providers'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* Design.subject 1..1 Coding "Primary subject" "The primary subject addressed by the [RESOURCE], i.e. a person, an animal or other subject types."
* Design.subject from NFDI4Health_VS_MDS_Study_Subject_SNOMEDCT (required)
* Design.subject ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health, DDI [4]"
* Design.sampling 0..1 BackboneElement "Sampling method" "Group of items providing information about the applied sampling method."
* Design.sampling ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health"
* Design.sampling.method 1..1 Coding "Applied sampling method" "Type of the sampling method applied for the selection of [RESOURCE] participants."
* Design.sampling.method from NFDI4Health_VS_MDS_Study_Sampling_Method_NCI_Local (required)
* Design.sampling.method ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: DDI [12], NFDI4Health, CT.gov [2]"
* Design.sampling.probabilityMethod 0..1 Coding "Specific type of probability sampling"	"Specific type of the probability sampling method applied for the selection of [RESOURCE] participants."
* Design.sampling.probabilityMethod from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI_Local (required)
* Design.sampling.probabilityMethod ^comment = "Cardinality: 0..1, if Design.sampling.method == 'Probability'; otherwise 0..0 / Short Input Help: If known, select one value from the list. / Source of the property and/or allowed values: NFDI4Health, DDI [12]"
* Design.sampling.nonProbabilityMethod 0..1 Coding "Specific type of non-probability sampling" "Specific type of the non-probability sampling method applied for the selection of [RESOURCE] participants."
* Design.sampling.nonProbabilityMethod from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_NCI_Local (required)
* Design.sampling.nonProbabilityMethod ^comment = "Cardinality: 0..1, if Design.sampling.method == 'Non-probability'; otherwise 0..0 / Short Input Help: If known, select one value from the list. / Source of the property and/or allowed values: NFDI4Health, DDI [12]"
* Design.dataSource 0..1 BackboneElement "Data sources of the [RESOURCE]" "Group of items providing information about data sources from which the data of the [RESOURCE] are generated or extracted."
* Design.dataSource ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.dataSource.general 0..* Coding "Type(s) of data sources" "Different types of data sources from which the data of the [RESOURCE] are generated or extracted."
* Design.dataSource.general from NFDI4Health_VS_MDS_Study_Data_Sources_General_NCI_Local (required)
* Design.dataSource.general ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health, Maelstrom [8], MIABIS [6]"
* Design.dataSource.biosamples 0..* Coding "Biosamples collected" "Specification of biosamples collected in the [RESOURCE]."
* Design.dataSource.biosamples ^comment = "Cardinality: 0..*, if Design.dataSource.general == 'Biological samples'; otherwise 0..0 / Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health, Maelstrom [8], MIABIS [6]"
* Design.dataSource.biosamples from NFDI4Health_VS_MDS_Study_DS_Biosamples_SCT_NCI (required)
* Design.dataSource.imaging	0..* Coding	"Imaging data collected" "Specification of imaging data collected in the [RESOURCE]."
* Design.dataSource.imaging ^comment = "Cardinality: 0..*, if Design.dataSource.general == 'Imaging data'; otherwise 0..0 / Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health, Maelstrom [8], MIABIS [6]"
* Design.dataSource.imaging from NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI (required)
* Design.dataSource.omics 0..* Coding "Omics technology used" "Specification of omics technology applied in the [RESOURCE]."
* Design.dataSource.omics ^comment = "Cardinality: 0..*, if Design.dataSource.general == 'Omics technology'; otherwise 0..0 / Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health, Maelstrom [8], MIABIS [6]"
* Design.dataSource.omics from NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI (required)
* Design.dataSource.description	0..1 string "Additional information about data sources"	"If needed, additional descriptive information about the data sources of the [RESOURCE], e.g. indication of the data source(s) not listed in the field 'Type(s) of data sources' or a more detailed description of the selected data sources."
* Design.dataSource.description ^comment = "Short Input Help: You can indicate here other data source(s) not listed in the field 'Type(s) of data sources' or provide a more detailed description of the selected data sources. / Source of the property and/or allowed values: NFDI4Health"

* Design.primaryPurpose 0..1 Coding "Primary purpose of the [RESOURCE]" "Specification of the main purpose of the [RESOURCE]."
* Design.primaryPurpose ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Additional Information: The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be selected. / Short Input Help: Foremost for interventional studies, please specify the primary purpose why the [RESOURCE] was conducted. For non-interventional studies, this field may be 'Not applicable' as multiple purposes may be defined as primary ones. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.primaryPurpose from NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI (required)
* Design.eligibilityCriteria 0..1 BackboneElement "Eligibility criteria for [RESOURCE] participants" "Group of items providing information about eligibility criteria for [RESOURCE] participants."
* Design.eligibilityCriteria ^comment = "Source of the property and/or allowed values: NFDI4Health"

* Design.eligibilityCriteria.ageMin 0..1 BackboneElement "Eligibility criteria: Minimum age" "Group of items providing information about the minimum eligible age of [RESOURCE] participants."
* Design.eligibilityCriteria.ageMin ^comment = "Source of the property and/or allowed values: NFDI4Health"

* Design.eligibilityCriteria.ageMin.number 1..1 integer "Minimum eligible age" "Numerical value of the minimum age of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.ageMin.number ^comment = "Additional Information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'. / Short Input Help: If age is less than 1 year, please indicate a value in months, weeks, days, hours, minutes, or weeks of gestation. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.eligibilityCriteria.ageMin.timeUnit 1..1 Coding "Unit of age" "Unit of measurement used to describe the minimum eligible age."
* Design.eligibilityCriteria.ageMin.timeUnit ^comment = "Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.eligibilityCriteria.ageMax	0..1 BackboneElement "Eligibility criteria: Maximum age" "Group of items providing information about the maximum eligible age of [RESOURCE] participants."
* Design.eligibilityCriteria.ageMax ^comment = "Source of the property and/or allowed values: NFDI4Health"

* Design.eligibilityCriteria.ageMax.number 1..1 integer	"Maximum eligible age" "Numerical value of the maximum age of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.ageMax.number ^comment = "Additional Information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'.	/ Short Input Help: If age is less than 1 year, please indicate a value in months, weeks, days, hours, minutes, or weeks of gestation.	/ Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.eligibilityCriteria.ageMax.timeUnit 1..1 Coding "Unit of age" "Unit of measurement used to describe the maximum eligible age."
* Design.eligibilityCriteria.ageMax.timeUnit ^comment = "Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.eligibilityCriteria.genders 0..* Coding "Eligible gender" "Gender of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.genders ^comment = "Short Input Help: Select all that apply. If no gender was explicitly excluded in the [RESOURCE], 'Male', 'Female', and 'Diverse' should be selected. / Source of the property and/or allowed values: CT.gov [2], DRKS [3], NFDI4Health"

* Design.eligibilityCriteria.inclusionCriteria 0..1 string "Inclusion criteria"	"Inclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.inclusionCriteria ^comment = "Short Input Help: If possible, use an enumerated or bulleted list for each criterion, starting with '-' and finishing with ';'. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.eligibilityCriteria.inclusionCriteria ^example.label = "Example of a list of inclusion criteria"
* Design.eligibilityCriteria.inclusionCriteria ^example.valueString = "'- First inclusion criterion; - Second inclusion criterion;"
* Design.eligibilityCriteria.exclusionCriteria 0..1 string "Exclusion criteria"	"Exclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.exclusionCriteria ^comment = "Short Input Help: If possible, use an enumerated or bulleted list for each criterion, starting with '-' and finishing with ';'. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.eligibilityCriteria.exclusionCriteria ^example.label = "Example of a list of exclusion criteria"
* Design.eligibilityCriteria.exclusionCriteria ^example.valueString = "'- First inclusion criterion; - Second inclusion criterion;"

* Design.population 1..1 BackboneElement "Population of the [RESOURCE]"	"Group of items providing information about the population of the [RESOURCE]."
* Design.population ^comment = "Source of the property and/or allowed values: NFDI4Health"

* Design.population.coverage 0..1 Coding "Coverage"	"Specification of the recruitment area of the [RESOURCE]."
* Design.population.coverage ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health"
* Design.population.coverage from NFDI4Health_VS_MDS_Population_Coverage_NCI (required)
* Design.population.countries 1..* Coding "Country(ies)" "Country or countries where the [RESOURCE] takes place."
* Design.population.countries from NFDI4Health_VS_MDS_Countries_ISO (required)
* Design.population.countries ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.population.region 0..1 string "Region(s) and/or city(ies)" "If applicable, region(s) and/or city(ies) within a country where the [RESOURCE] takes place."
* Design.population.region ^comment = "Source of the property and/or allowed values: NFDI4Health"

* Design.population.description	0..1 string "Population description" "Additional descriptive information providing more details about the population of the [RESOURCE]."
* Design.population.description ^comment = "Short Input Help: Any information important for the given [RESOURCE] population can be specified here. / Source of the property and/or allowed values: CT.gov [2], Maelstrom [8]"

* Design.population.targetSampleSize 0..1 integer "Target sample size" "Intended number of observational units for the whole [RESOURCE] (e.g. intended number of [RESOURCE] participants at all sites of the [RESOURCE])."	
* Design.population.targetSampleSize ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.population.obtainedSampleSize 0..1 integer "Obtained sample size" "Obtained number of observational units for the whole [RESOURCE] (e.g. obtained number of [RESOURCE] participants at all sites of the [RESOURCE])."
* Design.population.obtainedSampleSize ^comment = "Additional Information: The value is only available after the end of recruitment. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.hypotheses	0..* string "Research questions/hypotheses"	"Statement of the research questions and/or hypotheses underlying the [RESOURCE]."
* Design.hypotheses ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health, ISRCTN [16]"

* Design.arms 0..* BackboneElement "Arms of the [RESOURCE]"	"Group of items providing information about the arms of the [RESOURCE]."
* Design.arms ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Interventional'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health"

* Design.arms.label 1..1 string "Name of the arm" "Short name used to identify the arm."
* Design.arms.label ^comment = "Additional Information: Arm' means a pre-specified group or subgroup of participants in the [RESOURCE] assigned to receive specific intervention(s) (or no intervention) according to a protocol. / Source of the property and/or allowed values: CT.gov [2]"

* Design.arms.type 1..1 Coding "Role of the arm" "Role of the given arm in the [RESOURCE]."
* Design.arms.type ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: CT.gov [2]"

* Design.arms.description 0..1 string "Additional information about the arm" "Additional descriptive information about the given arm."
* Design.arms.description ^comment = "Additional Information: If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the [RESOURCE]. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.groups	0..* BackboneElement "Groups/cohorts of the [RESOURCE]"	"Group of items providing information about the groups/cohorts of the [RESOURCE]."
* Design.groups ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Non-interventional'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health"

* Design.groups.label 1..1 string "Name of the group" "Short name used to identify the group."
* Design.groups.label ^comment = "Additional Information: Group' means a predefined group (cohort) of participants to be studied. /  Source of the property and/or allowed values: CT.gov [2]"

* Design.groups.description	0..1 string "Additional information about the group" "Additional descriptive information about the given group."
* Design.groups.description ^comment = "Additional Information: Explanation of the nature of the [RESOURCE] group (for example, participants with and without a condition, participants with and without an exposure, etc.). / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"

* Design.interventions 0..* BackboneElement "Interventions of the [RESOURCE]" "Group of items providing information about the interventions of the [RESOURCE]."
* Design.interventions ^comment = "Cardinality: 0..*,  if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Interventional'; otherwise 0..0 / Additional Information: Specification of the intervention(s) associated with each arm. / Source of the property and/or allowed values: NFDI4Health"

* Design.interventions.name	1..1 string	"Name of the intervention" "A short descriptive name of the intervention."
* Design.interventions.name ^comment = "Short Input Help: If the same intervention is associated with more than one arm, please provide the information once and use the field 'Name(s) of the arm(s) associated with the given intervention' to associate it with more than one arm. / Source of the property and/or allowed values: CT.gov [2]"

* Design.interventions.type	0..1 Coding "Type of the intervention" "General type of the given intervention."
* Design.interventions.type	^comment = "Source of the property and/or allowed values: CT.gov [2]"
* Design.interventions.type from NFDI4Health_VS_MDS_Study_Intervention_Or_Exposure_Type_NCI (required)

* Design.interventions.description 0..1 string "Additional information about the intervention" "If needed, additional descriptive information about the given intervention."
* Design.interventions.description ^comment = "Source of the property and/or allowed values: CT.gov [2]"

* Design.interventions.armsLabel 0..* string "Name(s) of the arm(s) associated with the given intervention"	"Name(s) of the [RESOURCE] arm(s) associated with the given intervention."
* Design.interventions.armsLabel ^comment = "Source of the property and/or allowed values: CT.gov [2]"

* Design.exposures 0..* BackboneElement	"Exposures of the [RESOURCE]" "Group of items providing information about the exposures of the [RESOURCE]."
* Design.exposures ^comment = "Cardinality: 0..*, if (Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Non-interventional') OR Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise 0..0 / Additional Information: Specification of the exposure(s) associated with each group. / Source of the property and/or allowed values: NFDI4Health"

* Design.exposures.name 0..1 string "Name of the exposure" "A short descriptive name of the exposure."
* Design.exposures.name ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Short Input Help: If the same exposure is associated with more than one group, please provide the information once and use the field 'Name(s) of the group(s) associated with the given exposure' to associate it with more than one group. / Source of the property and/or allowed values: CT.gov [2]"

* Design.exposures.type 0..1 Coding "Type of the exposure" "General type of the given exposure."
* Design.exposures.type ^comment = "Source of the property and/or allowed values: CT.gov [2]"
* Design.exposures.type from NFDI4Health_VS_MDS_Study_Intervention_Or_Exposure_Type_NCI (required)

* Design.exposures.description 0..1 string "Additional information about the exposure"	"If needed, additional descriptive information about the given exposure."
* Design.exposures.description ^comment = "Source of the property and/or allowed values: CT.gov [2]"

* Design.exposures.groupsLabel 0..* string "Name(s) of the group(s) associated with the given exposure"	"Name(s) of the [RESOURCE] group(s) associated with the given exposure."
* Design.exposures.groupsLabel ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Source of the property and/or allowed values: CT.gov [2]"

* Design.outcomes 0..* BackboneElement "Outcome measures in the [RESOURCE]"	"Group of items providing information about outcome measures."
* Design.outcomes ^comment = "Additional Information: The items are optional, especially for non-interventional studies. / Source of the property and/or allowed values: NFDI4Health"
* Design.outcomes.title	1..1 string "Name of the outcome measure" "Name of the outcome measure. For non-interventional studies, this can be the name of specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* Design.outcomes.title ^comment = "Short Input Help: For non-interventional studies, you can provide specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment. / Source of the property and/or allowed values: CT.gov [2]"
* Design.outcomes.description 0..1 string "Description of the outcome measure" "Additional descriptive information about the given outcome."
* Design.outcomes.description ^comment = "Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.outcomes.type 0..1 CodeableConcept	"Type of the outcome measure" "The type indicates the degree of importance of the outcome measure in the [RESOURCE]."
* Design.outcomes.type ^comment = "Cardinality: 1..1, if (Design.outcomes.title != Null OR Design.outcomes.description != Null); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* Design.outcomes.type from NFDI4Health_VS_MDS_Study_Outcome_Type_NCI (required)
* Design.outcomes.timeFrame	0..1 string	"Time point(s) of assessment" "Description of the time point(s) at which the measurement for the outcome is assessed, e.g. the specific duration of time over which each participant is assessed."
* Design.outcomes.timeFrame ^comment = "Source of the property and/or allowed values: CT.gov [2]"
* Design.comment 0..1 string "Additional information about the [RESOURCE]" "Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields."
* Design.comment ^comment = "Short Input Help: You can provide here specific aspects of the [RESOURCE] that could not be captured by other fields. / Source of the property and/or allowed values: NFDI4Health"
* Design.assessments 0..* Coding "Additional assessments/measurements in the [RESOURCE]" "Any additional assessments/measurements included in the [RESOURCE]."
* Design.assessments ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health, ENPADASI [17]"
* Design.assessments from NFDI4Health_VS_MDS_Study_Assessments_SCT_NCI (required)
* Design.dataSharingPlan 1..1 BackboneElement "Data sharing strategy of the [RESOURCE]"	"Group of items providing information about the data sharing strategy of the [RESOURCE]."
* Design.dataSharingPlan ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.dataSharingPlan.generally 1..1 Coding "Is it planned to share the data?" "Indication whether there is a plan to make data collected in the [RESOURCE] available. In case of a [RESOURCE] with patients or other individuals, this refers to individual participant data (IPD)."
* Design.dataSharingPlan.generally ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: Taichman DB, et al. [5], CT.gov [2], DRKS [3]"
* Design.dataSharingPlan.generally from NFDI4Health_VS_MDS_Yes_No_Undecided_SNOMEDCT_NCI (required)
* Design.dataSharingPlan.supportingInformation 0..* Coding "Supporting documents available in addition to the data"	"Supporting information/documents which will be made available in addition to the data collected in the [RESOURCE]."
* Design.dataSharingPlan.supportingInformation ^comment = "Cardinality: 0..*, if Design.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0 / Short Input Help: Select all that apply. / Source of the property and/or allowed values: Taichman DB, et al. [5], CT.gov [2]"


* Design.dataSharingPlan.timeFrame 0..1 string "When and for how long will the data be available?" "Indication of the time period for which the data and, if applicable, supporting documents will be made available."
* Design.dataSharingPlan.timeFrame ^comment = "Cardinality: 0..1, if Design.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0 / Source of the property and/or allowed values: Taichman DB, et al. [5], CT.gov [2]"
* Design.dataSharingPlan.accessCriteria	0..1 string	"Criteria for data access" "Indication of the access criteria by which the data will be shared, including: a) with whom; b) for which types of analyses; and c) by what mechanism."
* Design.dataSharingPlan.accessCriteria ^comment = "0..1, if Design.dataSharingPlan.generally == 'Yes, there is a plan to make data available'; otherwise 0..0 / Short Input Help: Please provide here with whom, for which types of analyses and by what mechanism the data will be shared. / Source of the property and/or allowed values: Taichman DB, et al. [5], CT.gov [2]"
* Design.dataSharingPlan.description 0..1 string "Additional information about data sharing" "Additional descriptive information providing more details about data sharing, e.g. indication of which data in particular will be shared or why the data will not be shared or why it is not yet decided."
* Design.dataSharingPlan.description ^comment = "Short Input Help: Please indicate here which data in particular will be shared, or the reasons why it will not be shared or it is not yet decided.	/ Source of the property and/or allowed values: Taichman DB, et al. [5], CT.gov [2], DRKS [3]"
* Design.dataSharingPlan.datashield	0..1 Coding "DataSHIELD/Opal infrastructure available?"	"Indication whether the DataSHIELD/Opal infrastructure is available."
* Design.dataSharingPlan.datashield ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.dataSharingPlan.datashield from NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Datashield_SCT_NCI (required)
* Design.dataSharingPlan.requestData 0..1 url "Link to data request application" "If existing, a link to the web page where the data request form and/or information on data reuse can be found."
* Design.dataSharingPlan.requestData ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.dataSharingPlan.url 0..1 url "Web page with additional information about data sharing"	"If existing, a link to the web page where additional information about data sharing can be found."
* Design.dataSharingPlan.url ^comment = "Source of the property and/or allowed values: Taichman DB, et al. [5], CT.gov [2]"
* Design.dataSharingPlan.recordLinkage 0..1	boolean	"Record linkage possible?" "Indication if record linkage with other data sources is possible."
* Design.dataSharingPlan.recordLinkage ^comment = "Cardinality: 1..1, if Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0 / Additional Information: Record linkage refers to the merging of data on the same person from different databases. / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* Design.nonInterventional 0..1 BackboneElement	"Non-interventional aspects of the [RESOURCE]" "Group of items providing information about specific non-interventional aspects of the [RESOURCE]."
* Design.nonInterventional ^comment = "Cardinality: 0..1, if (Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Non-interventional') OR Resource.classification.type == ('Registry' OR 'Secondary data source'); otherwise 0..0 / Additional Information: Group of items applicable only to non-interventional resources. / Source of the property and/or allowed values: NFDI4Health"
* Design.nonInterventional.timePerspectives	0..* Coding	"Temporal design" "Temporal design of the [RESOURCE], i.e. the observation period in relation to the time of participant enrollment."
* Design.nonInterventional.timePerspectives from NFDI4Health_VS_MDS_Study_Time_Perspectives_NCI (required)
* Design.nonInterventional.timePerspectives ^comment = "Cardinality: 0..*, if Resource.classification.type == ('Study' OR 'Substudy'); otherwise 0..0 / Short Input Help: Is it a retrospective, prospective or cross-sectional [RESOURCE]?	/ Source of the property and/or allowed values: CT.gov [2]"


* Design.nonInterventional.targetFollowUpDuration 0..1 BackboneElement "Target follow-up duration of the [RESOURCE]" "If applicable, anticipated time period over which each participant would be followed."
* Design.nonInterventional.targetFollowUpDuration ^comment = "Source of the property and/or allowed values: CT.gov [2]"
* Design.nonInterventional.targetFollowUpDuration.number 1..1 integer "Target follow-up duration" "Numerical value of the target follow-up duration."
* Design.nonInterventional.targetFollowUpDuration.number ^comment = "Source of the property and/or allowed values: CT.gov [2]"
* Design.nonInterventional.targetFollowUpDuration.timeUnit 1..1 Coding "Unit of time" "Unit of measurement used to describe the follow-up duration."
* Design.nonInterventional.targetFollowUpDuration.timeUnit ^comment = "Source of the property and/or allowed values: CT.gov [2]"
* Design.nonInterventional.targetFollowUpDuration.timeUnit from NFDI4Health_VS_MDS_Time_Units_UCUM (required)
* Design.nonInterventional.targetFollowUpDuration.frequency 0..1 integer "Number of follow-ups conducted" "The number of follow-ups conducted within the specified duration."
* Design.nonInterventional.targetFollowUpDuration.frequency ^comment = "Source of the property and/or allowed values: NFDI4Health"

* Design.nonInterventional.biospecimenRetention	0..* Coding "Biosamples retained in a biorepository" "Indication whether samples of biomaterials from participants of the [RESOURCE] are retained in a biorepository."
* Design.nonInterventional.biospecimenRetention ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: CT.gov [2]"

* Design.nonInterventional.biospecimenDescription 0..1 string "Specific types of retained biosamples" "Additional information about retained biosamples, i.e. an indication of the specific types of retained biospecimens (e.g. blood, serum, urine, etc.)."
* Design.nonInterventional.biospecimenDescription ^comment = "Cardinality: 0..1, if Design.nonInterventional.biospecimenRetention != 'None retained'; otherwise 0..0 / Short Input Help: You can provide here specific types of retained biosamples (e.g. blood, serum, urine, etc.). / Source of the property and/or allowed values: CT.gov [2]"
* Design.nonInterventional.biospecimenDescription ^example.label = "Example of a retained biosample"
* Design.nonInterventional.biospecimenDescription ^example.valueString = "blood"

* Design.interventional	0..1 BackboneElement "Interventional aspects of the [RESOURCE]"	"Group of items providing information about specific interventional aspects of the [RESOURCE]."	
* Design.interventional ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign =='Interventional'; otherwise 0..0 / Additional Information: Group of items applicable only to interventional resources. / Source of the property and/or allowed values: NFDI4Health"
* Design.interventional.phase 0..1 Coding "Numerical phase"	"If applicable, numerical phase of the [RESOURCE]."
* Design.interventional.phase ^comment = "Short Input Help: Select one value from the list.	/ Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.interventional.phase from NFDI4Health_VS_MDS_Study_Phase_NCI (required)
* Design.interventional.masking	0..1 BackboneElement "Masking of intervention(s) assignment" "Group of items providing information about the masking of intervention(s) assignment."
* Design.interventional.masking ^comment = "Source of the property and/or allowed values: NFDI4Health"
* Design.interventional.masking.general	0..1 boolean "Masking implemented?"	"Indication whether a masking (or blinding) of intervention(s) assignment is implemented (i.e., whether someone is prevented from having knowledge of the interventions assigned to individual participants)."
* Design.interventional.masking.general	^comment = "Source of the property and/or allowed values: CT.gov [2], DRKS [3], NFDI4Health"
* Design.interventional.masking.roles 0..* Coding "Who is masked?" "If masking is implemented, the party(ies) who are masked."
* Design.interventional.masking.roles ^comment = "Cardinality: 0..*, if Design.interventional.masking.general == true; otherwise 0..0 / Short Input Help: Select all that apply. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.interventional.masking.roles from NFDI4Health_VS_MDS_Study_Masking_Roles_NCI_Local (required)
* Design.interventional.masking.description	0..1 string	"Additional information about masking" "If needed, additional descriptive information about masking (e.g. information about other parties who may be masked)."
* Design.interventional.masking.description ^comment = "Cardinality: 0..1, if Design.interventional.masking.general == true; otherwise 0..0 / Short Input Help: You can provide here additional information about masking, e.g. other parties who may be masked. / Source of the property and/or allowed values: CT.gov [2]"
* Design.interventional.allocation 0..1 Coding "Type of allocation of participants to an arm" "Type of allocation/assignment of individual participants of the [RESOURCE] to an arm."
* Design.interventional.allocation ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: CT.gov [2], DRKS [3]"
* Design.interventional.allocation from NFDI4Health_VS_MDS_Study_Allocation_NCI (required)
* Design.interventional.offLabelUse	0..1 Coding "Off-label use of a drug product" "Unapproved (off-label) use of a drug product."
* Design.interventional.offLabelUse ^comment = "Short Input Help: Select 'Yes' or 'No' only for a drug [RESOURCE] and 'Not applicable' for any other [RESOURCE]. / Source of the property and/or allowed values: DRKS [3]"
* Design.interventional.offLabelUse from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)

