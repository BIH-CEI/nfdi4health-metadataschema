Profile: NFDI4Health_PR_MDS_Conditions
Parent: Condition
Id: nfdi4health-pr-mds-conditions
Title: "NFDI4Health PR MDS Centers"
Description: "Profile intended to capture information on conditions for a Registry."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-conditions"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* code ^short = "Primary health condition[conditions](s) or disease(s) considered in the [RESOURCE]"
* code ^definition = "Group of items providing information about primary health condition[conditions](s) or disease(s) considered in the [RESOURCE]."
* code.coding.code ^short = "Terminology/classification"
* code.coding.code ^definition = "Terminology/classification used for the health condition[conditions] or disease."
* code.coding.code ^comment = "Short Input Help: If used, name of the terminology/classification."
* code.coding.code from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* code.text 1..1
* code.text ^short = "Primary health condition[conditions] or disease name"
* code.text ^definition = "Name of primary health condition[conditions] or disease considered in the [RESOURCE]."
* code.text ^comment = "Additional information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. |Short Input Help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* code.text ^example.label = "Example of a primary health condition name"
* code.extension contains
    NFDI4Health_EX_MDS_URI named uri 0..1
* subject only Reference(NFDI4Health_PR_MDS_Group_Actual)


Mapping: NFDI4Health-Conditions-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Conditions
* code -> "Design.conditions"
* code.coding.code -> "Design.conditions.classification"
* code.text -> "Design.conditions.label"
* code.extension[uri] -> "Design.conditions.code"




 

 