Extension: NFDI4Health_EX_MDS_Study_Non_Interventional
Id: nfdi4health-ex-mds-study-non-interventional
Title: "NFDI4Health EX MDS Study Non Interventional"
Description: "Group of items providing information about non interventional studys"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-non-interventional"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Non-interventional aspects of the [RESOURCE]"
* . ^definition = "Group of items providing information about specific non-interventional aspects of the [RESOURCE]."

* extension contains
    timePerspectives 0..1 and  
    NFDI4Health_EX_MDS_Study_Target_Followup_Duration named targetFollowUpDuration 0..1 and 
    biospecimenRetention 0..* and
    biospecimenDescription 0..1

* extension[timePerspectives].value[x] only Coding
* extension[timePerspectives].valueCoding from NFDI4Health_VS_MDS_Study_Time_Perspectives_NCI (required)
* extension[timePerspectives] ^short = "Temporal design of the study"
* extension[timePerspectives] ^definition = "Temporal design of the study, i.e. the  relationship of observation period to time of participant enrollment."
* extension[timePerspectives] ^comment = "Is it a retrospective, prospective or cross-sectional study?"
* extension[timePerspectives].valueCoding ^binding.description = "Value set defining codes to specify the time perspective of a study in a ResearchStudy resource."
* extension[biospecimenRetention] ^short = "Biosamples retained in a biorepository"
* extension[biospecimenRetention] ^definition = "Indication whether samples of biomaterials from participants of the [RESOURCE] are retained in a biorepository."
* extension[biospecimenRetention] ^comment = "Short input help: Select all that apply."
* extension[biospecimenRetention].value[x] only Coding
* extension[biospecimenRetention].valueCoding from NFDI4Health_VS_MDS_Study_Biospecimen_Retention_NCI (required)
* extension[biospecimenRetention].valueCoding ^binding.description = "Value set defining codes to specify which biosamples are retained in a biorepository."
* extension[biospecimenDescription] ^short = "Specific types of retained biosamples"
* extension[biospecimenDescription] ^definition = "Additional information about retained biosamples, i.e. an indication of the specific types of retained biospecimens (e.g. blood, serum, urine, etc.)."
* extension[biospecimenDescription] ^comment = "You can provide here specific types of retained biosamples (e.g. blood, serum, urine, etc.)."
* extension[biospecimenDescription] ^example.label = "Example of a specific type of a retained biosample"
* extension[biospecimenDescription] ^example.valueString = "blood"
* extension[biospecimenDescription].value[x] only string

Mapping: NFDI4Health-Study-Non-International-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Non_Interventional
* -> "Design.nonInterventional"
* extension[timePerspectives] -> "Design.nonInterventional.timePerspectives"
* extension[biospecimenRetention] -> "Design.nonInterventional.biospecimenRetention"
* extension[biospecimenDescription] -> "Design.nonInterventional.biospecimenDescription"

