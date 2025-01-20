Logical: NFDI4Health_LM_Metadataschema_RecordLinkage
Parent: Element
Id: nfdi4health-lm-metadatenschema-recordlinkage
Title: "NFDI4Health Module Record Linkage V 3.3.1"
Description: "NFDI4Health Logical Module of Module Record Linkage."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-recordlinkage"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* RecordLinkage 0..1 BackboneElement "RecordLinkage" "Information about record linkage for the [RESOURCE]"
* RecordLinkage ^comment = "Cardinality: 1..1, if Design.dataSharingPlan.recordLinkage == 'Yes'; otherwise 0.. 0"
* RecordLinkage ^requirements = "Group of items providing information on record linkage."
* RecordLinkage ^base.path = "RecordLinkage"
* RecordLinkage ^base.min = 0
* RecordLinkage ^base.max = "*"
* RecordLinkage.legalBasis 0..* boolean "legalBasis" "Legal regulation/permission for record linkage"
* RecordLinkage.legalBasis ^comment = "Additional information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.)."
* RecordLinkage.legalBasis ^requirements = "Indication whether there are specific regulations/permissions for record linkage."
* RecordLinkage.legalBasis ^base.path = "RecordLinkage.legalBasis"
* RecordLinkage.legalBasis ^base.min = 0
* RecordLinkage.legalBasis ^base.max = "*"
* RecordLinkage.legalBasisDetails 0..* string "legalBasisDetails" "Specific legal basis allowing record linkage"
* RecordLinkage.legalBasisDetails ^comment = "Additional information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.)."
* RecordLinkage.legalBasisDetails ^requirements = "Information specifying which specific legal basis allows for record linkage."
* RecordLinkage.legalBasisDetails ^base.path = "RecordLinkage.legalBasisDetails"
* RecordLinkage.legalBasisDetails ^base.min = 0
* RecordLinkage.legalBasisDetails ^base.max = "*"
* RecordLinkage.informedConsent 0..* boolean "informedConsent" "Informed consent for record linkage obtained?"
* RecordLinkage.informedConsent ^comment = "Cardinality: 0..1"
* RecordLinkage.informedConsent ^requirements = "Indication whether an informed consent that allows record linkage has been obtained."
* RecordLinkage.informedConsent ^base.path = "RecordLinkage.informedConsent"
* RecordLinkage.informedConsent ^base.min = 0
* RecordLinkage.informedConsent ^base.max = "*"
* RecordLinkage.responsibleInstitutions 0..* string "responsibleInstitutions" "Responsible authorities"
* RecordLinkage.responsibleInstitutions ^comment = "Cardinality: 0..*"
* RecordLinkage.responsibleInstitutions ^requirements = "Institutions and authorities that must agree to the record linkage."
* RecordLinkage.responsibleInstitutions ^base.path = "RecordLinkage.responsibleInstitutions"
* RecordLinkage.responsibleInstitutions ^base.min = 0
* RecordLinkage.responsibleInstitutions ^base.max = "*"
* RecordLinkage.additionalCosts 0..* boolean "additionalCosts" "Additional costs for record linkage"
* RecordLinkage.additionalCosts ^comment = "Cardinality: 0..1"
* RecordLinkage.additionalCosts ^requirements = "Indication whether there are additional costs for record linkage."
* RecordLinkage.additionalCosts ^base.path = "RecordLinkage.additionalCosts"
* RecordLinkage.additionalCosts ^base.min = 0
* RecordLinkage.additionalCosts ^base.max = "*"
* RecordLinkage.identifiers 0..* string "identifiers" "Identifiers for record linkage"
* RecordLinkage.identifiers ^comment = "Cardinality: 0..*"
* RecordLinkage.identifiers ^requirements = "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* RecordLinkage.identifiers ^base.path = "RecordLinkage.identifiers"
* RecordLinkage.identifiers ^base.min = 0
* RecordLinkage.identifiers ^base.max = "*"
* RecordLinkage.furtherDetails 0..* string "furtherDetails" "Further details important for conducting record linkage"
* RecordLinkage.furtherDetails ^comment = "Cardinality: 0..1"
* RecordLinkage.furtherDetails ^requirements = "Additional important details for conducting record linkage."
* RecordLinkage.furtherDetails ^base.path = "RecordLinkage.furtherDetails"
* RecordLinkage.furtherDetails ^base.min = 0
* RecordLinkage.furtherDetails ^base.max = "*"
* RecordLinkage.exampleResources 0..* string "exampleResources" "Record linkage example resources"
* RecordLinkage.exampleResources ^comment = "Cardinality: 0..*"
* RecordLinkage.exampleResources ^requirements = "DOIs of additional related resources specific to record linkage (e.g., publications)."
* RecordLinkage.exampleResources ^base.path = "RecordLinkage.exampleResources"
* RecordLinkage.exampleResources ^base.min = 0
* RecordLinkage.exampleResources ^base.max = "*"