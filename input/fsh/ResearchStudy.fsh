Profile: ResearchStudyISA
Parent: ResearchStudy
Id: ResearchStudyISA
Title: "ResearchStudyISA"
Description: "ISA-ResearchStudy"
* identifier 0..* MS
* title 0..1 MS
* status MS
* status from Status (required) 
* description 0..1 MS
* contact 0..1 MS

* protocol 0..0
* primaryPurposeType 0..0
* phase 0..0 
* category from MyValueSetStudies (example)
* focus 0..0
* condition 0..0
* keyword 0..0
* location 0..0
* description 0..0
* enrollment 0..0
* period 0..0
* sponsor 0..0
* principalInvestigator 0..0
* site 0..0
* reasonStopped 0..0
* note 0..0
* arm 0..0
* objective 0..0    

// Adding extension
* extension contains SubmissionDate named submissionDate 1..1
* extension contains PublicReleaseDate named publicReleaseDate 0..1
* extension contains Result named result 0..*


// Extensions
Extension: SubmissionDate
Id: SubmissionDate
Title: "SubmissionDate"
Description: "Status of study with time for that status"
* value[x] only date

Extension: PublicReleaseDate
Id: PublicReleaseDate
Title: "Public release date"
Description: "Status of study with time for that status"
* value[x] only date or Period

Extension: Result
Id: Result
Title: "Result(s)"
Description: "Link to results generated during the study (extension build based on and adapted from FHIR R5)"
* value[x] only Reference
* value[x] = Reference(Citation)

// Value Sets
//ValueSet: related-artifact-type-ISA
//Id: related-artifact-type-ISA
//Title: "related-artifact-type-ISA"
//Description: ""
