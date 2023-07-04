Alias: $nfdi4health-vs-mds-study-masking-roles-nci-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-masking-roles-nci-local

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
* ^context.expression = "ResearchStudy.category"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    general 0..1 and
    roles 0..* and
    description 0..1
* extension[general] ^short = "Is masking of intervention(s) assignment implemented?"
* extension[general] ^definition = "Indication, whether a masking (or blinding) of intervention(s) assignment is implemented (i.e., whether someone is prevented from having knowledge of the interventions assigned to individual participants)."
* extension[general].value[x] only boolean
* extension[roles] ^short = "Who is masked?"
* extension[roles] ^definition = "If masking is implemented, the party(ies) who are masked."
* extension[roles] ^comment = "Short Input Help: Select all that apply."
* extension[roles] ^min = 0
* extension[roles].value[x] 1..
* extension[roles].value[x] only Coding
* extension[roles].value[x] from $nfdi4health-vs-mds-study-masking-roles-nci-local (required)
* extension[roles].value[x] ^binding.description = "Value set defining codes to specify the party(ies) who are masked if masking is implemented."
* extension[roles].value[x].system 1..
* extension[roles].value[x].code 1..
* extension[description] ^short = "Additional information about masking"
* extension[description] ^definition = "If needed, additional descriptive information about masking (e.g. information about other parties who may be masked)."
* extension[description] ^comment = "Short Input Help: If needed, additional information about masking, e.g. other parties who may be masked."
* extension[description].value[x] 1..
* extension[description].value[x] only string
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-masking" (exactly)

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Study_Masking
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Study-Masking-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Masking
* -> "1.17.37.2 Resource.studyDesign.interventional.masking"
* extension[general] -> "1.17.37.2.1 Resource.studyDesign.interventional.masking.general"