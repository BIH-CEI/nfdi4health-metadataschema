Profile: NFDI4Health_PR_MDS_Group_Intended
Parent: Group
Id: nfdi4health-pr-mds-group-intended
Title: "NFDI4Health PR MDS Group Intended"
Description: "Information about the eligibility criteria in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-group-intended"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Eligibility criteria for [RESOURCE] participants"
* . ^definition = "Group of items providing information about eligibility criteria for [RESOURCE] participants."
* . 0..1
* actual = false (exactly)
* quantity ^short = "Target sample size"
* quantity ^definition = "Intended number of observational units for the whole [RESOURCE] (e.g. intended number of [RESOURCE] participants at all sites of the [RESOURCE])."
* characteristic ..*
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic ^short = "Eligibility criteria for study participants"
* characteristic ^definition = "Group of items providing information about eligibility criteria for study participants."
* characteristic contains
    eligibleMinimumAge 0..1 and
    eligibleMaximumAge 0..1 and
    gender 0..*
* characteristic[eligibleMinimumAge] ^short = "Eligibility criteria: Minimum age"
* characteristic[eligibleMinimumAge] ^definition = "Group of items providing information about the minimum eligible age of [RESOURCE] participants."
* characteristic[eligibleMinimumAge].code = $Remaining#189 "Planned Minimum Age of Subjects" (exactly)
* characteristic[eligibleMinimumAge].value[x] only Quantity
* characteristic[eligibleMinimumAge].valueQuantity.value 1..
* characteristic[eligibleMinimumAge].valueQuantity.value ^short = "Minimum eligible age"
* characteristic[eligibleMinimumAge].valueQuantity.value ^definition = "Numerical value of the minimum age of potential participants eligible to participate in the [RESOURCE]."
* characteristic[eligibleMinimumAge].valueQuantity.value ^comment = "Additional information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'. | Short input help: If age is less than 1 year, please indicate a value in months, weeks, days, hours, minutes, or weeks of gestation."
* characteristic[eligibleMinimumAge].valueQuantity.code 1..
* characteristic[eligibleMinimumAge].valueQuantity.code from NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC (required)
* characteristic[eligibleMinimumAge].valueQuantity.code ^short = "Unit of age"
* characteristic[eligibleMinimumAge].valueQuantity.code ^definition = "Unit of measurement used to describe the minimum eligible age."
* characteristic[eligibleMaximumAge] ^short = "Eligibility criteria: Maximum age"
* characteristic[eligibleMaximumAge] ^definition = "Group of items providing information about the maximum eligible age of [RESOURCE] participants."
* characteristic[eligibleMaximumAge].code = $Remaining#190 "Planned Maximum Age of Subjects" (exactly)
* characteristic[eligibleMaximumAge].value[x] only Quantity
* characteristic[eligibleMaximumAge].valueQuantity.value 1..
* characteristic[eligibleMaximumAge].valueQuantity.value ^short = "Maximum eligible age"
* characteristic[eligibleMaximumAge].valueQuantity.value ^definition = "Numerical value of the maximum age of potential participants eligible to participate in the [RESOURCE]."
* characteristic[eligibleMaximumAge].valueQuantity.value ^comment = "Additional information: In the case of cohort studies, further participant ages can be indicated in the fields 'Inclusion criteria' or 'Exclusion criteria'. | Short input help: If age is less than 1 year, please indicate a value in months, weeks, days, hours, minutes, or weeks of gestation."
* characteristic[eligibleMaximumAge].valueQuantity.code 1..
* characteristic[eligibleMaximumAge].valueQuantity.code from NFDI4Health_VS_MDS_Time_Units_UCUM_LOINC (required)
* characteristic[eligibleMaximumAge].valueQuantity.code ^short = "Unit of time"
* characteristic[eligibleMaximumAge].valueQuantity.code ^definition = "Unit of measurement used to describe the maximum eligible age."
* characteristic[gender] ^short = "Eligible gender"
* characteristic[gender] ^definition = "Gender of potential participants eligible to participate in the [RESOURCE]."
* characteristic[gender] ^comment = "Short input help: Select all that apply. If no gender was explicitly excluded in the [RESOURCE], 'Male', 'Female', and 'Diverse' should be selected."
* characteristic[gender].code = $SCT#263495000 "Gender (observable entity)" (exactly)
* characteristic[gender].value[x] only CodeableConcept
* characteristic[gender].valueCodeableConcept from NFDI4Health_VS_MDS_Study_Eligibility_Gender_SNOMEDCT_Local (required)
* characteristic[gender].valueCodeableConcept ^binding.description = "The gender of potential participants eligible to participate in the study."


Mapping: NFDI4Health-Group-Intended-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Group_Intended
* -> "Design.eligibilityCriteria"
* quantity -> "Design.population.targetSampleSize"
* characteristic[eligibleMinimumAge] -> "Design.eligibilityCriteria.ageMin"
* characteristic[eligibleMinimumAge].valueQuantity.value -> "Design.eligibilityCriteria.ageMin.number"
* characteristic[eligibleMinimumAge].valueQuantity.code -> "Design.eligibilityCriteria.ageMin.timeUnit"
* characteristic[eligibleMaximumAge] -> "Design.eligibilityCriteria.ageMax"
* characteristic[eligibleMaximumAge].valueQuantity.value -> "Design.eligibilityCriteria.ageMax.number"
* characteristic[eligibleMaximumAge].valueQuantity.code -> "Design.eligibilityCriteria.ageMax.timeUnit"
* characteristic[gender] -> "Design.eligibilityCriteria.genders"
