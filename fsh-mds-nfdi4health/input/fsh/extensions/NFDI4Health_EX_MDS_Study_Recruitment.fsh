Alias: $ResearchStudyRecruitment = http://hl7.org/fhir/5.0/StructureDefinition/extension-ResearchStudy.recruitment

Extension: NFDI4Health_EX_MDS_Recruitment_Backport_R5
Id: nfdi4health-ex-mds-recruitment-backport-r5
Title: "NFDI4Health EX MDS Recruitment Backport R5"
Description: "Extension providing information about recruitment and eligibility criteria."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-recruitment-backport-r5"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Outcome measures in the [RESOURCE]"
* . ^definition = "Group of items providing information about recruitment and eligibility criteria."

* extension contains
    targetNumber 0..1 and
    actualNumber 0..1 and
    eligibility 0..1 and
    actualGroup 0..1

* extension[targetNumber].value[x] only unsignedInt
* extension[targetNumber].valueUnsignedInt ^short = "Target sample size"
* extension[targetNumber].valueUnsignedInt ^definition = "Intended number of observational units for the whole [RESOURCE] (e.g. intended number of [RESOURCE] participants at all sites of the [RESOURCE])."
* extension[actualNumber].value[x] only unsignedInt
* extension[actualNumber].valueUnsignedInt ^short = "Obtained sample size"
* extension[actualNumber].valueUnsignedInt ^definition = "Obtained number of observational units for the whole [RESOURCE] (e.g. obtained number of [RESOURCE] participants at all sites of the [RESOURCE])."
* extension[actualNumber].valueUnsignedInt ^comment = "Additional information: The value is only available after the end of recruitment."
* extension[eligibility].value[x] only Reference(NFDI4Health_PR_MDS_Group_Eligibility)
* extension[eligibility].valueReference ^definition = "Information about the eligibility criteria in a study."
* extension[actualGroup].value[x] only Reference(NFDI4Health_PR_MDS_Group_Actual)
* extension[actualGroup].valueReference ^definition = "Further Information about the population in a study."


Mapping: NFDI4Health-Recruitment-Backport-R5-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Recruitment_Backport_R5
* extension[targetNumber] -> "Design.population.targetSampleSize"
* extension[actualNumber] -> "Design.population.obtainedSampleSize	"
* extension[eligibility] -> "Design.eligibilityCriteria"
* extension[actualGroup] -> "Design.population.description"
* extension[actualGroup] -> "Design.population.coverage"
* extension[actualGroup] -> "Design.population.countries"
* extension[actualGroup] -> "Design.population.region"
