Extension: NFDI4Health_EX_MDS_Study_Masking
Id: nfdi4health-ex-mds-study-masking
Title: "NFDI4Health EX MDS Study Masking"
Description: "Group of items providing information about the masking of intervention(s) assignment"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-masking"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Masking of intervention(s) assignment"
* . ^definition = "Group of items providing information about the masking of intervention(s) assignment"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    general 0..1 and
    roles 0..* and
    description 0..1
* extension[general] ^short = "Masking implemented?"
* extension[general] ^definition = "Indication whether a masking (or blinding) of intervention(s) assignment is implemented (i.e., whether someone is prevented from having knowledge of the interventions assigned to individual participants)."
* extension[general].value[x] only boolean
* extension[roles] ^short = "Who is masked?"
* extension[roles] ^definition = "If masking is implemented, the party(ies) who are masked."
* extension[roles] ^comment = "Short Input Help: Select all that apply."
* extension[roles].value[x] 1..
* extension[roles].value[x] only Coding
* extension[roles].valueCoding from NFDI4Health_VS_MDS_Study_Masking_Roles_NCI_Local (required)
* extension[roles].valueCoding ^binding.description = "Value set defining codes to specify the party(ies) who are masked if masking is implemented."
* extension[roles].valueCoding.system 1..
* extension[roles].valueCoding.code 1..
* extension[description] ^short = "Additional information about masking"
* extension[description] ^definition = "If needed, additional descriptive information about masking (e.g. information about other parties who may be masked)."
* extension[description] ^comment = "Short Input Help: You can provide here additional information about masking, e.g. other parties who may be masked."
* extension[description].value[x] 1..
* extension[description].value[x] only string

Mapping: NFDI4Health-Study-Masking-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Masking
* -> "1.17.28.2	Design.interventional.masking"
* extension[general] -> "1.17.28.2.1 Design.interventional.masking.general"
* extension[roles] -> "1.17.28.2.2 Design.interventional.masking.roles"
* extension[description] -> "1.17.28.2.3 Design.interventional.masking.description"