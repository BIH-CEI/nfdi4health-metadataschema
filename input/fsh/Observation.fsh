Profile: ObservationISA
Parent: Observation
Id: ObservationISA
Title: "ObservationISA"
Description: ""
// Adding extension
* extension contains ResearchStudyExtension named researchStudy 1..1

// Extensions
Extension: ResearchStudyExtension
Id: ResearchStudyExtension
Title: "ResearchStudy"
Description: ""
* value[x] only Reference(ResearchStudyISA)