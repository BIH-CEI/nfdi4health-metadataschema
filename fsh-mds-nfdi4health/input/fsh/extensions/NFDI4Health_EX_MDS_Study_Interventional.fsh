Extension: NFDI4Health_EX_MDS_Study_Interventional
Id: nfdi4health-ex-mds-study-interventional
Title: "NFDI4Health EX MDS Study Interventional"
Description: "Group of items providing information about interventional studys"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-interventional"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Interventional aspects of the [RESOURCE]"
* . ^definition = "Group of items providing information about specific interventional aspects of the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Study_Masking named masking 0..1 and
    NFDI4Health_EX_MDS_Off_Label_Use named offLabelUse 0..1 and
    allocation 0..1
* extension[allocation].value[x] only Coding
* extension[allocation].valueCoding from NFDI4Health_VS_MDS_Study_Allocation_NCI (required)
* extension[allocation] ^short = "Type of allocation of participants to an arm"
* extension[allocation] ^definition = "Type of allocation/assignment of individual participants of the [RESOURCE] to an arm."
* extension[allocation] ^comment = "Short input help: Select one value from the list."
* extension[allocation].valueCoding ^binding.description = "Value set defining codes to specify the subject allocation in a (sub-)study in a ResearchStudy resource."

Mapping: NFDI4Health-Study-International-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Interventional
* -> "Design.interventional"
* extension[allocation]  -> "Design.interventional.allocation"