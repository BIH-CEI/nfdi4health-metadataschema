Alias: $ResearchStudyComparisonGroup = http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.comparisonGroup

Extension: NFDI4Health_EX_MDS_Study_Comparison_Group_Backport_R5
Id: nfdi4health-ex-mds-study-comparison-group-backport-r5
Title: "NFDI4Health EX MDS Study Comparison Group Backport R5"
Description: "Extension providing information about the arm(s)/group(s)/cohort(s) and intervention(s)/exposure(s) in a resource. Based on ResearchStudy.comparisonGroup (R5)"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-comparison-group-backport-r5"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Arms or groups/cohorts of the [RESOURCE]"
* . ^definition = "Group of items providing information about arms or groups/cohorts of a [RESOURCE]."
* . ^comment = "[Backport Extension from R5: ResearchStudy.comparisonGroup; Please note that some of the elements are not relevant for NFDI4Health. Also the DataType of 'Description' has been modified to string.]"
* extension contains
    linkId 0..1 and
    name 1..1 and
    type 0..1 and
    description 0..1 and
    intendedExposure 0..* and
    observedGroup 0..1
* extension[linkId].value[x] only id
* extension[name].value[x] only string
* extension[name].valueString ^short = "Name of the group"
* extension[name].valueString ^definition = "Short name used to identify the group."
* extension[name].valueString ^comment = "'Group' means a predefined group (cohort) of participants to be studied."
* extension[type].value[x] only CodeableConcept
* extension[description].value[x] only string
* extension[description].valueString ^short = "Additional information about the group"
* extension[description].valueString ^definition = "Additional descriptive information about the given group."
* extension[description].valueString ^comment = "Explanation of the nature of the [RESOURCE] group (for example, participants with and without a condition, participants with and without an exposure, etc.)."
* extension[intendedExposure].value[x] only Reference(NFDI4Health_PR_MDS_Evidence_Variable_Intervention or NFDI4Health_PR_MDS_Evidence_Variable_Exposure)
* extension[intendedExposure] ^short = "For 1.17.21	Design.interventions: Interventions of the [RESOURCE] | For 1.17.22	Design.exposures: Exposures of the [RESOURCE]"
* extension[intendedExposure] ^definition = "For 1.17.21 Design.interventions: Group of items providing information about the interventions of the [RESOURCE]. | For 1.17.22 Design.exposures: Group of items providing information about the exposures of the [RESOURCE]."
* extension[intendedExposure] ^comment = "Additional information: For 1.17.21 Design.interventions: Specification of the intervention(s) associated with each arm. | For 1.17.22 Design.exposures: Specification of the exposure(s) associated with each group."
* extension[observedGroup].value[x] only Reference(Group)

Mapping: NFDI4Health-Study-Comparison-Group-Backport-R5-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Comparison_Group_Backport_R5
* -> "Design.groups" 
* extension[name] -> "Design.groups.name"
* extension[description] -> "Design.groups.description"
* extension[intendedExposure] -> "Design.interventions"
* extension[intendedExposure] -> "Design.exposures"