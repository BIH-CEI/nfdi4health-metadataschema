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
* . ^short = "Target follow-up duration"
* . ^definition = "If applicable, anticipated time period over which each participant is to be followed, provided in years."
* . ^comment = "Short input help : The value must be provided in years."
* value[x] 1..
* value[x] only Quantity
* valueQuantity.value 1..
* valueQuantity.code 1..
* valueQuantity.code ^code = $UCUM#a "year"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)

Mapping: NFDI4Health-Study-Target-Followup-Duration-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Target_Followup_Duration
* -> "1.17.36.2 Resource.studyDesign.nonInterventional.targetFollowUpDuration"