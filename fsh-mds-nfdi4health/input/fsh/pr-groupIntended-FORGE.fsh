Alias: $ncimeta = http://ncimeta.nci.nih.gov
Alias: $nfdi4health-vs-mds-time-units-ucum-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum-umls
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender

Profile: NFDI4Health_PR_MDS_Group_Intended
Parent: Group
Id: nfdi4health-pr-mds-group-intended
Title: "NFDI4Health PR MDS Group Intended"
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
* characteristic[eligibleMinimumAge].code = $ncimeta#C49693 "Planned Minimum Age of Subjects (Group Attribute)" (exactly)
* characteristic[eligibleMinimumAge].value[x] only Quantity
* characteristic[eligibleMinimumAge].value[x].value 1..
* characteristic[eligibleMinimumAge].value[x].value ^short = "Minimum eligible age"
* characteristic[eligibleMinimumAge].value[x].value ^definition = "Numerical value of the minimum age of potential participants eligible to participate in the study."
* characteristic[eligibleMinimumAge].value[x].code 1..
* characteristic[eligibleMinimumAge].value[x].code from $nfdi4health-vs-mds-time-units-ucum-umls (required)
* characteristic[eligibleMinimumAge].value[x].code ^short = "Unit of time"
* characteristic[eligibleMaximumAge] ^short = "Eligibility criteria: Maximum age"
* characteristic[eligibleMaximumAge] ^definition = "Group of items providing information about the maximum eligible age of study participants."
* characteristic[eligibleMaximumAge].code = $ncimeta#C49694 "Planned Maximum Age of Subjects (Group Attribute)" (exactly)
* characteristic[eligibleMaximumAge].value[x] only Quantity
* characteristic[eligibleMaximumAge].value[x].value 1..
* characteristic[eligibleMaximumAge].value[x].value ^short = "Maximum eligible age"
* characteristic[eligibleMaximumAge].value[x].value ^definition = "Numerical value of the maximum age of potential participants eligible to participate in the study."
* characteristic[eligibleMaximumAge].value[x].code 1..
* characteristic[eligibleMaximumAge].value[x].code from $nfdi4health-vs-mds-time-units-ucum-umls (required)
* characteristic[eligibleMaximumAge].value[x].code ^short = "Unit of time"
* characteristic[gender] ^short = "Eligible gender"
* characteristic[gender] ^definition = "Gender of potential participants eligible to participate in the study."
* characteristic[gender].code = $ncimeta#C17357 "Gender (Organism Attribute)" (exactly)
* characteristic[gender].value[x] only CodeableConcept
* characteristic[gender].value[x] from $administrative-gender (required)
* characteristic[gender].value[x] ^binding.description = "The gender of a person used for administrative purposes."

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Group_Intended
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health
Id: NFDI4Health
Source: NFDI4Health_PR_MDS_Group_Intended
* -> "1.17.23 Resource.studyDesign.eligibilityCriteria"
* quantity -> "1.17.25 Resource.studyDesign.targetSampleSize"
* characteristic -> "1.17.23 Resource.studyDesign.eligibilityCriteria"
* characteristic[eligibleMinimumAge] -> "1.17.23.1 Resource.studyDesign.eligibilityCriteria.ageMin"
* characteristic[eligibleMinimumAge].value[x].value -> "1.17.23.1.1 Resource.studyDesign.eligibilityCriteria.ageMin.number"
* characteristic[eligibleMinimumAge].value[x].code -> "1.17.23.1.2 Resource.studyDesign.eligibilityCriteria.ageMin.timeUnit"
* characteristic[eligibleMaximumAge] -> "1.17.23.2 Resource.studyDesign.eligibilityCriteria.ageMax"
* characteristic[eligibleMaximumAge].value[x].value -> "1.17.23.2.1 Resource.studyDesign.eligibilityCriteria.ageMax.number"
* characteristic[eligibleMaximumAge].value[x].code -> "1.17.23.2.2 Resource.studyDesign.eligibilityCriteria.ageMax.timeUnit"
* characteristic[gender] -> "1.17.23.3 Resource.studyDesign.eligibilityCriteria.genders"