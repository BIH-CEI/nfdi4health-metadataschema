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
* Design ^base.path = "Design"

* Design.primaryDesign 1..1 CodeableConcept "Design.primaryDesign" "Is it an interventional or non-interventional [RESOURCE]?"
* Design.primaryDesign from NFDI4Health_VS_MDS_Study_Primary_Design_Local (required)
* Design.primaryDesign ^definition = "**Description: **Non-interventional design refers to a [RESOURCE] that does not aim to alter its outcomes of interest. Interventional design refers to a [RESOURCE] that aims to alter its outcomes of interest."
* Design.primaryDesign ^alias = "Design.Design.primaryDesign"
* Design.primaryDesign ^base.path = "Design.Design.primaryDesign"

* Design.studyType 1..1 BackboneElement "Design.studyType" "Specification of the type of the [RESOURCE]"
* Design.studyType ^definition = "**Description: **Group of items providing information about the type of the [RESOURCE]."
* Design.studyType ^alias = "Design.studyType"
* Design.studyType ^base.path = "Design.studyType"


* Design.studyType.interventional 1..1 CodeableConcept "interventional" "Interventional [RESOURCE] type"
* Design.studyType.interventional from NFDI4Health_VS_MDS_Study_Type_Interventional_Local (required)
* Design.studyType.interventional ^definition = "**Description: **The strategy for assigning interventions to participants."
* Design.studyType.interventional ^alias = "Design.studyType.interventional"
* Design.studyType.interventional ^base.path = "Design.studyType.interventional"


* Design.studyType.nonInterventional 1..* CodeableConcept "nonInterventional" "Non-interventional [RESOURCE] type"
* Design.studyType.nonInterventional from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_Local (required)
* Design.studyType.nonInterventional ^definition = "**Description: **The primary strategy for participant identification and follow-up."
* Design.studyType.nonInterventional ^alias = "Design.studyType.nonInterventional"
* Design.studyType.nonInterventional ^base.path = "Design.studyType.nonInterventional"


* Design.conditions 0..*  BackboneElement "conditions" "Primary health condition(s) or disease(s) considered in the [RESOURCE]"
* Design.conditions ^definition = "**Description: **Group of items providing information about primary health condition(s) or disease(s) considered in the [RESOURCE]."
* Design.conditions ^alias = "Design.conditions"
* Design.conditions ^base.path = "Design.conditions"


* Design.conditions.label 1..1  string "label" "Primary health condition or disease name"
* Design.conditions.label ^comment = "<p><strong>Additional information: </strong>The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed.</p> \n "
* Design.conditions.label ^definition = "**Description: **Name of primary health condition or disease considered in the [RESOURCE]."
* Design.conditions.label ^alias = "Design.conditions.label"
* Design.conditions.label ^base.path = "Design.conditions.label"
* Design.conditions.label ^example.label = "example 1"
* Design.conditions.label ^example.valueString = "SARS-CoV-2"

* Design.conditions.classification 1..1  CodeableConcept "classification" "Terminology/classification"
* Design.conditions.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.conditions.classification ^definition = "**Description: **Terminology/classification used for the health condition or disease."
* Design.conditions.classification ^alias = "Design.conditions.classification"
* Design.conditions.classification ^base.path = "Design.conditions.classification"
* Design.conditions.classification ^example.label = "example 1"
* Design.conditions.classification ^example.valueCodeableConcept.text = "SNOMED CT"


* Design.conditions.code 0..1 string "code" "Code of the health condition or disease"
* Design.conditions.code ^definition = "**Description: **Code of the health condition or disease in the terminology/classification used."
* Design.conditions.code ^alias = "Design.conditions.code"
* Design.conditions.code ^base.path = "Design.conditions.code"
* Design.conditions.code ^example.label = "example 1"
* Design.conditions.code ^example.valueString = "http://snomed.info/id/840533007"

* Design.focus 0..*  BackboneElement "focus" "Primary focus of the [RESOURCE]"
* Design.focus ^definition = "**Description:** Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus ^alias = "Design.focus"
* Design.focus ^base.path = "Design.focus"


* Design.focus.label 1..1  string "label" "Focus area"
* Design.focus.label ^comment = "<p><strong>Additional information:</strong> The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed.</p> \n "
* Design.focus.label ^definition = "**Description:** Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* Design.focus.label ^alias = "Design.focus.label"
* Design.focus.label ^base.path = "Design.focus.label"


* Design.focus.classification 1..1  CodeableConcept "classification" "Terminology/classification"
* Design.focus.classification from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* Design.focus.classification ^definition = "**Description:** Terminology/classification used for the focus area."
* Design.focus.classification ^alias = "Design.focus.classification"
* Design.focus.classification ^base.path = "Design.focus.classification"
* Design.focus.classification ^example.label = "example 1"
* Design.focus.classification ^example.valueCodeableConcept.text = "SNOMED CT"


* Design.focus.code 0..1  string "code" "Code of the focus area"
* Design.focus.code ^definition = "**Description:** Code of the focus area in the terminology/classification used."
* Design.focus.code ^alias = "Design.focus.code"
* Design.focus.code ^base.path = "Design.focus.code"
* Design.focus.code ^example.label = "example 1"
* Design.focus.code ^example.valueString = "http://snomed.info/id/840533007"

* Design.groupsOfDiseases 1..1  BackboneElement "groupsOfDiseases" "Groups of diseases or conditions"
* Design.groupsOfDiseases ^definition = "**Description: **Group of items providing information about groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases ^alias = "Design.groupsOfDiseases"
* Design.groupsOfDiseases ^base.path = "Design.groupsOfDiseases"

* Design.groupsOfDiseases.generally 1..*  CodeableConcept "generally" "Which groups of diseases or conditions were the data collected on?"
* Design.groupsOfDiseases.generally from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_UMLS_Local (required)
* Design.groupsOfDiseases.generally ^comment = "<p><strong>Additional information: </strong>The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10).</p> \n "
* Design.groupsOfDiseases.generally ^definition = "**Description: **General groups of diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.generally ^alias = "Design.groupsOfDiseases.generally"
* Design.groupsOfDiseases.generally ^base.path = "Design.groupsOfDiseases.generally"

* Design.groupsOfDiseases.conditions 0..* CodeableConcept "conditions" "On which diseases or conditions were the data collected?"
* Design.groupsOfDiseases.conditions ^comment = "<p><strong>Additional information: </strong>The values originate from the WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10).</p> \n "
* Design.groupsOfDiseases.conditions ^definition = "**Description: **Diseases or conditions on which the data were collected in the [RESOURCE]."
* Design.groupsOfDiseases.conditions ^alias = "Design.groupsOfDiseases.conditions"
* Design.groupsOfDiseases.conditions ^base.path = "Design.groupsOfDiseases.conditions"

* Design.mortalityData 0..1 CodeableConcept "mortalityData" "Collects mortality data?"
* Design.mortalityData from NFDI4Health_VS_MDS_Mortality_Data_NCI (required)
* Design.mortalityData ^definition = "**Description: **Indication whether mortality data are collected in the [RESOURCE]."
* Design.mortalityData ^alias = "Design.mortalityData"
* Design.mortalityData ^base.path = "Design.mortalityData"


* Design.administrativeInformation 1..1 BackboneElement "administrativeInformation" "Administrative information about the [RESOURCE]"
* Design.administrativeInformation ^definition = "**Description:** Group of items providing administrative information about the [RESOURCE]."
* Design.administrativeInformation ^alias = "Design.administrativeInformation"
* Design.administrativeInformation ^base.path = "Design.administrativeInformation"

* Design.administrativeInformation.ethicsCommitteeApproval 0..1  CodeableConcept "ethicsCommiteeApproval" "Status of the ethics committee approval"
* Design.administrativeInformation.ethicsCommitteeApproval from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_UMLS_Local (required)
* Design.administrativeInformation.ethicsCommitteeApproval ^definition = "**Description: **Status of the [RESOURCE] approval from the (leading) ethics committee."
* Design.administrativeInformation.ethicsCommitteeApproval ^alias = "Design.administrativeInformation.ethicsCommitteeApproval"
* Design.administrativeInformation.ethicsCommitteeApproval ^base.path = "Design.administrativeInformation.ethicsCommitteeApproval"

* Design.administrativeInformation.status 1..1 CodeableConcept "status" "Overall [RESOURCE] status"
* Design.administrativeInformation.status from NFDI4Health_VS_MDS_Study_Overall_Status_UMLS_Local (required)
* Design.administrativeInformation.status ^comment = "<p><strong>Additional information: </strong>If at least one [RESOURCE] site in a multicenter [RESOURCE] has the status 'Ongoing', then the overall status of the [RESOURCE] must be 'Ongoing'.</p> \n "
* Design.administrativeInformation.status ^definition = "**Description: **Overall status of the [RESOURCE]."
* Design.administrativeInformation.status ^alias = "Design.administrativeInformation.status"
* Design.administrativeInformation.status ^base.path = "Design.administrativeInformation.status"

* Design.administrativeInformation.statusWhenIntervention 0..1 CodeableConcept "statusWhenIntervention" "Participants receive an intervention?"
* Design.administrativeInformation.statusWhenIntervention from NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local (required)
* Design.administrativeInformation.statusWhenIntervention ^definition = "**Description: **Specification whether [RESOURCE] participants receive an intervention or have completed it but are still being followed up according to the primary objective of the [RESOURCE]."
* Design.administrativeInformation.statusWhenIntervention ^alias = "Design.administrativeInformation.statusWhenIntervention"
* Design.administrativeInformation.statusWhenIntervention ^base.path = "Design.administrativeInformation.statusWhenIntervention"


* Design.administrativeInformation.stageStopped 0..1 CodeableConcept "stageStopped" "Stopping stage"
* Design.administrativeInformation.stageStopped from NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local (required)
* Design.administrativeInformation.stageStopped ^definition = "**Description: **Specification of the stage at which the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.stageStopped ^alias = "Design.administrativeInformation.stageStopped"
* Design.administrativeInformation.stageStopped ^base.path = "Design.administrativeInformation.stageStopped"

* Design.administrativeInformation.reasonStopped 0..1 string "reasonStopped" "Stopping reason"
* Design.administrativeInformation.reasonStopped ^definition = "**Description: **Specification of the reason(s) why the [RESOURCE] was prematurely stopped."
* Design.administrativeInformation.reasonStopped ^alias = "Design.administrativeInformation.reasonStopped"
* Design.administrativeInformation.reasonStopped ^base.path = "Resource.design.reasonStopped"
* Design.administrativeInformation.reasonStopped ^example.label = "example 1"
* Design.administrativeInformation.reasonStopped ^example.valueString = "accrual goal met"

* Design.administrativeInformation.statusEnrollingByInvitation 0..1 CodeableConcept "statusEnrollingByInvitation" "Participants enrolled by invitation?"
* Design.administrativeInformation.statusEnrollingByInvitation from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* Design.administrativeInformation.statusEnrollingByInvitation ^definition = "**Description: **Specification whether [RESOURCE] participants are selected from a predetermined population."
* Design.administrativeInformation.statusEnrollingByInvitation ^alias = "Design.administrativeInformation.statusEnrollingByInvitation"
* Design.administrativeInformation.statusEnrollingByInvitation ^base.path = "Resource.design.statusEnrollingByInvitation"

* Design.administrativeInformation.recruitmentStatusRegister 1..1 CodeableConcept "recruitmentStatusRegister" "Overall recruitment status from the register of clinical trials"
* Design.administrativeInformation.recruitmentStatusRegister from NFDI4Health_VS_MDS_Study_Recruitment_Status_Register_UMLS_Local (required)
* Design.administrativeInformation.recruitmentStatusRegister ^comment = "<p><strong>Additional information: </strong>The item applies only to studies automatically uploaded from the registers of clinical trials.</p> \n "
* Design.administrativeInformation.recruitmentStatusRegister ^definition = "**Description: **Overall recruitment status of the [RESOURCE] as indicated in the corresponding register of clinical trials."
* Design.administrativeInformation.recruitmentStatusRegister ^alias = "Design.administrativeInformation.recruitmentStatusRegister"
* Design.administrativeInformation.recruitmentStatusRegister ^base.path = "Design.administrativeInformation.recruitmentStatusRegister"


* Design.administrativeInformation.startDate 0..1  date "startDate" "Start date"
* Design.administrativeInformation.startDate ^comment = "<p><strong>Additional information: </strong>Preferred date format: DD.MM.YYYY.</p> \n "
* Design.administrativeInformation.startDate ^definition = "**Description: **Start date of data collection for the [RESOURCE]."
* Design.administrativeInformation.startDate ^alias = "Design.administrativeInformation.startDate"
* Design.administrativeInformation.startDate ^base.path = "Design.administrativeInformation.startDate"

* Design.administrativeInformation.endDate 0..1  date "endDate" "End date"
* Design.administrativeInformation.endDate ^comment = "<p><strong>Additional information: </strong>Preferred date format: DD.MM.YYYY.</p> \n "
* Design.administrativeInformation.endDate ^definition = "**Description:** In case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant’s last visit."
* Design.administrativeInformation.endDate ^alias = "Design.administrativeInformation.endDate"


* Design.population.countries 1..*  CodeableConcept "countries" "Country(ies)"
* Design.population.countries from  http://hl7.org/fhir/ValueSet/country (required)
* Design.population.countries ^definition = "**Description: **Country or countries where the [RESOURCE] takes place."
* Design.population.countries ^alias = "Design.population.countries"
* Design.population.countries ^base.path = "Design.population.countries"


* Design.population.region 0..1  string "region" "Region(s) and/or city(ies)"
* Design.population.region ^definition = "**Description: **If applicable, region(s) and/or city(ies) within a country where the [RESOURCE] takes place."
* Design.population.region ^alias = "Design.population.region"
* Design.population.region ^base.path = "Design.population.region"

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

* 16.840.1.113883.3.1937.777.64.2.2.102--20231204000000 0..1 MS BackboneElement "dataSource" "Data sources of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.102--20231204000000 ^definition = "**Description: **Group of items providing information about data sources from which the data of the [RESOURCE] are generated or extracted."
* 16.840.1.113883.3.1937.777.64.2.2.102--20231204000000 ^alias = "Design.dataSource"
* 16.840.1.113883.3.1937.777.64.2.2.102--20231204000000 ^base.path = "Resource.design.dataSource"
* 16.840.1.113883.3.1937.777.64.2.2.102--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.102--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 0..* MS CodeableConcept "general" "Type(s) of data sources"
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.23--20230828235116 (required)
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 ^definition = "**Description: **Different types of data sources from which the data of the [RESOURCE] are generated or extracted."
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 ^alias = "Design.dataSource.general"
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 ^base.path = "Resource.design.dataSource.general"
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.103--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sources_General_UMLS_Local"
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 0..* CodeableConcept "biosamples" "Biosamples collected"
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.24--20230828235822 (required)
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 ^definition = "**Description: **Specification of biosamples collected in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 ^alias = "Design.dataSource.biosamples"
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 ^base.path = "Resource.design.dataSource.biosamples"
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.104--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_DS_Biosamples_SNOMEDCT_NCI_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 0..* CodeableConcept "imaging" "Imaging data collected"
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.25--20230829000351 (required)
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 ^definition = "**Description: **Specification of imaging data collected in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 ^alias = "Design.dataSource.imaging"
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 ^base.path = "Resource.design.dataSource.imaging"
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.105--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sources_Imaging_NCI"
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 0..* CodeableConcept "omics" "Omics technology used"
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.26--20230829000826 (required)
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 ^definition = "**Description: **Specification of omics technology applied in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 ^alias = "Design.dataSource.omics"
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 ^base.path = "Resource.design.dataSource.omics"
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.106--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sources_Omics_NCI_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.107--20231204000000 0..1 MS string "description" "Additional information about data sources"
* 16.840.1.113883.3.1937.777.64.2.2.107--20231204000000 ^definition = "**Description: **If needed, additional descriptive information about the data sources of the [RESOURCE], e.g. indication of the data source(s) not listed in the field 'Type(s) of data sources' or a more detailed description of the selected data sources."
* 16.840.1.113883.3.1937.777.64.2.2.107--20231204000000 ^alias = "Design.dataSource.description"
* 16.840.1.113883.3.1937.777.64.2.2.107--20231204000000 ^base.path = "Resource.design.dataSource.description"
* 16.840.1.113883.3.1937.777.64.2.2.107--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.107--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 0..1 CodeableConcept "primaryPurpose" "Primary purpose of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.27--20230829001504 (required)
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^comment = "<p><strong>Additional information: </strong>The field is defined foremost for interventional studies. For non-interventional studies, this field may not be applicable as diverse purposes may be pursued without being able to specify a primary one. In this case, the option 'Not applicable' can be selected.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^definition = "**Description: **Specification of the main purpose of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^alias = "Design.primaryPurpose"
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^base.path = "Resource.design.primaryPurpose"
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.108--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Primary_Purpose_UMLS_NCI"
* 16.840.1.113883.3.1937.777.64.2.2.109--20231204000000 0..1 MS BackboneElement "eligibilityCriteria" "Eligibility criteria for [RESOURCE] participants"
* 16.840.1.113883.3.1937.777.64.2.2.109--20231204000000 ^definition = "**Description: **Group of items providing information about eligibility criteria for [RESOURCE] participants."
* 16.840.1.113883.3.1937.777.64.2.2.109--20231204000000 ^alias = "Design.eligibilityCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.109--20231204000000 ^base.path = "Resource.design.eligibilityCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.109--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.109--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.110--20231204000000 0..1 MS BackboneElement "ageMin" "Eligibility criteria: Minimum age"
* 16.840.1.113883.3.1937.777.64.2.2.110--20231204000000 ^definition = "**Description: **Group of items providing information about the minimum eligible age of [RESOURCE] participants."
* 16.840.1.113883.3.1937.777.64.2.2.110--20231204000000 ^alias = "Design.eligibilityCriteria.ageMin"
* 16.840.1.113883.3.1937.777.64.2.2.110--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.ageMin"
* 16.840.1.113883.3.1937.777.64.2.2.110--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.110--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 1..1 MS Quantity "number" "Minimum eligible age"
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 ^comment = "<p><strong>Additional information:</strong> In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 ^definition = "**Description: **Numerical value of the minimum age of potential participants eligible to participate in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 ^alias = "Design.eligibilityCriteria.ageMin.number"
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.ageMin.number"
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.111--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 1..1 MS CodeableConcept "timeUnit" "Unit of age"
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.28--20230829002233 (required)
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 ^definition = "**Description: **Unit of measurement used to describe the minimum eligible age."
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 ^alias = "Design.eligibilityCriteria.ageMin.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.ageMin.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.112--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.113--20231204000000 0..1 MS BackboneElement "ageMax" "Eligibility criteria: Maximum age"
* 16.840.1.113883.3.1937.777.64.2.2.113--20231204000000 ^definition = "**Description: **Group of items providing information about the maximum eligible age of [RESOURCE] participants."
* 16.840.1.113883.3.1937.777.64.2.2.113--20231204000000 ^alias = "Design.eligibilityCriteria.ageMax"
* 16.840.1.113883.3.1937.777.64.2.2.113--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.ageMax"
* 16.840.1.113883.3.1937.777.64.2.2.113--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.113--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 1..1 MS Quantity "number" "Maximum eligible age"
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 ^comment = "<p><strong>Additional information:</strong> In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 ^definition = "**Description: **Numerical value of the maximum age of potential participants eligible to participate in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 ^alias = "Design.eligibilityCriteria.ageMax.number"
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.ageMax.number"
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.114--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 1..1 MS CodeableConcept "timeUnit" "Unit of age"
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.28--20230829002233 (required)
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 ^definition = "**Description: **Unit of measurement used to describe the maximum eligible age."
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 ^alias = "Design.eligibilityCriteria.ageMax.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.ageMax.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.115--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 0..1 MS CodeableConcept "genders" "Eligible gender"
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.29--20230829143527 (required)
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 ^definition = "**Description: **Gender of potential participants eligible to participate in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 ^alias = "Design.eligibilityCriteria.genders"
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.genders"
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.116--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Eligibility_Gender_SNOMEDCT_Local"
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 0..1 MS string "inclusionCriteria" "Inclusion criteria"
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^definition = "**Description: **Inclusion criteria for participation in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^alias = "Design.eligibilityCriteria.inclusionCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.inclusionCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^example.label = "example 1"
* 16.840.1.113883.3.1937.777.64.2.2.117--20231204000000 ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 0..1 MS string "exclusionCriteria" "Exclusion criteria"
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^definition = "**Description: **Exclusion criteria for participation in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^alias = "Design.eligibilityCriteria.exclusionCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^base.path = "Resource.design.eligibilityCriteria.exclusionCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^example.label = "example 1"
* 16.840.1.113883.3.1937.777.64.2.2.118--20231204000000 ^example.valueString = "- First inclusion criterion; - Second inclusion criterion;"
* 16.840.1.113883.3.1937.777.64.2.1.139--20231205153213 1..1 MS BackboneElement "population" "Population of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.1.139--20231205153213 ^definition = "**Description:** Group of items providing information about the population of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.1.139--20231205153213 ^alias = "Design.population"
* 16.840.1.113883.3.1937.777.64.2.1.139--20231205153213 ^base.path = "Resource.design.population"
* 16.840.1.113883.3.1937.777.64.2.1.139--20231205153213 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.139--20231205153213 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.140--20231205153417 0..1 MS CodeableConcept "coverage" "Coverage"
* 16.840.1.113883.3.1937.777.64.2.1.140--20231205153417 ^definition = "**Description:** Specification of the recruitment area of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.1.140--20231205153417 ^alias = "Design.population.coverage"
* 16.840.1.113883.3.1937.777.64.2.1.140--20231205153417 ^base.path = "Resource.design.population.coverage"
* 16.840.1.113883.3.1937.777.64.2.1.140--20231205153417 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.140--20231205153417 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.119--20231204000000 0..1 MS string "description" "Population description"
* 16.840.1.113883.3.1937.777.64.2.2.119--20231204000000 ^definition = "**Description: **Additional descriptive information providing more details about the population of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.119--20231204000000 ^alias = "Design.population.description"
* 16.840.1.113883.3.1937.777.64.2.2.119--20231204000000 ^base.path = "Resource.design.description"
* 16.840.1.113883.3.1937.777.64.2.2.119--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.119--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.120--20231204000000 0..1 Quantity "targetSampleSize" "Target sample size"
* 16.840.1.113883.3.1937.777.64.2.2.120--20231204000000 ^definition = "**Description: **Intended number of observational units for the whole [RESOURCE] (e.g. intended number of [RESOURCE] participants at all sites of the [RESOURCE])."
* 16.840.1.113883.3.1937.777.64.2.2.120--20231204000000 ^alias = "Design.population.targetSampleSize"
* 16.840.1.113883.3.1937.777.64.2.2.120--20231204000000 ^base.path = "Resource.design.targetSampleSize"
* 16.840.1.113883.3.1937.777.64.2.2.120--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.120--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 0..1 MS Quantity "obtainedSampleSize" "Obtained sample size"
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 ^comment = "<p><strong>Additional information:</strong> The value is only available after the end of recruitment.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 ^definition = "**Description: **Obtained number of observational units for the whole [RESOURCE] (e.g. obtained number of [RESOURCE] participants at all sites of the [RESOURCE])."
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 ^alias = "Design.population.obtainedSampleSize"
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 ^base.path = "Resource.design.obtainedSampleSize"
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.121--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 1..1 MS BackboneElement "ageMinExamined" "Actual minimum age of participants"
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 ^definition = "**Description: **Group of items providing information about the actual minimum age of study participants at the time of examination."
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 ^alias = "study_age_min_examined"
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 ^base.path = "Resource.design.ageMinExamined"
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.122--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 1..1 MS Quantity "number" "Actual minimum age of participants"
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 ^comment = "\n                                 <p><strong>Cardinality:</strong> 1..1</p> \n                             \n "
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 ^definition = "**Description: **Numerical value of the minimum age of study participants at the time of examination."
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 ^alias = "number"
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 ^base.path = "Resource.design.ageMinExamined.number"
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.123--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 1..1 MS CodeableConcept "timeUnit" "Unit of time"
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.28--20230829002233 (required)
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^comment = "\n                                 <p><strong>Cardinality:</strong> 1..1</p> \n                             \n "
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^definition = "**Description: **Unit of time."
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^alias = "time_unit"
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^base.path = "Resource.design.ageMinExamined.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.124--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 1..1 MS BackboneElement "ageMaxExamined" "Actual maximum age of participants"
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 ^definition = "**Description: **Group of items providing information about the actual maximum age of study participants at the time of examination."
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 ^alias = "study_age_max_examined"
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 ^base.path = "Resource.design.ageMaxExamined"
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.125--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 1..1 MS Quantity "number" "Actual maximum age of participants"
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 ^comment = "\n                                 <p><strong>Cardinality:</strong> 1..1</p> \n                             \n "
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 ^definition = "**Description: **Numerical value of the maximum age of study participants at the time of examination."
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 ^alias = "number"
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 ^base.path = "Resource.design.ageMaxExamined.number"
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.126--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 1..1 MS CodeableConcept "timeUnit" "Unit of time"
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.28--20230829002233 (required)
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^comment = "\n                                 <p><strong>Cardinality:</strong> 1..1</p> \n                             \n "
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^definition = "**Description: **Unit of time."
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^alias = "time_unit"
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^base.path = "Resource.design.ageMaxExamined.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.127--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.128--20231204000000 0..* string "hypothesis" "Research questions/hypotheses"
* 16.840.1.113883.3.1937.777.64.2.2.128--20231204000000 ^definition = "**Description: **Statement of the research questions and/or hypotheses underlying the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.128--20231204000000 ^alias = "Design.hypotheses"
* 16.840.1.113883.3.1937.777.64.2.2.128--20231204000000 ^base.path = "Resource.design.hypothesis"
* 16.840.1.113883.3.1937.777.64.2.2.128--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.128--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.129--20231204000000 0..* BackboneElement "arms" "Arms of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.129--20231204000000 ^definition = "**Description: **Group of items providing information about the arms of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.129--20231204000000 ^alias = "Design.arms"
* 16.840.1.113883.3.1937.777.64.2.2.129--20231204000000 ^base.path = "Resource.design.arms"
* 16.840.1.113883.3.1937.777.64.2.2.129--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.129--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 1..1 MS string "label" "Name of the arm"
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 ^comment = "<p><strong>Additional information: </strong>'Arm' means a pre-specified group or subgroup of participants in the [RESOURCE] assigned to receive specific intervention(s) (or no intervention) according to a protocol.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 ^definition = "**Description: **Short name used to identify the arm."
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 ^alias = "Design.arms.label"
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 ^base.path = "Resource.design.arms.label"
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.130--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 1..1 MS CodeableConcept "type" "Role of the arm"
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.30--20230829144520 (required)
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 ^definition = "**Description: **Role of the given arm in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 ^alias = "Design.arms.type"
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 ^base.path = "Resource.design.arms.type"
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.131--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Arm_Group_Type_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 0..1 MS string "description" "Additional information about the arm"
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 ^comment = "<p><strong>Additional information: </strong>If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the [RESOURCE].</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 ^definition = "**Description: **Additional descriptive information about the given arm."
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 ^alias = "Design.arms.description"
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 ^base.path = "Resource.design.arms.description"
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.132--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.141--20231205161206 0..* BackboneElement "groups" "Groups/cohorts of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.1.141--20231205161206 ^definition = "**Description:** Group of items providing information about the groups/cohorts of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.1.141--20231205161206 ^alias = "Design.groups"
* 16.840.1.113883.3.1937.777.64.2.1.141--20231205161206 ^base.path = "Resource.design.groups"
* 16.840.1.113883.3.1937.777.64.2.1.141--20231205161206 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.141--20231205161206 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 1..1 MS string "label" "Name of the group"
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 ^comment = "<p><strong>Additional information:</strong> 'Group' means a predefined group (cohort) of participants to be studied.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 ^definition = "**Description:** Short name used to identify the group."
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 ^alias = "Design.groups.label"
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 ^base.path = "Resource.design.groups.label"
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.142--20231205161354 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 0..1 MS string "description" "Additional information about the group"
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 ^comment = "<p><strong>Additional information:</strong> Explanation of the nature of the [RESOURCE] group (for example, participants with and without a condition, participants with and without an exposure, etc.).</p> \n "
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 ^definition = "**Description:** Additional descriptive information about the given group."
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 ^alias = "Design.groups.description"
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 ^base.path = "Resource.design.groups.description"
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.143--20231205161558 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 0..* BackboneElement "interventions" "Interventions of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 ^comment = "<p><strong>Additional information: </strong>Specification of the intervention(s) associated with each arm.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 ^definition = "**Description: **Group of items providing information about the interventions of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 ^alias = "Design.interventions"
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 ^base.path = "Resource.design.interventions"
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.133--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.134--20231204000000 1..1 MS string "name" "Name of the intervention"
* 16.840.1.113883.3.1937.777.64.2.2.134--20231204000000 ^definition = "**Description: **A short descriptive name of the intervention."
* 16.840.1.113883.3.1937.777.64.2.2.134--20231204000000 ^alias = "Design.interventions.name"
* 16.840.1.113883.3.1937.777.64.2.2.134--20231204000000 ^base.path = "Resource.design.interventions.name"
* 16.840.1.113883.3.1937.777.64.2.2.134--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.134--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 0..1 MS CodeableConcept "type" "Type of the intervention"
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.31--20230829145108 (required)
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 ^definition = "**Description: **General type of the given intervention."
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 ^alias = "Design.interventions.type"
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 ^base.path = "Resource.design.interventions.type"
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.135--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Intervention_Type_NCI_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.136--20231204000000 0..1 MS string "description" "Additional information about the intervention"
* 16.840.1.113883.3.1937.777.64.2.2.136--20231204000000 ^definition = "**Description: **If needed, additional descriptive information about the given intervention."
* 16.840.1.113883.3.1937.777.64.2.2.136--20231204000000 ^alias = "Design.interventions.description"
* 16.840.1.113883.3.1937.777.64.2.2.136--20231204000000 ^base.path = "Resource.design.interventions.description"
* 16.840.1.113883.3.1937.777.64.2.2.136--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.136--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.137--20231204000000 0..* MS string "armsLabel" "Name(s) of the arm(s) associated with the given intervention"
* 16.840.1.113883.3.1937.777.64.2.2.137--20231204000000 ^definition = "**Description: **Name(s) of the [RESOURCE] arm(s) associated with the given intervention."
* 16.840.1.113883.3.1937.777.64.2.2.137--20231204000000 ^alias = "Design.interventions.armsLabel"
* 16.840.1.113883.3.1937.777.64.2.2.137--20231204000000 ^base.path = "Resource.design.interventions.armsLabel"
* 16.840.1.113883.3.1937.777.64.2.2.137--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.137--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 0..* BackboneElement "exposures" "Exposures of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 ^comment = "<p><strong>Additional information:</strong> Specification of the exposure(s) associated with each group.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 ^definition = "**Description:** Group of items providing information about the exposures of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 ^alias = "Design.exposures"
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 ^base.path = "Resource.design.exposures"
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.144--20231205222929 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.145--20231205223408 1..1 string "name" "Name of the exposure"
* 16.840.1.113883.3.1937.777.64.2.1.145--20231205223408 ^definition = "**Description:** A short descriptive name of the exposure."
* 16.840.1.113883.3.1937.777.64.2.1.145--20231205223408 ^alias = "Design.exposures.name"
* 16.840.1.113883.3.1937.777.64.2.1.145--20231205223408 ^base.path = "Resource.design.exposures.name"
* 16.840.1.113883.3.1937.777.64.2.1.145--20231205223408 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.145--20231205223408 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.146--20231205223630 0..1 MS CodeableConcept "type" "Type of the exposure"
* 16.840.1.113883.3.1937.777.64.2.1.146--20231205223630 ^definition = "**Description:** General type of the given exposure."
* 16.840.1.113883.3.1937.777.64.2.1.146--20231205223630 ^alias = "Design.exposures.type"
* 16.840.1.113883.3.1937.777.64.2.1.146--20231205223630 ^base.path = "Resource.design.exposures.type"
* 16.840.1.113883.3.1937.777.64.2.1.146--20231205223630 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.146--20231205223630 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.147--20231205224325 0..1 MS string "description" "Additional information about the exposure"
* 16.840.1.113883.3.1937.777.64.2.1.147--20231205224325 ^definition = "**Description:** If needed, additional descriptive information about the given exposure."
* 16.840.1.113883.3.1937.777.64.2.1.147--20231205224325 ^alias = "Design.exposures.description"
* 16.840.1.113883.3.1937.777.64.2.1.147--20231205224325 ^base.path = "Resource.design.exposures.description"
* 16.840.1.113883.3.1937.777.64.2.1.147--20231205224325 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.147--20231205224325 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.148--20231205224623 0..* string "groupsLabel" "Name(s) of the group(s) associated with the given exposure"
* 16.840.1.113883.3.1937.777.64.2.1.148--20231205224623 ^definition = "**Description:** Name(s) of the [RESOURCE] group(s) associated with the given exposure."
* 16.840.1.113883.3.1937.777.64.2.1.148--20231205224623 ^alias = "Design.exposures.groupsLabel"
* 16.840.1.113883.3.1937.777.64.2.1.148--20231205224623 ^base.path = "Resource.design.exposures.groupsLabel"
* 16.840.1.113883.3.1937.777.64.2.1.148--20231205224623 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.148--20231205224623 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 0..* BackboneElement "outcomes" "Outcome measures in the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 ^comment = "<p><strong>Additional information: </strong>he items are optional, especially for non-interventional studies.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 ^definition = "**Description: **Group of items providing information about outcome measures."
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 ^alias = "Design.outcomes"
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 ^base.path = "Resource.design.outcomes"
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.138--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 1..1 CodeableConcept "type" "Type of the outcome measure"
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.32--20230829145655 (required)
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 ^definition = "**Description: **The type indicates the degree of importance of the outcome measure in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 ^alias = "Design.outcomes.type"
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 ^base.path = "Resource.design.outcomes.type"
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.139--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Outcome_Type_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.140--20231204000000 1..1 MS string "title" "Name of the outcome measure"
* 16.840.1.113883.3.1937.777.64.2.2.140--20231204000000 ^definition = "**Description: **Name of the outcome measure.\nFor non-interventional studies, this can be the name of specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* 16.840.1.113883.3.1937.777.64.2.2.140--20231204000000 ^alias = "Design.outcomes.title"
* 16.840.1.113883.3.1937.777.64.2.2.140--20231204000000 ^base.path = "Resource.design.outcomes.title"
* 16.840.1.113883.3.1937.777.64.2.2.140--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.140--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.141--20231204000000 0..1 MS string "description" "Description of the outcome measure"
* 16.840.1.113883.3.1937.777.64.2.2.141--20231204000000 ^definition = "**Description: **Additional descriptive information about the given outcome."
* 16.840.1.113883.3.1937.777.64.2.2.141--20231204000000 ^alias = "Design.outcomes.description"
* 16.840.1.113883.3.1937.777.64.2.2.141--20231204000000 ^base.path = "Resource.design.outcomes.description"
* 16.840.1.113883.3.1937.777.64.2.2.141--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.141--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.142--20231204000000 0..1 MS string "timeFrame" "Time point(s) of assessment"
* 16.840.1.113883.3.1937.777.64.2.2.142--20231204000000 ^definition = "**Description: **Description of the time point(s) at which the measurement for the outcome is assessed, e.g. the specific duration of time over which each participant is assessed."
* 16.840.1.113883.3.1937.777.64.2.2.142--20231204000000 ^alias = "Design.outcomes.timeFrame"
* 16.840.1.113883.3.1937.777.64.2.2.142--20231204000000 ^base.path = "Resource.design.outcomes.timeFrame"
* 16.840.1.113883.3.1937.777.64.2.2.142--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.142--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.143--20231204000000 0..1 MS string "comment" "Additional information about the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.143--20231204000000 ^definition = "**Description: **Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields."
* 16.840.1.113883.3.1937.777.64.2.2.143--20231204000000 ^alias = "Design.comment"
* 16.840.1.113883.3.1937.777.64.2.2.143--20231204000000 ^base.path = "Resource.design.comment"
* 16.840.1.113883.3.1937.777.64.2.2.143--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.143--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 0..* MS CodeableConcept "assessments" "Additional assessments/measurements in the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.33--20230829150318 (required)
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 ^definition = "**Description: **Any additional assessments/measurements included in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 ^alias = "Design.assessments"
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 ^base.path = "Resource.design.assessments"
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.144--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Assessments_SNOMEDCT_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.145--20231204000000 1..1 MS BackboneElement "dataSharingPlan" "Data sharing strategy of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.145--20231204000000 ^definition = "**Description: **Group of items providing information about the data sharing strategy of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.145--20231204000000 ^alias = "Design.dataSharingPlan"
* 16.840.1.113883.3.1937.777.64.2.2.145--20231204000000 ^base.path = "Resource.design.dataSharingPlan"
* 16.840.1.113883.3.1937.777.64.2.2.145--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.145--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 1..1 MS CodeableConcept "generally" "Is it planned to share the data?"
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.34--20230829151125 (required)
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 ^definition = "**Description: **Indication whether there is a plan to make data collected in the [RESOURCE] available. In case of a [RESOURCE] with patients or other individuals, this refers to individual participant data (IPD)."
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 ^alias = "Design.dataSharingPlan.generally"
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 ^base.path = "Resource.design.dataSharingPlan.generally"
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.146--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Yes_No_Undecided_SNOMEDCT_NCI"
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 0..* CodeableConcept "supportingInformation" "Supporting documents available in addition to the data"
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.35--20230829154625 (required)
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 ^definition = "**Description: **Supporting information/documents which will be made available in addition to the data collected in the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 ^alias = "Design.dataSharingPlan.supportingInformation"
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 ^base.path = "Resource.design.dataSharingPlan.supportingInformation"
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.147--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Supporting_Information_UMLS_Local"
* 16.840.1.113883.3.1937.777.64.2.2.148--20231204000000 0..1 MS string "timeFrame" "When and for how long will the data be available?"
* 16.840.1.113883.3.1937.777.64.2.2.148--20231204000000 ^definition = "**Description: **Indication of the time period for which the data and, if applicable, supporting documents will be made available."
* 16.840.1.113883.3.1937.777.64.2.2.148--20231204000000 ^alias = "Design.dataSharingPlan.timeFrame"
* 16.840.1.113883.3.1937.777.64.2.2.148--20231204000000 ^base.path = "Resource.design.dataSharingPlan.timeFrame"
* 16.840.1.113883.3.1937.777.64.2.2.148--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.148--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.149--20231204000000 0..1 string "accessCriteria" "Criteria for data access"
* 16.840.1.113883.3.1937.777.64.2.2.149--20231204000000 ^definition = "**Description: **Indication of the access criteria by which the data will be shared, including: a) with whom; b) for which types of analyses; and c) by what mechanism."
* 16.840.1.113883.3.1937.777.64.2.2.149--20231204000000 ^alias = "Design.dataSharingPlan.accessCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.149--20231204000000 ^base.path = "Resource.design.dataSharingPlan.accessCriteria"
* 16.840.1.113883.3.1937.777.64.2.2.149--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.149--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.150--20231204000000 0..1 MS string "description" "Additional information about data sharing"
* 16.840.1.113883.3.1937.777.64.2.2.150--20231204000000 ^definition = "**Description: **Additional descriptive information providing more details about data sharing, e.g. indication of which data in particular will be shared or why the data will not be shared or why it is not yet decided."
* 16.840.1.113883.3.1937.777.64.2.2.150--20231204000000 ^alias = "Design.dataSharingPlan.description"
* 16.840.1.113883.3.1937.777.64.2.2.150--20231204000000 ^base.path = "Resource.design.dataSharingPlan.description"
* 16.840.1.113883.3.1937.777.64.2.2.150--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.150--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 0..1 MS CodeableConcept "datashield" "DataSHIELD/Opal infrastructure available?"
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.36--20230829155018 (required)
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 ^definition = "**Description: **Indication whether the DataSHIELD/Opal infrastructure is available."
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 ^alias = "Design.dataSharingPlan.datashield"
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 ^base.path = "Resource.design.dataSharingPlan.datashield"
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.151--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Data_Sharing_Plan_Datashield_SNOMEDCT_UMLS"
* 16.840.1.113883.3.1937.777.64.2.1.149--20231207095648 0..1 MS string "requestData" "Link to data request application"
* 16.840.1.113883.3.1937.777.64.2.1.149--20231207095648 ^definition = "**Description:** If existing, a link to the web page where the data request form and/or information on data reuse can be found."
* 16.840.1.113883.3.1937.777.64.2.1.149--20231207095648 ^alias = "Design.dataSharingPlan.requestData"
* 16.840.1.113883.3.1937.777.64.2.1.149--20231207095648 ^base.path = "Resource.design.dataSharingPlan.requestData"
* 16.840.1.113883.3.1937.777.64.2.1.149--20231207095648 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.149--20231207095648 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.152--20231204000000 0..1 MS string "url" "Web page with additional information about data sharing"
* 16.840.1.113883.3.1937.777.64.2.2.152--20231204000000 ^definition = "**Description: **If existing, a link to the web page where additional information about data sharing can be found."
* 16.840.1.113883.3.1937.777.64.2.2.152--20231204000000 ^alias = "Design.dataSharingPlan.url"
* 16.840.1.113883.3.1937.777.64.2.2.152--20231204000000 ^base.path = "Resource.design.dataSharingPlan.url"
* 16.840.1.113883.3.1937.777.64.2.2.152--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.152--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 1..1 string "recordLinkage" "Record linkage possible?"
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 ^comment = "<p><strong>Additional information:</strong> Record linkage refers to the merging of data on the same person from different databases.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 ^definition = "**Description:** Indication if record linkage with other data sources is possible."
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 ^alias = "Design.dataSharingPlan.recordLinkage"
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 ^base.path = "Resource.design.dataSharingPlan.recordLinkage"
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.150--20231207095945 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 0..1 BackboneElement "nonInterventional" "Non-interventional aspects of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 ^comment = "<p><strong>Additional information: </strong>Group of items applicable only to non-interventional resources.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 ^definition = "**Description: **Group of items providing information about specific non-interventional aspects of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 ^alias = "Design.nonInterventional"
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 ^base.path = "Resource.design.nonInterventional"
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.153--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 0..* CodeableConcept "timePerspectives" "Temporal design"
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.68--20231025140845 (required)
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 ^definition = "**Description: **Temporal design of the [RESOURCE], i.e. the observation period in relation to the time of participant enrollment."
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 ^alias = "Design.nonInterventional.timePerspectives"
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 ^base.path = "Resource.design.nonInterventional.timePerspectives"
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.154--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Time_Perspectives_Local"
* 16.840.1.113883.3.1937.777.64.2.1.151--20231207101902 0..1 MS BackboneElement "targetFollowUpDuration" "Target follow-up duration of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.1.151--20231207101902 ^definition = "**Description:** If applicable, anticipated time period over which each participant would be followed."
* 16.840.1.113883.3.1937.777.64.2.1.151--20231207101902 ^alias = "Design.nonInterventional.targetFollowUpDuration"
* 16.840.1.113883.3.1937.777.64.2.1.151--20231207101902 ^base.path = "Resource.design.nonInterventional.targetFollowUpDuration"
* 16.840.1.113883.3.1937.777.64.2.1.151--20231207101902 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.151--20231207101902 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.152--20231207102141 1..1 MS Quantity "number" "Target follow-up duration"
* 16.840.1.113883.3.1937.777.64.2.1.152--20231207102141 ^definition = "**Description:** Numerical value of the target follow-up duration."
* 16.840.1.113883.3.1937.777.64.2.1.152--20231207102141 ^alias = "Design.nonInterventional.targetFollowUpDuration.number"
* 16.840.1.113883.3.1937.777.64.2.1.152--20231207102141 ^base.path = "Resource.design.nonInterventional.targetFollowUpDuration.number"
* 16.840.1.113883.3.1937.777.64.2.1.152--20231207102141 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.152--20231207102141 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.153--20231207102258 1..1 MS CodeableConcept "timeUnit" "Unit of time"
* 16.840.1.113883.3.1937.777.64.2.1.153--20231207102258 ^definition = "**Description:** Unit of measurement used to describe the follow-up duration."
* 16.840.1.113883.3.1937.777.64.2.1.153--20231207102258 ^alias = "Design.nonInterventional.targetFollowUpDuration.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.1.153--20231207102258 ^base.path = "Resource.design.nonInterventional.targetFollowUpDuration.timeUnit"
* 16.840.1.113883.3.1937.777.64.2.1.153--20231207102258 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.153--20231207102258 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.1.154--20231207102622 1..1 MS Quantity "frequency" "Number of follow-ups conducted"
* 16.840.1.113883.3.1937.777.64.2.1.154--20231207102622 ^definition = "**Description:** The number of follow-ups conducted within the specified duration."
* 16.840.1.113883.3.1937.777.64.2.1.154--20231207102622 ^alias = "Design.nonInterventional.targetFollowUpDuration.frequency"
* 16.840.1.113883.3.1937.777.64.2.1.154--20231207102622 ^base.path = "Resource.design.nonInterventional.targetFollowUpDuration.frequency"
* 16.840.1.113883.3.1937.777.64.2.1.154--20231207102622 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.1.154--20231207102622 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 1..1 MS Quantity "targetFollowUpDuration" "Target follow-up duration"
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 ^comment = "\n                                  <p><strong>Cardinality:</strong> 0..1</p>  \n                             \n "
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 ^definition = "**Description: **If applicable, anticipated time period over which each participant is to be followed, provided in years."
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 ^alias = "study_target_followup_duration"
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 ^base.path = "Resource.design.nonInterventional.targetFollowUpDuration"
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.155--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 0..* MS CodeableConcept "biospecimenRetention" "Biosamples retained in a biorepository"
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.38--20230829155735 (required)
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 ^definition = "**Description: **Indication whether samples of biomaterials from participants of the [RESOURCE] are retained in a biorepository."
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 ^alias = "Design.nonInterventional.biospecimenRetention"
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 ^base.path = "Resource.design.nonInterventional.biospecimenRetention"
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.156--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Biospecimen_Retention_UMLS"
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 0..1 string "biospecimenDescription" "Specific types of retained biosamples"
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^definition = "**Description: **Additional information about retained biosamples, i.e. an indication of the specific types of retained biospecimens (e.g. blood, serum, urine, etc.)."
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^alias = "Design.nonInterventional.biospecimenDescription"
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^base.path = "Resource.design.nonInterventional.biospecimenDescription"
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^example.label = "example 1"
* 16.840.1.113883.3.1937.777.64.2.2.157--20231204000000 ^example.valueString = "blood"
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 0..1 BackboneElement "interventional" "Interventional aspects of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 ^comment = "<p><strong>Additional information: </strong>Group of items applicable only to interventional resources.</p> \n "
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 ^definition = "**Description: **Group of items providing information about specific interventional aspects of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 ^alias = "Design.interventional"
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 ^base.path = "Resource.design.interventional"
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.158--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 0..1 MS CodeableConcept "phase" "Numerical phase"
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.39--20230829205520 (required)
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 ^definition = "**Description: **If applicable, numerical phase of the [RESOURCE]."
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 ^alias = "Design.interventional.phase"
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 ^base.path = "Resource.design.interventional.phase"
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.159--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Phase_NCI"
* 16.840.1.113883.3.1937.777.64.2.2.160--20231204000000 0..1 MS BackboneElement "masking" "Masking of intervention(s) assignment"
* 16.840.1.113883.3.1937.777.64.2.2.160--20231204000000 ^definition = "**Description: **Group of items providing information about the masking of intervention(s) assignment."
* 16.840.1.113883.3.1937.777.64.2.2.160--20231204000000 ^alias = "Design.interventional.masking"
* 16.840.1.113883.3.1937.777.64.2.2.160--20231204000000 ^base.path = "Resource.design.interventional.masking"
* 16.840.1.113883.3.1937.777.64.2.2.160--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.160--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.161--20231204000000 0..1 MS boolean "general" "Masking implemented?"
* 16.840.1.113883.3.1937.777.64.2.2.161--20231204000000 ^definition = "**Description: **Indication whether a masking (or blinding) of intervention(s) assignment is implemented (i.e., whether someone is prevented from having knowledge of the interventions assigned to individual participants)."
* 16.840.1.113883.3.1937.777.64.2.2.161--20231204000000 ^alias = "Design.interventional.masking.general"
* 16.840.1.113883.3.1937.777.64.2.2.161--20231204000000 ^base.path = "Resource.design.interventional.masking.general"
* 16.840.1.113883.3.1937.777.64.2.2.161--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.161--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 0..* CodeableConcept "roles" "Who is masked?"
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.40--20230829211549 (required)
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 ^definition = "**Description: **If masking is implemented, the party(ies) who are masked."
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 ^alias = "Design.interventional.masking.roles"
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 ^base.path = "Resource.design.interventional.masking.roles"
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.2.162--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Masking_Roles_NCI_Local"
* 16.840.1.113883.3.1937.777.64.2.2.163--20231204000000 0..1 string "description" "Additional information about masking"
* 16.840.1.113883.3.1937.777.64.2.2.163--20231204000000 ^definition = "**Description: **If needed, additional descriptive information about masking (e.g. information about other parties who may be masked)."
* 16.840.1.113883.3.1937.777.64.2.2.163--20231204000000 ^alias = "Design.interventional.masking.description"
* 16.840.1.113883.3.1937.777.64.2.2.163--20231204000000 ^base.path = "Resource.design.interventional.masking.description"
* 16.840.1.113883.3.1937.777.64.2.2.163--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.163--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 0..1 MS CodeableConcept "allocation" "Type of allocation of participants to an arm"
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.69--20231025145059 (required)
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 ^definition = "**Description: **Type of allocation/assignment of individual participants of the [RESOURCE] to an arm."
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 ^alias = "Design.interventional.allocation"
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 ^base.path = "Resource.design.interventional.allocation"
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.164--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Study_Allocation_Local"
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 0..1 MS CodeableConcept "offLabelUse" "Off-label use of a drug product"
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.16--20230828215728 (required)
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 ^definition = "**Description: **Unapproved (off-label) use of a drug product."
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 ^alias = "Design.interventional.offLabelUse"
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 ^base.path = "Resource.design.interventional.offLabelUse"
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.165--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT"
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 1..1 MS BackboneElement "provenance" "Information about provenance aspects of the data entry"
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 ^comment = "\n                         <p><strong>Cardinality:</strong> 1..1</p> \n                     \n "
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 ^definition = "**Description: **Group of items providing information about provenance aspects of the data entry on the portal."
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 ^alias = "provenance"
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 ^base.path = "Resource.provenance"
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.166--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 1..1 MS CodeableConcept "dataSource" "Source of information about the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 from https://art-decor.org/fhir/ValueSet/2.16.840.1.113883.3.1937.777.64.11.45--20230905201454 (required)
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 1..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^definition = "**Description: **Source of information about the resource and the way it was uploaded/collected."
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^alias = "data_source"
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^base.path = "Resource.provenance.dataSource"
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.167--20231204000000 ^binding.description = "NFDI4Health_VS_MDS_Provenance_Data_Source_Local"
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 1..1 MS date "verificationDate" "Verfication date"
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 ^definition = "**Description: **Date on which the responsible party last verified the information about the resource, even if no additional or updated information is being submitted."
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 ^alias = "verification_date"
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 ^base.path = "Resource.provenance.verificationDate"
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.168--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 1..1 MS CodeableConcept "verificationUser" "User who last verified the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 ^definition = "**Description: **User who last verified the information about the resource."
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 ^alias = "verification_date_user"
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 ^base.path = "Resource.provenance.verificationUser"
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.169--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 1..1 MS date "firstSubmittedDate" "Date when the [RESOURCE] was first submitted for publication"
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 ^definition = "**Description: **Date when the resource was first submitted for publication."
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 ^alias = "resource_first_submitted_date"
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 ^base.path = "Resource.provenance.firstSubmittedDate"
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.170--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 1..1 MS CodeableConcept "firstSubmittedUser" "User who first submitted the [RESOURCE] for publication"
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 ^definition = "**Description: **User who first submitted the [RESOURCE] for publication."
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 ^alias = "resource_first_submitted_user"
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 ^base.path = "Resource.provenance.firstSubmittedUser"
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.171--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 1..1 MS date "firstPostedDate" "Date when the [RESOURCE] was first posted/published"
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 ^definition = "**Description: **Date when the resource was first posted/published."
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 ^alias = "resource_first_posted_date"
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 ^base.path = "Resource.provenance.firstPostedDate"
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.172--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 1..1 MS CodeableConcept "firstPostedUser" "User who first posted/published the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 ^definition = "**Description: **User who first posted/published the resource."
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 ^alias = "resource_first_posted_user"
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 ^base.path = "Resource.provenance.firstPostedUser"
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.173--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 1..1 MS date "lastUpdateSubmittedDate" "Date when the last update of the resource was submitted for publication."
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 ^definition = "**Description: **Date when the last update of the resource was submitted for publication."
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 ^alias = "last_update_submitted_date"
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 ^base.path = "Resource.provenance.lastUpdateSubmittedDate"
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.174--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 1..1 MS CodeableConcept "lastUpdateSubmittedUser" "User who submitted the last update of the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 ^definition = "**Description: **User who submitted the last update of the resource."
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 ^alias = "last_update_submitted_user"
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 ^base.path = "Resource.provenance.lastUpdateSubmittedUser"
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.175--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 1..1 MS date "lastUpdatePostedDate" "Date when the last update of the [RESOURCE] was posted/published"
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 ^definition = "**Description: **Date when the last update of the resource was posted/published."
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 ^alias = "last_update_posted_date"
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 ^base.path = "Resource.provenance.lastUpdatePostedDate"
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.176--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 1..1 MS CodeableConcept "lastUpdatePostedUser" "User who posted/published the last update"
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 ^definition = "**Description: **User who posted/published the last update."
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 ^alias = "last_update_posted_user"
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 ^base.path = "Resource.provenance.lastUpdatePostedUser"
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.177--20231204000000 ^base.max = "1"
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 1..1 MS string "resourceVersion" "Version number of the resource within the portal/system"
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 ^comment = "\n                             <p><strong>Cardinality:</strong> 0..1</p> \n                         \n "
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 ^definition = "**Description: **Version number of the resource within the portal/system."
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 ^alias = "resource_version"
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 ^base.path = "Resource.provenance.resourceVersion"
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 ^base.min = 1
* 16.840.1.113883.3.1937.777.64.2.2.178--20231204000000 ^base.max = "1"