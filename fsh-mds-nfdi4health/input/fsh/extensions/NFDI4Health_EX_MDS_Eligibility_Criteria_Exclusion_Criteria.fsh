Extension: NFDI4Health_EX_MDS_Eligibility_Criteria_Exclusion_Criteria
Id: nfdi4health-ex-mds-eligibility-criteria-exclusion-criteria
Title: "NFDI4Health EX MDS Eligibility Criteria Exclusion Criteria"
Description: "Extension informing about the exclusion criteria."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-eligibility-criteria-exclusion-criteria"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Exclusion criteria"
* . ^definition = "Exclusion criteria for participation in the [RESOURCE]."
* . ^comment = "Short input help: If possible, use an enumerated or bulleted list for each criterion, starting with '-' and finishing with ';'."
* value[x] 1..1
* value[x] only string

Mapping: NFDI4Health-Eligibility-Criteria-Exclusion-Criteria-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Eligibility_Criteria_Exclusion_Criteria
* -> "1.17.16.5 Design.eligibilityCriteria.exclusionCriteria"