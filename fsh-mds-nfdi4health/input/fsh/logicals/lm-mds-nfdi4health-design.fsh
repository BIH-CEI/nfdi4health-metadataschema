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
* Design.groupsOfDiseases.generally from NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_ICD10_SCT (required)
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
* Design.administrativeInformation.ethicsCommitteeApproval from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_NCI_Local (required)
* Design.administrativeInformation.ethicsCommitteeApproval ^definition = "**Description: **Status of the [RESOURCE] approval from the (leading) ethics committee."
* Design.administrativeInformation.ethicsCommitteeApproval ^base.path = "Design.administrativeInformation.ethicsCommitteeApproval"

* Design.administrativeInformation.status 1..1 CodeableConcept "status" "Overall [RESOURCE] status"
* Design.administrativeInformation.status from NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local (required)
* Design.administrativeInformation.status ^comment = "<p><strong>Additional information: </strong>If at least one [RESOURCE] site in a multicenter [RESOURCE] has the status 'Ongoing', then the overall status of the [RESOURCE] must be 'Ongoing'.</p> \n "
* Design.administrativeInformation.status ^definition = "**Description: **Overall status of the [RESOURCE]."
* Design.administrativeInformation.status ^alias = "Design.administrativeInformation.status"