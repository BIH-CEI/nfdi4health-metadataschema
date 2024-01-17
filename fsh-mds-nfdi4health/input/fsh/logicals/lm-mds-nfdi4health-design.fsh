Logical: NFDI4Health_LM_MDS_Design
Parent: Element
Id: nfdi4health-lm-mds-design
Title: "NFDI4Health LM MDS Module Design V3.3"
Description: "NFDI4Health Logical Model MDS Module Design V3.3"

* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-design"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"


* Design 1..1 BackboneElement "Design" "Characteristics of the [RESOURCE]"
* Design ^comment = "<p><strong>Additional information: </strong>Group of items applicable only to studies, substudies, registries, and secondary data sources.</p> \n "
* Design ^definition = "**Description: **Group of items providing information about the characteristics of a [RESOURCE]."
* Design ^alias = "Design"


* Design.primaryDesign 1..1 CodeableConcept "Design.primaryDesign" "Is it an interventional or non-interventional [RESOURCE]?"
* Design.primaryDesign from NFDI4Health_VS_MDS_Study_Primary_Design_Local (required)
* Design.primaryDesign ^definition = "**Description: **Non-interventional design refers to a [RESOURCE] that does not aim to alter its outcomes of interest. Interventional design refers to a [RESOURCE] that aims to alter its outcomes of interest."
* Design.primaryDesign ^alias = "Design.Design.primaryDesign"


* Design.studyType 1..1 BackboneElement "Design.studyType" "Specification of the type of the [RESOURCE]"
* Design.studyType ^definition = "**Description: **Group of items providing information about the type of the [RESOURCE]."
* Design.studyType ^alias = "Design.studyType"



* Design.studyType.interventional 1..1 CodeableConcept "interventional" "Interventional [RESOURCE] type"
* Design.studyType.interventional from NFDI4Health_VS_MDS_Study_Type_Interventional_Local (required)
* Design.studyType.interventional ^definition = "**Description: **The strategy for assigning interventions to participants."
* Design.studyType.interventional ^alias = "Design.studyType.interventional"



* Design.studyType.nonInterventional 1..* CodeableConcept "nonInterventional" "Non-interventional [RESOURCE] type"
* Design.studyType.nonInterventional from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_Local (required)
* Design.studyType.nonInterventional ^definition = "**Description: **The primary strategy for participant identification and follow-up."
* Design.studyType.nonInterventional ^alias = "Design.studyType.nonInterventional"



* Design.conditions 0..*  BackboneElement "conditions" "Primary health condition(s) or disease(s) considered in the [RESOURCE]"
* Design.conditions ^definition = "**Description: **Group of items providing information about primary health condition(s) or disease(s) considered in the [RESOURCE]."
* Design.conditions ^alias = "Design.conditions"



* Design.conditions.label 1..1  string "label" "Primary health condition or disease name"
* Design.conditions.label ^comment = "<p><strong>Additional information: </strong>The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed.</p> \n "
* Design.conditions.label ^definition = "**Description: **Name of primary health condition or disease considered in the [RESOURCE]."
* Design.conditions.label ^alias = "Design.conditions.label"
* Design.conditions.label ^example.label = "example 1"
* Design.conditions.label ^example.valueString = "SARS-CoV-2"

* Design.conditions.classification 1..1  CodeableConcept "classification" "Terminology/classification"
* Design.conditions.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.conditions.classification ^definition = "**Description: **Terminology/classification used for the health condition or disease."
* Design.conditions.classification ^alias = "Design.conditions.classification"
* Design.conditions.classification ^example.label = "example 1"
* Design.conditions.classification ^example.valueCodeableConcept.text = "SNOMED CT"


* Design.conditions.code 0..1 string "code" "Code of the health condition or disease"
* Design.conditions.code ^definition = "**Description: **Code of the health condition or disease in the terminology/classification used."
* Design.conditions.code ^alias = "Design.conditions.code"
* Design.conditions.code ^example.label = "example 1"
* Design.conditions.code ^example.valueString = "http://snomed.info/id/840533007"

* Design.focus 0..*  BackboneElement "focus" "Primary focus of the [RESOURCE]"
* Design.focus ^definition = "**Description:** Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus ^alias = "Design.focus"



* Design.focus.label 1..1  string "label" "Focus area"
* Design.focus.label ^comment = "<p><strong>Additional information:</strong> The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed.</p> \n "
* Design.focus.label ^definition = "**Description:** Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus.label ^alias = "Design.focus.label"


* Design.focus.classification 1..1  CodeableConcept "classification" "Terminology/classification"
* Design.focus.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.focus.classification ^definition = "**Description:** Terminology/classification used for the focus area."
* Design.focus.classification ^alias = "Design.focus.classification"
* Design.focus.classification ^example.label = "example 1"
* Design.focus.classification ^example.valueCodeableConcept.text = "SNOMED CT"


* Design.focus.code 0..1  string "code" "Code of the focus area"
* Design.focus.code ^definition = "**Description:** Code of the focus area in the terminology/classification used."
* Design.focus.code ^alias = "Design.focus.code"
* Design.focus.code ^example.label = "example 1"
* Design.focus.code ^example.valueString = "http://snomed.info/id/840533007"

* Design.groupsOfDiseases 1..1  BackboneElement "groupsOfDiseases" "Groups of diseases or conditions"
* Design.groupsOfDiseases ^definition = "**Description: **Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases ^alias = "Design.groupsOfDiseases"


* Design.groupsOfDiseases.generally 1..*  CodeableConcept "generally" "Which groups of diseases or conditions were the data collected on?"
* Design.groupsOfDiseases.generally from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_SCT (required)
* Design.groupsOfDiseases.generally ^comment = "<p><strong>Additional information: </strong>The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10).</p> \n "
* Design.groupsOfDiseases.generally ^definition = "**Description: **General groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.generally ^alias = "Design.groupsOfDiseases.generally"


* Design.groupsOfDiseases.conditions 0..* CodeableConcept "conditions" "On which diseases or conditions were the data collected?"
* Design.groupsOfDiseases.conditions ^comment = "<p><strong>Additional information: </strong>The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10).</p> \n "
* Design.groupsOfDiseases.conditions ^definition = "**Description: **Diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.conditions ^alias = "Design.groupsOfDiseases.conditions"


* Design.mortalityData 0..1 CodeableConcept "mortalityData" "Collects mortality data?"
* Design.mortalityData from NFDI4Health_VS_MDS_Mortality_Data_NCI (required)
* Design.mortalityData ^definition = "**Description: **Indication whether mortality data are collected in the [RESOURCE]."
* Design.mortalityData ^alias = "Design.mortalityData"


* Design.administrativeInformation 1..1 BackboneElement "administrativeInformation" "Administrative information about the [RESOURCE]"
* Design.administrativeInformation ^definition = "**Description:** Group of items providing administrative information about the [RESOURCE]."
* Design.administrativeInformation ^alias = "Design.administrativeInformation"

* Design.administrativeInformation.ethicsCommitteeApproval 0..1  CodeableConcept "ethicsCommiteeApproval" "Status of the ethics committee approval"
* Design.administrativeInformation.ethicsCommitteeApproval from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_NCI_Local (required)
* Design.administrativeInformation.ethicsCommitteeApproval ^definition = "**Description: **Status of the [RESOURCE] approval from the (leading) ethics committee."
* Design.administrativeInformation.ethicsCommitteeApproval ^alias = "Design.administrativeInformation.ethicsCommitteeApproval"

* Design.administrativeInformation.status 1..1 CodeableConcept "status" "Overall [RESOURCE] status"
* Design.administrativeInformation.status from NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local (required)
* Design.administrativeInformation.status ^comment = "<p><strong>Additional information: </strong>If at least one [RESOURCE] site in a multicenter [RESOURCE] has the status 'Ongoing', then the overall status of the [RESOURCE] must be 'Ongoing'.</p> \n "
* Design.administrativeInformation.status ^definition = "**Description: **Overall status of the [RESOURCE]."
* Design.administrativeInformation.status ^alias = "Design.administrativeInformation.status"

* Design.administrativeInformation.statusWhenIntervention 0..1 CodeableConcept "statusWhenIntervention" "Participants receive an intervention?"
* Design.administrativeInformation.statusWhenIntervention from NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local (required)
* Design.administrativeInformation.statusWhenIntervention ^definition = "**Description: **Specification whether [RESOURCE] participants receive an intervention or have completed it but are still being followed up according to the primary objective of the [RESOURCE]."
* Design.administrativeInformation.statusWhenIntervention ^alias = "Design.administrativeInformation.statusWhenIntervention"

* Design.administrativeInformation.stageStopped 0..1 CodeableConcept "stageStopped" "Stopping stage"
* Design.administrativeInformation.stageStopped from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* Design.administrativeInformation.stageStopped ^definition = "**Description: **Specification of the stage at which the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.stageStopped ^alias = "Design.administrativeInformation.stageStopped"

* Design.administrativeInformation.reasonStopped 0..1 string "reasonStopped" "Stopping reason"
* Design.administrativeInformation.reasonStopped ^definition = "**Description: **Specification of the reason(s) why the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.reasonStopped ^alias = "Design.administrativeInformation.reasonStopped"
* Design.administrativeInformation.reasonStopped ^example.label = "example 1"
* Design.administrativeInformation.reasonStopped ^example.valueString = "accrual goal met"

* Design.administrativeInformation.statusEnrollingByInvitation 0..1 CodeableConcept "statusEnrollingByInvitation" "Participants enrolled by invitation?"
* Design.administrativeInformation.statusEnrollingByInvitation from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.administrativeInformation.statusEnrollingByInvitation ^definition = "**Description: **Specification whether [RESOURCE] participants are selected from a predetermined population."
* Design.administrativeInformation.statusEnrollingByInvitation ^alias = "Design.administrativeInformation.statusEnrollingByInvitation"

* Design.administrativeInformation.recruitmentStatusRegister 1..1 CodeableConcept "recruitmentStatusRegister" "Overall recruitment status from the register of clinical trials"
* Design.administrativeInformation.recruitmentStatusRegister from NFDI4Health_VS_MDS_Study_Recruitment_Register_NCI_SCT_Local (required)
* Design.administrativeInformation.recruitmentStatusRegister ^comment = "<p><strong>Additional information: </strong>The item applies only to studies automatically uploaded from the registers of clinical trials.</p> \n "
* Design.administrativeInformation.recruitmentStatusRegister ^definition = "**Description: **Overall recruitment status of the [RESOURCE] as indicated in the corresponding register of clinical trials."
* Design.administrativeInformation.recruitmentStatusRegister ^alias = "Design.administrativeInformation.recruitmentStatusRegister"

* Design.administrativeInformation.startDate 0..1  date "startDate" "Start date"
* Design.administrativeInformation.startDate ^comment = "<p><strong>Additional information: </strong>Preferred date format: DD.MM.YYYY.</p> \n "
* Design.administrativeInformation.startDate ^definition = "**Description: **Start date of data collection for the [RESOURCE]."
* Design.administrativeInformation.startDate ^alias = "Design.administrativeInformation.startDate"
* Design.administrativeInformation.startDate ^base.path = "Design.administrativeInformation.startDate"

* Design.administrativeInformation.endDate 0..1  date "endDate" "End date"
* Design.administrativeInformation.endDate ^comment = "<p><strong>Additional information: </strong>Preferred date format: DD.MM.YYYY.</p> \n "
* Design.administrativeInformation.endDate ^definition = "**Description:** In case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."
* Design.administrativeInformation.endDate ^alias = "Design.administrativeInformation.endDate"

* Design.centers 0..1 CodeableConcept "centers" "Mono- or multicentric?"
* Design.centers from NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local (required)
* Design.centers ^definition = "**Description: **Specification whether the [RESOURCE] is conducted at only one or at more than one [RESOURCE] center."
* Design.centers ^alias = "Design.centers"
* Design.centers ^base.path = "Design.centers"

* Design.centersNumber 0..1 Quantity "centersNumber" "Number of centers"
* Design.centersNumber ^definition = "**Description: **Number of centers involved in the [RESOURCE]."
* Design.centersNumber ^alias = "Design.centersNumber"
* Design.centersNumber ^base.path = "Design.centersNumber"

* Design.dataProviders 0..1 CodeableConcept "dataProviders" "One or more data providers?"
* Design.dataProviders ^definition = "**Description:** Specification whether the [RESOURCE] involves only one or more than one data provider."
* Design.dataProviders ^alias = "Design.dataProviders"
* Design.dataProviders ^base.path = "Design.dataProviders"

* Design.dataProvidersNumber 0..1 Quantity "dataProvidersNumber" "Number of data providers"
* Design.dataProvidersNumber ^definition = "**Description:** Number of data providers involved in the [RESOURCE]."
* Design.dataProvidersNumber ^alias = "Design.dataProvidersNumber"
* Design.dataProvidersNumber ^base.path = "Design.dataProvidersNumber"

* Design.subject 1..1  CodeableConcept "subject" "Primary subject"
* Design.subject from NFDI4Health_VS_MDS_Study_Subject_SNOMEDCT (required)
* Design.subject ^definition = "**Description: **The primary subject addressed by the [RESOURCE], i.e. a person, an animal or other subject types."
* Design.subject ^alias = "Design.subject"
* Design.subject ^base.path = "Design.subject"

* Design.sampling 0..1 BackboneElement "sampling" "Sampling method"
* Design.sampling ^definition = "**Description: **Group of items providing information about the applied sampling method."
* Design.sampling ^alias = "Design.sampling"
* Design.sampling ^base.path = "Design.sampling"

* Design.sampling.method 1..1  CodeableConcept "method" "Applied sampling method"
* Design.sampling.method from NFDI4Health_VS_MDS_Study_Sampling_Method_Local (required)
* Design.sampling.method ^definition = "**Description: **Type of the sampling method applied for the selection of [RESOURCE] participants."
* Design.sampling.method ^alias = "Design.sampling.method"
* Design.sampling.method ^base.path = "Design.sampling.method"


* Design.sampling.probabilityMethod 0..1 CodeableConcept "probabilityMethod" "Specific type of probability sampling"
* Design.sampling.probabilityMethod from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_Local (required)
* Design.sampling.probabilityMethod ^definition = "**Description: **Specific type of the probability sampling method applied for the selection of [RESOURCE] participants."
* Design.sampling.probabilityMethod ^alias = "Design.sampling.probabilityMethod"
* Design.sampling.probabilityMethod ^base.path = "Design.sampling.probabilityMethod"

* Design.sampling.nonProbabilityMethod 0..1 CodeableConcept "nonProbabilityMethod" "Specific type of non-probability sampling"
* Design.sampling.nonProbabilityMethod from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_Local (required)
* Design.sampling.nonProbabilityMethod ^definition = "**Description: **Specific type of the non-probability sampling method applied for the selection of [RESOURCE] participants."
* Design.sampling.nonProbabilityMethod ^alias = "Design.sampling.nonProbabilityMethod"
* Design.sampling.nonProbabilityMethod ^base.path = "Design.sampling.nonProbabilityMethod"

* Design.dataSource 0..1  BackboneElement "dataSource" "Data sources of the [RESOURCE]"
* Design.dataSource ^definition = "**Description: **Group of items providing information about data sources from which the data of the [RESOURCE] are generated or extracted."
* Design.dataSource ^alias = "Design.dataSource"

* Design.dataSource.general 0..*  CodeableConcept "general" "Type(s) of data sources"
* Design.dataSource.general from NFDI4Health_VS_MDS_Study_Data_Sources_General_NCI_Local (required)
* Design.dataSource.general ^definition = "**Description: **Different types of data sources from which the data of the [RESOURCE] are generated or extracted."
* Design.dataSource.general ^alias = "Design.dataSource.general"

* Design.dataSource.biosamples 0..* CodeableConcept "biosamples" "Biosamples collected"
* Design.dataSource.biosamples from NFDI4Health_VS_MDS_Study_DS_Biosamples_SCT_NCI (required)
* Design.dataSource.biosamples ^definition = "**Description: **Specification of biosamples collected in the [RESOURCE]."
* Design.dataSource.biosamples ^alias = "Design.dataSource.biosamples"

* Design.dataSource.imaging 0..* CodeableConcept "imaging" "Imaging data collected"
* Design.dataSource.imaging from NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI (required)
* Design.dataSource.imaging ^definition = "**Description: **Specification of imaging data collected in the [RESOURCE]."
* Design.dataSource.imaging ^alias = "Design.dataSource.imaging"

* Design.dataSource.omics 0..* CodeableConcept "omics" "Omics technology used"
* Design.dataSource.omics from NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI (required)
* Design.dataSource.omics ^definition = "**Description: **Specification of omics technology applied in the [RESOURCE]."
* Design.dataSource.omics ^alias = "Design.dataSource.omics"

* Design.dataSource.description 0..1 string "description" "Additional information about data sources"
* Design.dataSource.description ^definition = "**Description: **If needed, additional descriptive information about the data sources of the [RESOURCE], e.g. indication of the data source(s) not listed in the field 'Type(s) of data sources' or a more detailed description of the selected data sources."
* Design.dataSource.description ^alias = "Design.dataSource.description"

* Design.primaryPurpose 0..1 CodeableConcept "primaryPurpose" "Primary purpose of the [RESOURCE]"
* Design.primaryPurpose from NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI (required)
* Design.primaryPurpose ^comment = "<p><strong>Additional information: </strong>The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be selected.</p> \n "
* Design.primaryPurpose ^definition = "**Description: **Specification of the main purpose of the [RESOURCE]."
* Design.primaryPurpose ^alias = "Design.primaryPurpose"

* Design.eligibilityCriteria 0..1  BackboneElement "eligibilityCriteria" "Eligibility criteria for [RESOURCE] participants"
* Design.eligibilityCriteria ^definition = "**Description: **Group of items providing information about eligibility criteria for [RESOURCE] participants."
* Design.eligibilityCriteria ^alias = "Design.eligibilityCriteria"

* Design.eligibilityCriteria.ageMin 0..1  BackboneElement "ageMin" "Eligibility criteria: Minimum age"
* Design.eligibilityCriteria.ageMin ^definition = "**Description: **Group of items providing information about the minimum eligible age of [RESOURCE] participants."
* Design.eligibilityCriteria.ageMin ^alias = "Design.eligibilityCriteria.ageMin"

* Design.eligibilityCriteria.ageMin.number 1..1  Quantity "number" "Minimum eligible age"
* Design.eligibilityCriteria.ageMin.number ^comment = "<p><strong>Additional information:</strong> In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'.</p> \n "
* Design.eligibilityCriteria.ageMin.number ^definition = "**Description: **Numerical value of the minimum age of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.ageMin.number ^alias = "Design.eligibilityCriteria.ageMin.number"

* Design.eligibilityCriteria.ageMin.timeUnit 1..1  CodeableConcept "timeUnit" "Unit of age"
* Design.eligibilityCriteria.ageMin.timeUnit from NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC (required)
* Design.eligibilityCriteria.ageMin.timeUnit ^definition = "**Description: **Unit of measurement used to describe the minimum eligible age."
* Design.eligibilityCriteria.ageMin.timeUnit ^alias = "Design.eligibilityCriteria.ageMin.timeUnit"

* Design.eligibilityCriteria.ageMax 0..1 BackboneElement "ageMax" "Eligibility criteria: Maximum age"
* Design.eligibilityCriteria.ageMax ^definition = "**Description: **Group of items providing information about the maximum eligible age of [RESOURCE] participants."
* Design.eligibilityCriteria.ageMax ^alias = "Design.eligibilityCriteria.ageMax"

* Design.eligibilityCriteria.ageMax.number 1..1  Quantity "number" "Maximum eligible age"
* Design.eligibilityCriteria.ageMax.number ^comment = "<p><strong>Additional information:</strong> In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'.</p> \n "
* Design.eligibilityCriteria.ageMax.number ^definition = "**Description: **Numerical value of the maximum age of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.ageMax.number ^alias = "Design.eligibilityCriteria.ageMax.number"

* Design.eligibilityCriteria.ageMax.timeUnit 1..1  CodeableConcept "timeUnit" "Unit of age"
* Design.eligibilityCriteria.ageMax.timeUnit from NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC (required)
* Design.eligibilityCriteria.ageMax.timeUnit ^definition = "**Description: **Unit of measurement used to describe the maximum eligible age."
* Design.eligibilityCriteria.ageMax.timeUnit ^alias = "Design.eligibilityCriteria.ageMax.timeUnit"

* Design.eligibilityCriteria.genders 0..1 CodeableConcept "genders" "Eligible gender"
* Design.eligibilityCriteria.genders from NFDI4Health_VS_MDS_Study_Eligibility_Gender_SNOMEDCT_Local (required)
* Design.eligibilityCriteria.genders ^definition = "**Description: **Gender of potential participants eligible to participate in the [RESOURCE]."
* Design.eligibilityCriteria.genders ^alias = "Design.eligibilityCriteria.genders"

* Design.eligibilityCriteria.inclusionCriteria 0..1 string "inclusionCriteria" "Inclusion criteria"
* Design.eligibilityCriteria.inclusionCriteria ^definition = "**Description: **Inclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.inclusionCriteria ^alias = "Design.eligibilityCriteria.inclusionCriteria"
* Design.eligibilityCriteria.inclusionCriteria ^example.label = "example 1"
* Design.eligibilityCriteria.inclusionCriteria ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"

* Design.eligibilityCriteria.exclusionCriteria 0..1  string "exclusionCriteria" "Exclusion criteria"
* Design.eligibilityCriteria.exclusionCriteria ^definition = "**Description: **Exclusion criteria for participation in the [RESOURCE]."
* Design.eligibilityCriteria.exclusionCriteria ^alias = "Design.eligibilityCriteria.exclusionCriteria"
* Design.eligibilityCriteria.exclusionCriteria ^example.label = "example 1"
* Design.eligibilityCriteria.exclusionCriteria ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"

* Design.population 1..1 BackboneElement "population" "Population of the [RESOURCE]"
* Design.population ^definition = "**Description:** Group of items providing information about the population of the [RESOURCE]."
* Design.population ^alias = "Design.population"

* Design.population.countries 1..*  CodeableConcept "countries" "Country(ies)"
* Design.population.countries from  http://hl7.org/fhir/ValueSet/country (required)
* Design.population.countries ^definition = "**Description: **Country or countries where the [RESOURCE] takes place."
* Design.population.countries ^alias = "Design.population.countries"
* Design.population.countries ^base.path = "Design.population.countries"

* Design.population.region 0..1  string "region" "Region(s) and/or city(ies)"
* Design.population.region ^definition = "**Description: **If applicable, region(s) and/or city(ies) within a country where the [RESOURCE] takes place."
* Design.population.region ^alias = "Design.population.region"
* Design.population.region ^base.path = "Design.population.region"

* Design.population.coverage 0..1  CodeableConcept "coverage" "Coverage"
* Design.population.coverage ^definition = "**Description:** Specification of the recruitment area of the [RESOURCE]."
* Design.population.coverage ^alias = "Design.population.coverage"
* Design.population.coverage ^base.path = "Design.population.coverage"
* Design.population.coverage ^base.min = 0
* Design.population.coverage ^base.max = "1"

* Design.population.description 0..1  string "description" "Population description"
* Design.population.description ^definition = "**Description: **Additional descriptive information providing more details about the population of the [RESOURCE]."
* Design.population.description ^alias = "Design.population.description"

* Design.population.targetSampleSize 0..1 Quantity "targetSampleSize" "Target sample size"
* Design.population.targetSampleSize ^definition = "**Description: **Intended number of observational units for the whole [RESOURCE] (e.g. intended number of [RESOURCE] participants at all sites of the [RESOURCE])."
* Design.population.targetSampleSize ^alias = "Design.population.targetSampleSize"

* Design.population.obtainedSampleSize 0..1  Quantity "obtainedSampleSize" "Obtained sample size"
* Design.population.obtainedSampleSize ^comment = "<p><strong>Additional information:</strong> The value is only available after the end of recruitment.</p> \n "
* Design.population.obtainedSampleSize ^definition = "**Description: **Obtained number of observational units for the whole [RESOURCE] (e.g. obtained number of [RESOURCE] participants at all sites of the [RESOURCE])."
* Design.population.obtainedSampleSize ^alias = "Design.population.obtainedSampleSize"

* Design.hypotheses 0..* string "hypothesis" "Research questions/hypotheses"
* Design.hypotheses ^definition = "**Description: **Statement of the research questions and/or hypotheses underlying the [RESOURCE]."
* Design.hypotheses ^alias = "Design.hypotheses"

* Design.arms 0..* BackboneElement "arms" "Arms of the [RESOURCE]"
* Design.arms ^definition = "**Description: **Group of items providing information about the arms of the [RESOURCE]."
* Design.arms ^alias = "Design.arms"

* Design.arms.label 1..1  string "label" "Name of the arm"
* Design.arms.label ^comment = "<p><strong>Additional information: </strong>'Arm' means a pre-specified group or subgroup of participants in the [RESOURCE] assigned to receive specific intervention(s) (or no intervention) according to a protocol.</p> \n "
* Design.arms.label ^definition = "**Description: **Short name used to identify the arm."
* Design.arms.label ^alias = "Design.arms.label"

* Design.arms.type 1..1  CodeableConcept "type" "Role of the arm"
* Design.arms.type from NFDI4Health_VS_MDS_Study_Arm_Group_Type_NCI (required)
* Design.arms.type ^definition = "**Description: **Role of the given arm in the [RESOURCE]."
* Design.arms.type ^alias = "Design.arms.type"

* Design.arms.description 0..1  string "description" "Additional information about the arm"
* Design.arms.description ^comment = "<p><strong>Additional information: </strong>If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the [RESOURCE].</p> \n "
* Design.arms.description ^definition = "**Description: **Additional descriptive information about the given arm."
* Design.arms.description ^alias = "Design.arms.description"

* Design.groups 0..* BackboneElement "groups" "Groups/cohorts of the [RESOURCE]"
* Design.groups ^definition = "**Description:** Group of items providing information about the groups/cohorts of the [RESOURCE]."
* Design.groups ^alias = "Design.groups"

* Design.groups.label 1..1  string "label" "Name of the group"
* Design.groups.label ^comment = "<p><strong>Additional information:</strong> 'Group' means a predefined group (cohort) of participants to be studied.</p> \n "
* Design.groups.label ^definition = "**Description:** Short name used to identify the group."
* Design.groups.label ^alias = "Design.groups.label"

* Design.groups.description 0..1  string "description" "Additional information about the group"
* Design.groups.description ^comment = "<p><strong>Additional information:</strong> Explanation of the nature of the [RESOURCE] group (for example, participants with and without a condition, participants with and without an exposure, etc.).</p> \n "
* Design.groups.description ^definition = "**Description:** Additional descriptive information about the given group."
* Design.groups.description ^alias = "Design.groups.description"

* Design.interventions 0..* BackboneElement "interventions" "Interventions of the [RESOURCE]"
* Design.interventions ^comment = "<p><strong>Additional information: </strong>Specification of the intervention(s) associated with each arm.</p> \n "
* Design.interventions ^definition = "**Description: **Group of items providing information about the interventions of the [RESOURCE]."
* Design.interventions ^alias = "Design.interventions"

* Design.interventions.name 1..1  string "name" "Name of the intervention"
* Design.interventions.name ^definition = "**Description: **A short descriptive name of the intervention."
* Design.interventions.name ^alias = "Design.interventions.name"

* Design.interventions.type 0..1  CodeableConcept "type" "Type of the intervention"
* Design.interventions.type from NFDI4Health_VS_MDS_Study_Intervention_Type_NCI (required)
* Design.interventions.type ^definition = "**Description: **General type of the given intervention."
* Design.interventions.type ^alias = "Design.interventions.type"

* Design.interventions.type ^binding.description = "NFDI4Health_VS_MDS_Study_Intervention_Type_NCI_UMLS"
* Design.interventions.description 0..1  string "description" "Additional information about the intervention"
* Design.interventions.description ^definition = "**Description: **If needed, additional descriptive information about the given intervention."
* Design.interventions.description ^alias = "Design.interventions.description"

* Design.interventions.armsLabel 0..*  string "armsLabel" "Name(s) of the arm(s) associated with the given intervention"
* Design.interventions.armsLabel ^definition = "**Description: **Name(s) of the [RESOURCE] arm(s) associated with the given intervention."
* Design.interventions.armsLabel ^alias = "Design.interventions.armsLabel"

* Design.exposures 0..* BackboneElement "exposures" "Exposures of the [RESOURCE]"
* Design.exposures ^comment = "<p><strong>Additional information:</strong> Specification of the exposure(s) associated with each group.</p> \n "
* Design.exposures ^definition = "**Description:** Group of items providing information about the exposures of the [RESOURCE]."
* Design.exposures ^alias = "Design.exposures"


* Design.exposures.name 1..1 string "name" "Name of the exposure"
* Design.exposures.name ^definition = "**Description:** A short descriptive name of the exposure."
* Design.exposures.name ^alias = "Design.exposures.name"

* Design.exposures.type 0..1  CodeableConcept "type" "Type of the exposure"
* Design.exposures.type from NFDI4Health_VS_MDS_Study_Exposure_Type_NCI (required)
* Design.exposures.type ^definition = "**Description:** General type of the given exposure."
* Design.exposures.type ^alias = "Design.exposures.type"

* Design.exposures.description 0..1  string "description" "Additional information about the exposure"
* Design.exposures.description ^definition = "**Description:** If needed, additional descriptive information about the given exposure."
* Design.exposures.description ^alias = "Design.exposures.description"

* Design.exposures.groupsLabel 0..* string "groupsLabel" "Name(s) of the group(s) associated with the given exposure"
* Design.exposures.groupsLabel ^definition = "**Description:** Name(s) of the [RESOURCE] group(s) associated with the given exposure."
* Design.exposures.groupsLabel ^alias = "Design.exposures.groupsLabel"

* Design.outcomes 0..* BackboneElement "outcomes" "Outcome measures in the [RESOURCE]"
* Design.outcomes ^comment = "<p><strong>Additional information: </strong>he items are optional, especially for non-interventional studies.</p> \n "
* Design.outcomes ^definition = "**Description: **Group of items providing information about outcome measures."
* Design.outcomes ^alias = "Design.outcomes"
* Design.outcomes.type 1..1 CodeableConcept "type" "Type of the outcome measure"
* Design.outcomes.type from NFDI4Health_VS_MDS_Study_Outcome_Type_NCI (required)
* Design.outcomes.type ^definition = "**Description: **The type indicates the degree of importance of the outcome measure in the [RESOURCE]."
* Design.outcomes.type ^alias = "Design.outcomes.type"

* Design.outcomes.title 1..1  string "title" "Name of the outcome measure"
* Design.outcomes.title ^definition = "**Description: **Name of the outcome measure.\nFor non-interventional studies, this can be the name of specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* Design.outcomes.title ^alias = "Design.outcomes.title"

* Design.outcomes.description 0..1  string "description" "Description of the outcome measure"
* Design.outcomes.description ^definition = "**Description: **Additional descriptive information about the given outcome."
* Design.outcomes.description ^alias = "Design.outcomes.description"

* Design.outcomes.timeFrame 0..1  string "timeFrame" "Time point(s) of assessment"
* Design.outcomes.timeFrame ^definition = "**Description: **Description of the time point(s) at which the measurement for the outcome is assessed, e.g. the specific duration of time over which each participant is assessed."
* Design.outcomes.timeFrame ^alias = "Design.outcomes.timeFrame"

* Design.comment 0..1  string "comment" "Additional information about the [RESOURCE]"
* Design.comment ^definition = "**Description: **Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields."
* Design.comment ^alias = "Design.comment"

* Design.assessments 0..* CodeableConcept "assessments" "Additional assessments/measurements in the [RESOURCE]"
* Design.assessments from NFDI4Health_VS_MDS_Study_Assessments_SCT_NCI (required)
* Design.assessments ^definition = "**Description: **Any additional assessments/measurements included in the [RESOURCE]."
* Design.assessments ^alias = "Design.assessments"