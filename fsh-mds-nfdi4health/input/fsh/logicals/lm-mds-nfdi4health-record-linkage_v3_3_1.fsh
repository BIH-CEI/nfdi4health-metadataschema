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
* RecordLinkage.legalBasis 0..1 boolean "Indication whether there are specific regulations/permissions for record linkage."
* RecordLinkage.legalBasis ^comment = "Additional information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.)."
* RecordLinkage.legalBasisDetails 0..1 string "Information specifying which specific legal basis allows for record linkage."
* RecordLinkage.legalBasisDetails ^comment = "Additional information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.).\n* 1..1 1..1, if RecordLinkage.legalBasis == \"Yes\"\n* 0..0 0..0, if RecordLinkage.legalBasis == \"No\""
* RecordLinkage.informedConsent 0..1 boolean "Indication whether an informed consent that allows record linkage has been obtained."
* RecordLinkage.informedConsent ^comment = "Cardinality: 0..1"
* RecordLinkage.responsibleInstitutions 0..* string "Institutions and authorities that must agree to the record linkage."
* RecordLinkage.responsibleInstitutions ^comment = "Cardinality: 0..*"
* RecordLinkage.additionalCosts 0..1 boolean "Indication whether there are additional costs for record linkage."
* RecordLinkage.additionalCosts ^comment = "Cardinality: 0..1"
* RecordLinkage.identifiers 0..* string "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* RecordLinkage.identifiers ^comment = "Cardinality: 0..*"
* RecordLinkage.furtherDetails 0..1 string "Additional important details for conducting record linkage."
* RecordLinkage.furtherDetails ^comment = "Cardinality: 0..1"
* RecordLinkage.exampleResources 0..* string "DOIs of additional related resources specific to record linkage (e.g., publications)."
* RecordLinkage.exampleResources ^comment = "Cardinality*



