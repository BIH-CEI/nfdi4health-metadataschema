Logical: NFDI4Health_LM_Metadataschema_RecordLinkage
Parent: Element
Id: nfdi4health-lm-metadatenschema-recordlinkage
Title: "Information about record linkage for the [RESOURCE]"
Description: "Group of items providing information on record linkage."

* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-recordlinkage"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* RecordLinkage 1..1 BackboneElement "RecordLinkage"
* RecordLinkage ^short = "RecordLinkage"
* RecordLinkage ^definition = "Information about record linkage for the [RESOURCE]"
* RecordLinkage ^requirements = "**Description:** Group of items providing information on record linkage."
* RecordLinkage.legalBasis 0..1 boolean "legalBasis" "Legal regulation/permission for record linkage"
* RecordLinkage.legalBasis ^comment = "<p><strong>Additional information:</strong> Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.).</p> \n "
* RecordLinkage.legalBasis ^requirements = "**Description:** Indication whether there are specific regulations/permissions for record linkage."
* RecordLinkage.legalBasisDetails 1..1 string "legalBasisDetails" "Specific legal basis allowing record linkage"
* RecordLinkage.legalBasisDetails ^comment = "<p><strong>Additional information:</strong> If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.).</p> \n "
* RecordLinkage.legalBasisDetails ^requirements = "**Description:** Information specifying which specific legal basis allows for record linkage."
* RecordLinkage.informedConsent 0..1 boolean "informedConsent" "Informed consent for record linkage"
* RecordLinkage.informedConsent ^requirements = "**Description:** Indication whether an informed consent that allows record linkage has been obtained."
* RecordLinkage.responsibleInstitutions 0..* string "responsibleInstitutions" "Responsible authorities"
* RecordLinkage.responsibleInstitutions ^requirements = "**Description:** Institutions and authorities that must agree to the record linkage."
* RecordLinkage.additionalCosts 0..1 boolean "additionalCosts" "Additional costs for record linkage"
* RecordLinkage.additionalCosts ^requirements = "**Description:** Indication whether there are additional costs for record linkage."
* RecordLinkage.identifiers 0..* string "identifiers" "Identifiers for record linkage"
* RecordLinkage.identifiers ^requirements = "**Description:** Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* RecordLinkage.furtherDetails 0..1 string "furtherDetails" "Further details important for conducting record linkage"
* RecordLinkage.furtherDetails ^requirements = "**Description:** Additional important details for conducting record linkage."
* RecordLinkage.exampleResources 0..* string "exampleResources" "Record linkage example resources"
* RecordLinkage.exampleResources ^requirements = "**Description:** DOIs of additional related resources specific to record linkage (e.g., publications)."
