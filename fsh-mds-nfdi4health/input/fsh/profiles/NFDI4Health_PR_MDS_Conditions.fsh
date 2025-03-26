Profile: NFDI4Health_PR_MDS_Conditions
Parent: Condition
Id: nfdi4health-pr-mds-conditions
Title: "NFDI4Health PR MDS Conditions"
Description: "Profile intended to capture information on conditions for a Registry."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-conditions"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"



* code ^short = "Primary health conditions or diseases considered in the [RESOURCE]"
* code ^definition = "Group of items providing information about primary health conditions or diseases considered in the [RESOURCE]."
* code.text 1..1
* code.text ^short = "Health condition or disease"
* code.text ^definition = "The disease, disorder, syndrome, illness, or injury that is being studied. Conditions may also include other health-related issues, such as lifespan, quality of life, and health risks."
* code.text ^comment = "Preferably, use terms from terminologies such as SNOMED CT."
* code.text ^example.label = "Example of a health condition"
* code.text ^example.valueString = "SARS-CoV-2"
* code.coding.extension contains
    NFDI4Health_EX_MDS_CodeableConcept named codeableConcept 1..1
* subject only Reference(NFDI4Health_PR_MDS_Group_Actual)

Mapping: NFDI4Health-Conditions-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Conditions
* code -> "Design.conditions"
* code.coding.code -> "Design.conditions.classification"
* code.text -> "Design.conditions.label"
* code.coding.extension[codeableConcept] -> "Design.conditions.code"




 

 