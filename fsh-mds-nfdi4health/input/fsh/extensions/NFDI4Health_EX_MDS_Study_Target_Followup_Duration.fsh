Extension: NFDI4Health_EX_MDS_Study_Target_Followup_Duration
Id: nfdi4health-ex-mds-study-target-followup-duration
Title: "NFDI4Health EX MDS Study Target Followup Duration"
Description: "Extension informing about the target follow-up duration of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-target-followup-duration"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Target follow-up duration of the [RESOURCE]"
* . ^definition = "If applicable, anticipated time period over which each participant would be followed."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    number 1..1 and
    frequency 0..1
* extension[number].value[x] 1..
* extension[number].value[x] only Quantity
* extension[number].valueQuantity.value 1..
* extension[number].valueQuantity.value ^short = "Target follow-up duration"
* extension[number].valueQuantity.value ^definition = "Numerical value of the target follow-up duration."
* extension[number].valueQuantity.code 1..
* extension[number].valueQuantity.code ^short = "Unit of time"
* extension[number].valueQuantity.code ^definition = "Unit of measurement used to describe the follow-up duration."
* extension[number].valueQuantity.code from NFDI4Health_VS_MDS_Time_Units_UCUM (required)
* extension[number].valueQuantity.system 1..
* extension[frequency].value[x] 1..
* extension[frequency].value[x] only integer
* extension[frequency].valueInteger ^short = "Number of follow-ups conducted"
* extension[frequency].valueInteger ^definition = "The number of follow-ups conducted within the specified duration."

Mapping: NFDI4Health-Study-Target-Followup-Duration-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Target_Followup_Duration
* -> "1.17.27.2 Design.nonInterventional.targetFollowUpDuration"
* extension[number].valueQuantity.value -> "1.17.27.2.1 Design.nonInterventional.targetFollowUpDuration.number"
* extension[number].valueQuantity.code -> "1.17.27.2.2 Design.nonInterventional.targetFollowUpDuration.timeUnit"
* extension[frequency].valueInteger -> "1.17.27.2.3	Design.nonInterventional.targetFollowUpDuration.frequency"