Profile: NFDI4Health_PR_MDS_Group_Actual
Parent: Group
Id: nfdi4health-pr-mds-group-actual
Title: "NFDI4Health PR MDS Group Actual"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-group-actual"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* actual = true (exactly)
* quantity ^short = "Obtained sample size"
* quantity ^definition = "Obtained number of observational units for the whole study (e.g. obtained number of study participants at all study sites). The value is only available after the end of recruitment."
* quantity ^comment = "Short Input Help: Enter “-1” if obtained sample size is unknown."
* characteristic ..1
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic contains
    examinedMinimumAge 0..1 and
    examinedMaximumAge 0..1
* characteristic[examinedMinimumAge] ^short = "Actual minimum age of participants"
* characteristic[examinedMinimumAge] ^definition = "Group of items providing information about the actual minimum age of study participants at the time of examination."
* characteristic[examinedMinimumAge].code = NFDI4Health_CS_MDS_Remaining_Concepts#001 "Minimum age of examined subjects" (exactly)
* characteristic[examinedMinimumAge].code ^fixedCodeableConcept.coding.version = "0.9"
* characteristic[examinedMinimumAge].value[x] only Quantity
* characteristic[examinedMinimumAge].value[x] ^short = "Actual minimum age of participants"
* characteristic[examinedMinimumAge].value[x] ^definition = "Group of items providing information about the actual minimum age of study participants at the time of examination."
* characteristic[examinedMinimumAge].value[x].value 1..
* characteristic[examinedMinimumAge].value[x].value ^short = "Actual minimum age of participants"
* characteristic[examinedMinimumAge].value[x].value ^definition = "Numerical value of the minimum age of study participants at the time of examination."
* characteristic[examinedMinimumAge].value[x].code 1..
* characteristic[examinedMinimumAge].value[x].code from NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS (required)
* characteristic[examinedMaximumAge] ^short = "Actual maximum age of participants"
* characteristic[examinedMaximumAge] ^definition = "Group of items providing information about the actual maximum age of study participants at the time of examination."
* characteristic[examinedMaximumAge].code = NFDI4Health_CS_MDS_Remaining_Concepts#002 "Maximum age of examined subjects" (exactly)
* characteristic[examinedMaximumAge].code ^fixedCodeableConcept.coding.version = "0.9"
* characteristic[examinedMaximumAge].value[x] only Quantity
* characteristic[examinedMaximumAge].value[x].value 1..
* characteristic[examinedMaximumAge].value[x].value ^short = "Actual maximum age of participants"
* characteristic[examinedMaximumAge].value[x].value ^definition = "Numerical value of the maximum age of study participants at the time of examination."
* characteristic[examinedMaximumAge].value[x].code 1..
* characteristic[examinedMaximumAge].value[x].code from NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS (required)
* characteristic[examinedMaximumAge].value[x].code ^short = "Unit of time"

Mapping: NFDI4Health-Group-Actual-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Group_Actual
* quantity -> "1.17.26 Resource.studyDesign.obtainedSampleSize"
* characteristic[examinedMinimumAge] -> "1.17.27 Resource.studyDesign.ageMinExamined"
* characteristic[examinedMinimumAge].value[x].value -> "1.17.27.1 Resource.studyDesign.ageMinExamined.number"
* characteristic[examinedMinimumAge].value[x].code -> "1.17.27.2 Resource.studyDesign.ageMinExamined.timeUnit"
* characteristic[examinedMaximumAge] -> "1.17.28 Resource.studyDesign.ageMaxExamined"
* characteristic[examinedMaximumAge].value[x].value -> "1.17.28.1 Resource.studyDesign.ageMaxExamined.number"
* characteristic[examinedMaximumAge].value[x].code -> "1.17.28.2 Resource.studyDesign.ageMaxExamined.timeUnit"