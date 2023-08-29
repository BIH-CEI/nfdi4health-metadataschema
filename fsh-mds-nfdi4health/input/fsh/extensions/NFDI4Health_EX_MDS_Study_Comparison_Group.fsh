Alias: $nfdi4health-vs-mds-study-arm-group-type-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-arm-group-type-umls

Extension: NFDI4Health_EX_MDS_Study_Comparison_Group
Id: nfdi4health-ex-mds-study-comparison-group
Title: "NFDI4Health EX MDS Study Comparison Group"
Description: "Extension providing information about the arm(s)/group(s)/cohort(s) and intervention(s)/exposure(s) in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-comparison-group"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..*
* . ^short = "Arms or groups/cohorts of the study"
* . ^definition = "Group of items providing information about arms or groups/cohorts of the study."
* . ^comment = "[Extension based on ResearchStudy.comparisonGroup (R5).]"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    name 1..1 and
    type 0..1 and
    description 0..1 and
    intendedExposure 0..*
* extension[name] ^short = "Name of the arm/group"
* extension[name] ^definition = "Short name used to identify the arm/group."
* extension[name] ^comment = "Additional information: For interventional studies: 'Arm' means a pre-specified group or subgroup of participant(s) in a clinical trial assigned to receive specific intervention(s) (or no intervention) according to a protocol. For non-interventional studies: 'Group' means a predefined group (cohort) of participants to be studied."
* extension[name].value[x] 1..1 
* extension[name].value[x] only string
* extension[type] ^short = "Role of the arm"
* extension[type] ^definition = "Role of the given arm in the study."
* extension[type] ^comment = "Short input help: Select one value from the list."
* extension[type].value[x] 1..1
* extension[type].value[x] only Coding
* extension[type].valueCoding.code 1..1
* extension[type].valueCoding.system 1..1
* extension[type].valueCoding from $nfdi4health-vs-mds-study-arm-group-type-umls (required)
* extension[type].valueCoding ^binding.description = "Value set defining codes to specify the role of a study arm or group in a ResearchStudy resource."
* extension[description] ^short = "Additional information about the arm/group"
* extension[description] ^definition = "Additional descriptive information about the given arm/group."
* extension[description] ^comment = "Additional information: For interventional studies: If needed, additional descriptive information (including which interventions are administered in each arm) to differentiate each arm from other arms in the clinical trial. For non-interventional studies: Explanation of the nature of the study group (for example, those with a condition and those without a condition; those with an exposure and those without an exposure)."
* extension[description].value[x] 0..1
* extension[description].value[x] only string
* extension[intendedExposure] ^short = "Interventions/exposures of the study"
* extension[intendedExposure] ^definition = "Group of items providing information about study interventions or exposures."
* extension[intendedExposure] ^comment = "Additional information: The items may be not applicable for non-interventional studies."
* extension[intendedExposure].value[x] 1..1
* extension[intendedExposure].value[x] only Reference(EvidenceVariable)

Mapping: NFDI4Health-Study-Comparison-Group-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Comparison_Group
* -> "1.17.30 Resource.studyDesign.armsGroups" 
* extension[name] -> "1.17.30.1 Resource.studyDesign.armsGroups.label"
* extension[type] -> "1.17.30.2 Resource.studyDesign.armsGroups.type"
* extension[description] -> "1.17.30.3 1.17.30.2 Resource.studyDesign.armsGroups.description"
* extension[intendedExposure] -> "1.17.31 Resource.studyDesign.interventions"