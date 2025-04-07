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
* RecordLinkage ^comment = "\n* 1..1, if Design.dataSharingPlan.recordLinkage == \"Yes\"\n* 0..0, if Design.dataSharingPlan.recordLinkage == \"No\""
* RecordLinkage ^requirements = "Group of items providing information on record linkage."

* RecordLinkage.legalBasis 0..1 boolean "legalBasis" "Legal regulation/permission for record linkage"
* RecordLinkage.legalBasis ^comment = "Additional information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.).</p>"
* RecordLinkage.legalBasis ^requirements = "Indication whether there are specific regulations/permissions for record linkage."

* RecordLinkage.legalBasisDetails 0..1 string "legalBasisDetails" "Specific legal basis allowing record linkage"
* RecordLinkage.legalBasisDetails ^comment = "Additional information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.).</p>\n* 1..1M 1..1, if RecordLinkage.legalBasis == \"Yes\"\n* 0..0NP 0..0, if RecordLinkage.legalBasis == \"No\""
* RecordLinkage.legalBasisDetails ^requirements = "Information specifying which specific legal basis allows for record linkage."

* RecordLinkage.informedConsent 0..1 boolean "informedConsent" "Informed consent for record linkage obtained?"
* RecordLinkage.informedConsent ^requirements = "Indication whether an informed consent that allows record linkage has been obtained."

* RecordLinkage.responsibleInstitutions 0..* string "responsibleInstitutions" "Responsible authorities"
* RecordLinkage.responsibleInstitutions ^requirements = "Institutions and authorities that must agree to the record linkage."

* RecordLinkage.additionalCosts 0..1 boolean "additionalCosts" "Additional costs for record linkage"
* RecordLinkage.additionalCosts ^requirements = "Indication whether there are additional costs for record linkage."

* RecordLinkage.identifiers 0..* string "identifiers" "Identifiers for record linkage"
* RecordLinkage.identifiers ^requirements = "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."

* RecordLinkage.furtherDetails 0..1 string "furtherDetails" "Further details important for conducting record linkage"
* RecordLinkage.furtherDetails ^requirements = "Additional important details for conducting record linkage."

* RecordLinkage.exampleResources 0..* string "exampleResources" "Record linkage example resources"
* RecordLinkage.exampleResources ^requirements = "DOIs of additional related resources specific to record linkage (e.g., publications)."


