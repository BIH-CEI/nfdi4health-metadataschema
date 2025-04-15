Logical: NFDI4Health_LM_Metadataschema_RecordLinkage
Parent: Element
Id: nfdi4health-lm-metadatenschema-recordlinkage
Title: "NFDI4Health Module Record Linkage"
Description: "NFDI4Health Logical Module of Module Record Linkage V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-rl"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* RecordLinkage 0..1 BackboneElement "Information about record linkage for the [RESOURCE]" "Group of items providing information on record linkage."
* RecordLinkage ^comment = "Cardinality: \n* 1..1, if Design.dataSharingPlan.recordLinkage == \"Yes\"\n* 0..0, if Design.dataSharingPlan.recordLinkage == \"No\""

* RecordLinkage.legalBasis 0..1 boolean "Legal regulation/permission for record linkage"
* RecordLinkage.legalBasis ^comment = "Additional information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.)."
* RecordLinkage.legalBasis ^definition = "Indication whether there are specific regulations/permissions for record linkage."

* RecordLinkage.legalBasisDetails 0..1 string "Specific legal basis allowing record linkage"
* RecordLinkage.legalBasisDetails ^comment = "Additional information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.). Cardinality: \n* 1..1, if RecordLinkage.legalBasis == \"Yes\"\n* 0..0, if RecordLinkage.legalBasis == \"No\""
* RecordLinkage.legalBasisDetails ^definition = "Information specifying which specific legal basis allows for record linkage."

* RecordLinkage.informedConsent 0..1 boolean "Informed consent for record linkage obtained?"
* RecordLinkage.informedConsent ^definition = "Indication whether an informed consent that allows record linkage has been obtained."

* RecordLinkage.responsibleInstitutions 0..* string "Responsible authorities"
* RecordLinkage.responsibleInstitutions ^definition = "Institutions and authorities that must agree to the record linkage."

* RecordLinkage.additionalCosts 0..1 boolean "Additional costs for record linkage"
* RecordLinkage.additionalCosts ^definition = "Indication whether there are additional costs for record linkage."

* RecordLinkage.identifiers 0..* string "Identifiers for record linkage"
* RecordLinkage.identifiers ^definition = "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."

* RecordLinkage.furtherDetails 0..1 string "Further details important for conducting record linkage"
* RecordLinkage.furtherDetails ^definition = "Additional important details for conducting record linkage."

* RecordLinkage.exampleResources 0..* string "Record linkage example resources"
* RecordLinkage.exampleResources ^definition = "DOIs of additional related resources specific to record linkage (e.g., publications)."
* RecordLinkage.exampleResources ^comment = "Please do not repeat those already entered in the section 'Related resources'"


