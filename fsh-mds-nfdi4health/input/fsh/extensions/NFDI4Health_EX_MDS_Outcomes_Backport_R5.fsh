Alias: $ResearchStudyOutcomeMeasure = http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.outcomeMeasure

Extension: NFDI4Health_EX_MDS_OutcomeMeasure_Backport_R5
Id: nfdi4health-ex-mds-outcomemeasure-backport-r5
Title: "NFDI4Health EX MDS Outcome Measure Backport R5"
Description: "Extension providing information about outcome measure(s)."
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.outcomeMeasure"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Outcome measures in the [RESOURCE]"
* . ^definition = "Group of items providing information about outcome measures."
* . ^comment = "Additional information: The items are optional, especially for non-interventional studies. [Backport Extension from R5: ResearchStudy.outcomeMeasure; Please note that some cardinalities have been adapted and some of the elements are not relevant for NFDI4Health. We changed the DataType from description to string and added an element to capture the time frame.]"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 1..1 and
    type 0..1 and
    description 0..1 and
    reference 0..1 and
    timeFrame 0..1 
* extension[name].value[x] only string
* extension[name].valueString ^short = "Name of the outcome measure"
* extension[name].valueString ^definition = "Name of the outcome measure. For non-interventional studies, this can be the name of specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* extension[name].valueString ^comment = "Short input help: For non-interventional studies, you can provide specific measurement(s) or observation(s) used to describe patterns of diseases or traits or associations with exposures, risk factors or treatment."
* extension[type].value[x] only CodeableConcept
* extension[type].valueCodeableConcept ^short = "Type of the outcome measure"
* extension[type].valueCodeableConcept ^definition = "The type indicates the degree of importance of the outcome measure in the [RESOURCE]."
* extension[type].valueCodeableConcept.coding.code 1..1
* extension[type].valueCodeableConcept.coding.system 1..1
* extension[type].valueCodeableConcept.coding from NFDI4Health_VS_MDS_Study_Outcome_Type_NCI (required)
* extension[type].valueCodeableConcept.coding ^binding.description = "Value set defining codes to specify the type of outcome measure."
* extension[description].value[x] only string
* extension[description].valueString ^short = "Description of the outcome measure"
* extension[description].valueString ^definition = "Additional descriptive information about the given outcome."
* extension[timeFrame].value[x] only string
* extension[timeFrame].valueString ^short = "Time point(s) of assessment"
* extension[timeFrame].valueString ^definition = "Description of the time point(s) at which the measurement for the outcome is assessed, e.g. the specific duration of time over which each participant is assessed."

Mapping: NFDI4Health-OutcomeMeasure-Backport-R5-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_OutcomeMeasure_Backport_R5
* -> "1.17.23 Design.outcomes"
* extension[name] -> "1.17.23.1	Design.outcomes.title"
* extension[type] -> "1.17.23.3	Design.outcomes.type"
* extension[description] -> "1.17.23.2 Design.outcomes.description"
* extension[timeFrame] -> "1.17.23.4 Design.outcomes.timeFrame"