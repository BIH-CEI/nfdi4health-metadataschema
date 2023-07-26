Profile: NFDI4Health_PR_MDS_Group_Intended
Parent: Group
Id: nfdi4health-pr-mds-group-intended
Title: "NFDI4Health PR MDS Group Intended"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-group-intended"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Eligibility criteria for study participants"
* . ^definition = "Group of items providing information about eligibility criteria for study participants."
* actual = false (exactly)
* quantity ^short = "Target sample size"
* quantity ^definition = "Intended number of observational units for the whole study (e.g. intended number of study participants at all study sites)."
* quantity ^comment = "Short Input Help: Enter “-1” if target sample size was not set or is unknown."
* characteristic ..1
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic ^short = "Eligibility criteria for study participants"
* characteristic ^definition = "Group of items providing information about eligibility criteria for study participants."
* characteristic contains
    eligibleMinimumAge 0..1 and
    eligibleMaximumAge 0..1 and
    gender 0..1
* characteristic[eligibleMinimumAge] ^short = "Eligibility criteria: Minimum age"
* characteristic[eligibleMinimumAge] ^definition = "Group of items providing information about the minimum eligible age of study participants."
* characteristic[eligibleMinimumAge].code = $NCI#C49693 "Planned Minimum Age of Subjects (Group Attribute)" (exactly)
* characteristic[eligibleMinimumAge].value[x] only Quantity
* characteristic[eligibleMinimumAge].valueQuantity.value 1..
* characteristic[eligibleMinimumAge].valueQuantity.value ^short = "Minimum eligible age"
* characteristic[eligibleMinimumAge].valueQuantity.value ^definition = "Numerical value of the minimum age of potential participants eligible to participate in the study."
* characteristic[eligibleMinimumAge].valueQuantity.code 1..
* characteristic[eligibleMinimumAge].valueQuantity.code from NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS (required)
* characteristic[eligibleMinimumAge].valueQuantity.code ^short = "Unit of time"
* characteristic[eligibleMaximumAge] ^short = "Eligibility criteria: Maximum age"
* characteristic[eligibleMaximumAge] ^definition = "Group of items providing information about the maximum eligible age of study participants."
* characteristic[eligibleMaximumAge].code = $NCI#C49694 "Planned Maximum Age of Subjects (Group Attribute)" (exactly)
* characteristic[eligibleMaximumAge].value[x] only Quantity
* characteristic[eligibleMaximumAge].valueQuantity.value 1..
* characteristic[eligibleMaximumAge].valueQuantity.value ^short = "Maximum eligible age"
* characteristic[eligibleMaximumAge].valueQuantity.value ^definition = "Numerical value of the maximum age of potential participants eligible to participate in the study."
* characteristic[eligibleMaximumAge].valueQuantity.code 1..
* characteristic[eligibleMaximumAge].valueQuantity.code from NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS (required)
* characteristic[eligibleMaximumAge].valueQuantity.code ^short = "Unit of time"
* characteristic[gender] ^short = "Eligible gender"
* characteristic[gender] ^definition = "Gender of potential participants eligible to participate in the study."
* characteristic[gender].code = $NCI#C17357 "Gender (Organism Attribute)" (exactly)
* characteristic[gender].value[x] only CodeableConcept
* characteristic[gender].valueCodeableConcept from $administrative-gender (required)
* characteristic[gender].valueCodeableConcept ^binding.description = "The gender of a person used for administrative purposes."

Mapping: NFDI4Health-Group-Intended-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Group_Intended

* characteristic[eligibleMinimumAge] -> "1.17.23.1 Resource.studyDesign.eligibilityCriteria.ageMin"
* characteristic[eligibleMinimumAge].value[x].value -> "1.17.23.1.1 Resource.studyDesign.eligibilityCriteria.ageMin.number"
* characteristic[eligibleMinimumAge].value[x].code -> "1.17.23.1.2 Resource.studyDesign.eligibilityCriteria.ageMin.timeUnit"
* characteristic[eligibleMaximumAge] -> "1.17.23.2 Resource.studyDesign.eligibilityCriteria.ageMax"
* characteristic[eligibleMaximumAge].value[x].value -> "1.17.23.2.1 Resource.studyDesign.eligibilityCriteria.ageMax.number"
* characteristic[eligibleMaximumAge].value[x].code -> "1.17.23.2.2 Resource.studyDesign.eligibilityCriteria.ageMax.timeUnit"
* characteristic[gender] -> "1.17.23.3 Resource.studyDesign.eligibilityCriteria.genders"