Logical: NFDI4Health_LM_Metadataschema_RecordLinkage
Parent: Element
Id: nfdi4health-lm-metadatenschema-recordlinkage
Title: "NFDI4Health Module Record Linkage"
Description: "NFDI4Health Logical Module of Module Record Linkage V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-rl"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* RecordLinkage 0..1 BackboneElement "RecordLinkage" "Information about record linkage for the Group of items providing information on record linkage"
* RecordLinkage ^comment = "Cardinality: 1..1, if Design.dataSharingPlan.recordLinkage == 'Yes'; otherwise 0.. 0"
* RecordLinkage.legalBasis 0..* boolean "Legal regulation/permission for record linkage" "Indication whether there are specific regulations/permissions for record linkage."
* RecordLinkage.legalBasis ^comment = "Additional information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.)."
* RecordLinkage.legalBasisDetails 0..* string "Specific legal basis allowing record linkage" "Information specifying which specific legal basis allows for record linkage."
* RecordLinkage.legalBasisDetails ^comment = "Additional information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.)."
* RecordLinkage.informedConsent 0..* boolean "Informed consent for record linkage obtained?" "Indication whether an informed consent that allows record linkage has been obtained."
* RecordLinkage.informedConsent ^comment = "Cardinality: 0..1"
* RecordLinkage.responsibleInstitutions 0..* string "Responsible authorities" "Institutions and authorities that must agree to the record linkage."
* RecordLinkage.responsibleInstitutions ^comment = "Cardinality: 0..*"
* RecordLinkage.additionalCosts 0..* boolean "Additional costs for record linkage" "Indication whether there are additional costs for record linkage."
* RecordLinkage.additionalCosts ^comment = "Cardinality: 0..1"
* RecordLinkage.identifiers 0..* string "Identifiers for record linkage" "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* RecordLinkage.identifiers ^comment = "Cardinality: 0..*"
* RecordLinkage.furtherDetails 0..* string "Further details important for conducting record linkage" "Additional important details for conducting record linkage."
* RecordLinkage.furtherDetails ^comment = "Cardinality: 0..1"
* RecordLinkage.exampleResources 0..* string "Record linkage example resources" "DOIs of additional related resources specific to record linkage (e.g., publications)."
* RecordLinkage.exampleResources ^comment = "Cardinality: 0..*"



