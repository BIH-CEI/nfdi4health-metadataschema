Logical: NFDI4Health_LM_Metadataschema_RecordLinkage_V3_3
Parent: Element
Id: nfdi4health-lm-metadatenschema-recordlinkage-v3-3
Title: "Information about record linkage for the [RESOURCE]"
Description: "Group of items providing information on record linkage."

* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-recordlinkage"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* RecordLinkage 0..1 BackboneElement "Information about record linkage for the [RESOURCE]" "Group of items providing information on record linkage."
* RecordLinkage ^comment = "Cardinality: 1..1, if Design.dataSharingPlan.recordLinkage == 'Yes'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.legalBasis 0..1 boolean "Legal regulation/permission for record linkage" "Indication whether there are specific regulations/permissions for record linkage."
* RecordLinkage.legalBasis ^comment = "Additional information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.). / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.legalBasisDetails 0..1 string "Specific legal basis allowing record linkage" "Information specifying which specific legal basis allows for record linkage."
* RecordLinkage.legalBasisDetails ^comment = "Cardinality: 1..1, if RecordLinkage.legalBasis == 'Yes'; otherwise 0..0 / Additional information:If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.). / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.informedConsent 0..1 boolean "Informed consent for record linkage" "Indication whether an informed consent that allows record linkage has been obtained."
* RecordLinkage.informedConsent ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.responsibleInstitutions 0..* string "Responsible authorities" "Institutions and authorities that must agree to the record linkage."
* RecordLinkage.responsibleInstitutions ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.additionalCosts 0..1 boolean "Additional costs for record linkage" "Indication whether there are additional costs for record linkage."
* RecordLinkage.additionalCosts ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.identifiers 0..* string "Identifiers for record linkage" "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* RecordLinkage.identifiers ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.furtherDetails 0..1 string "Further details important for conducting record linkage" "Additional important details for conducting record linkage."
* RecordLinkage.furtherDetails ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"
* RecordLinkage.exampleResources 0..* string "Record linkage example resources" "DOIs of additional related resources specific to record linkage (e.g., publications)."
* RecordLinkage.exampleResources ^comment = "Short Input Help: Please do not repeat those already entered in the section 'Related resources'. / Source of the property and/or allowed values: NFDI4Health UC 5.3 requirements"

Mapping: NFDI4Health_RL_Metadataschema_V3_3_Internal_Numbering
Id: NFDI4Health-RL-Metadataschema-V3-3-Internal-Numbering
Title: "NFDI4Health Record Linkage Metadataschema Version 3.3 Mapping to internal numbering of Metadataschema Version 3.3"
Source: NFDI4Health_LM_Metadataschema_RecordLinkage_V3_3

* RecordLinkage -> "RL1"
* RecordLinkage.legalBasis -> "RL1.1"
* RecordLinkage.legalBasisDetails -> "RL1.2"
* RecordLinkage.informedConsent -> "RL1.3"
* RecordLinkage.responsibleInstitutions -> "RL1.4"
* RecordLinkage.additionalCosts -> "RL1.5"
* RecordLinkage.identifiers -> "RL1.6"
* RecordLinkage.furtherDetails -> "RL1.7"
* RecordLinkage.exampleResources -> "RL1.8"

