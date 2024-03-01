Extension: NFDI4Health_EX_MDS_Study_Type
Id: nfdi4health-ex-mds-study-type
Title: "NFDI4Health EX MDS Study Type"
Description: "Group of items providing information about the specification of the type of the [RESOURCE]"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-type"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Specification of the type of the [RESOURCE]"
* . ^definition = "Group of items providing information about the type of the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    interventional 0..* and
    nonInterventional 0..*
* extension[interventional] ^short = "Interventional [RESOURCE] type"
* extension[interventional] ^definition = "The strategy for assigning interventions to participants."
* extension[interventional].value[x] only Coding
* extension[interventional].valueCoding from NFDI4Health_VS_MDS_Study_Type_Interventional_NCI (required)
* extension[interventional].valueCoding ^binding.description = "Value set defining codes to specify the type of an interventional (sub-)study in a ResearchStudy resource."
* extension[nonInterventional] ^short = "Non-interventional [RESOURCE] type"
* extension[nonInterventional] ^definition = "The primary strategy for participant identification and follow-up."
* extension[nonInterventional].value[x] 1..
* extension[nonInterventional].value[x] only Coding
* extension[nonInterventional].valueCoding from NFDI4Health_VS_MDS_Study_Type_Non_Interventional_NCI_MSH_Local (required)
* extension[nonInterventional].valueCoding ^binding.description = "Value set defining codes to specify the type of a non interventional (sub-)study in a ResearchStudy resource."
 

Mapping: NFDI4Health-Study-Type-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Type
* -> "Design.studyType"
* extension[interventional] -> "Design.studyType.interventional"
* extension[nonInterventional] -> "Design.studyType.nonInterventional"
