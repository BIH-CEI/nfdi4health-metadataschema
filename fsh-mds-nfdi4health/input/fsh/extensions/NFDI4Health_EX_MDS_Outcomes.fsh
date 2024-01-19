Extension: NFDI4Health_EX_MDS_Outcomes
Id: nfdi4health-ex-mds-outcomes
Title: "NFDI4Health EX MDS Outcomes"
Description: "Extension providing information about outcome measure(s)."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-outcomes"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Outcome measures in the [RESOURCE]"
* . ^definition = "Group of items providing information about outcome measur"
* . ^comment = "Additional information: The items are optional, especially for non-interventional studies. [Extension based on ResearchStudy.outcomeMeasure (R5)]"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 1..1 and
    type 0..1 and
    description 0..1 and
    timeFrame 0..1 
* extension[name] ^short = "Name of the outcome measure"
* extension[name] ^definition = "Name of the outcome measure. For non-interventional studies, this can be the name of specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* extension[name] ^comment = "Short input help: For non-interventional studies, you can provide specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* extension[name].value[x] only string
* extension[type] ^short = "Type of the outcome measure"
* extension[type] ^definition = "The type indicates the degree of importance of the outcome measure in the [RESOURCE]."
* extension[type].value[x] 1..1
* extension[type].value[x] only Coding
* extension[type].valueCoding.code 1..1
* extension[type].valueCoding.system 1..1
* extension[type].valueCoding from NFDI4Health_VS_MDS_Study_Outcome_Type_NCI (required)
* extension[type].valueCoding ^binding.description = "Value set defining codes to specify the type of outcome measure."
* extension[description] ^short = "Description of the outcome measure"
* extension[description] ^definition = "Additional descriptive information about the given outcome."
* extension[description].value[x] only string
* extension[timeFrame] ^short = "Time point(s) of assessment"
* extension[timeFrame] ^definition = "Description of the time point(s) at which the measurement for the outcome is assessed, e.g. the specific duration of time over which each participant is assessed."
* extension[timeFrame].value[x] only string

Mapping: NFDI4Health-Outcomes-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Outcomes
* -> "1.17.23 Design.outcomes"
* extension[name] -> "1.17.23.1	Design.outcomes.title"
* extension[type] -> "1.17.23.3	Design.outcomes.type"
* extension[description] -> "1.17.23.2 Design.outcomes.description"
* extension[timeFrame] -> "1.17.23.4 Design.outcomes.timeFrame"