Extension: NFDI4Health_EX_MDS_Study_Status
Id: nfdi4health-ex-mds-study-status
Title: "NFDI4Health EX MDS Study Status"
Description: "Extension informing about the status of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-status"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Status"
* . ^definition = "Group of items providing information about different status of a study (overall status, status of an interventional study, recruitment status, enrolling by invitation status)."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    overallStatus 1..1 and
    statusWhenIntervention 0..1 and
    recruitmentStatusRegister 0..1 and
    statusEnrollingByInvitation 0..1
* extension[overallStatus] ^short = "Overall study status"
* extension[overallStatus] ^definition = "Overall status of the study."
* extension[overallStatus] ^comment = "Additional information: If at least one study site in a multicenter study has the status 'Ongoing', then the overall status for the study must be 'Ongoing'. | Short input help: Select one value from the list."
* extension[overallStatus].value[x] 1..1
* extension[overallStatus].value[x] only Coding
* extension[overallStatus].valueCoding.code 1..1
* extension[overallStatus].valueCoding.system 1..1
* extension[overallStatus].valueCoding from NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local (required)
* extension[overallStatus].valueCoding ^binding.description = "Value set defining codes to specify the overall status of a study."
* extension[statusWhenIntervention] ^short = "Participants receive an intervention?"
* extension[statusWhenIntervention] ^definition = "Specification whether [RESOURCE] participants receive an intervention or have completed it but are still being followed up according to the primary objective of the [RESOURCE]."
* extension[statusWhenIntervention] ^comment = "Cardinality: 0..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Design.primaryDesign == 'Interventional' AND Design.administrativeInformation.status == ('At the planning stage' OR 'Ongoing (I): Recruitment ongoing, but data collection not yet started' OR 'Ongoing (II): Recruitment and data collection ongoing' OR 'Ongoing (III): Recruitment completed, but data collection ongoing' OR 'Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing'); otherwise 0..0/ Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health, CT.gov [2], DRKS [3]"
* extension[statusWhenIntervention].value[x] 1..1
* extension[statusWhenIntervention].value[x] only Coding
* extension[statusWhenIntervention].valueCoding.code 1..1
* extension[statusWhenIntervention].valueCoding.system 1..1
* extension[statusWhenIntervention].valueCoding from NFDI4Health_VS_MDS_Study_Status_When_Intervention_Local (required)
* extension[statusWhenIntervention].valueCoding ^binding.description = "Value set defining codes to specify the status of a study when it was halted."
* extension[recruitmentStatusRegister] ^short = "Overall recruitment status of the study from the register of clinical trials"
* extension[recruitmentStatusRegister] ^definition = "Overall recruitment status of the [RESOURCE] as indicated in the corresponding register of clinical trials."
* extension[recruitmentStatusRegister] ^comment = "Additional information: The item applies only to studies automatically uploaded from the registers of clinical trials."
* extension[recruitmentStatusRegister].value[x] 1..1
* extension[recruitmentStatusRegister].value[x] only Coding
* extension[recruitmentStatusRegister].valueCoding.code 1..1
* extension[recruitmentStatusRegister].valueCoding.system 1..1
* extension[recruitmentStatusRegister].valueCoding from NFDI4Health_VS_MDS_Study_Recruitment_Register_NCI_SCT_Local (required)
* extension[recruitmentStatusRegister].valueCoding ^binding.description = "Value set defining codes to specify the study recruitment status (from a register) in a ResearchStudy resource."
* extension[statusEnrollingByInvitation] ^short = "Participants enrolled by invitation?"
* extension[statusEnrollingByInvitation] ^definition = "Specification whether [RESOURCE] participants are selected from a predetermined population."
* extension[statusEnrollingByInvitation].value[x] 1..1
* extension[statusEnrollingByInvitation].value[x] only Coding
* extension[statusEnrollingByInvitation].valueCoding.code 1..1
* extension[statusEnrollingByInvitation].valueCoding.system 1..1
* extension[statusEnrollingByInvitation].valueCoding from NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT (required)
* extension[statusEnrollingByInvitation].valueCoding ^binding.description = "Value set used to respond to questions that can be answered Yes, No, or Not Applicable."

Mapping: NFDI4Health-Study-Status-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Status
* extension[overallStatus] -> "Design.administrativeInformation.status"
* extension[statusWhenIntervention] -> "Design.administrativeInformation.statusWhenIntervention"
* extension[recruitmentStatusRegister] -> "Design.administrativeInformation.recruitmentStatusRegister"
* extension[statusEnrollingByInvitation] -> "Design.administrativeInformation.statusEnrollingByInvitation"