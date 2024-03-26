Extension: NFDI4Health_EX_MDS_Record_Linkage
Id: nfdi4health-ex-mds-record-linkage
Title: "NFDI4Health EX MDS Record Linkage"
Description: "Group of items providing information on record linkage."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-record-linkage"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Library"
* . 0..1
* . ^short = "Information about record linkage for the [RESOURCE]"
* . ^definition = "Group of items providing information on record linkage."
* . ^comment = "Applies only if 1.17.26.9 Design.dataSharingPlan.recordLinkage has been answered with Yes"
* extension contains
    legalBasis 0..1 and
    legalBasisDetails 0..1 and
    informedConsent 0..1 and
    responsibleInstitutions 0..* and
    additionalCosts 0..1 and
    identifiers 0..* and
    furtherDetails 0..1 and
    exampleResources 0..*
* extension[legalBasis] ^short = "Legal regulation/permission for record linkage"
* extension[legalBasis] ^definition = "Indication whether there are specific regulations/permissions for record linkage."
* extension[legalBasis] ^comment = "Additional Information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.)."
* extension[legalBasis].value[x] only boolean
* extension[legalBasisDetails] ^short = "Specific legal basis allowing record linkage"
* extension[legalBasisDetails] ^definition = "Information specifying which specific legal basis allows for record linkage."
* extension[legalBasisDetails] ^comment = "Additional Information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.)."
* extension[legalBasisDetails].value[x] only string
* extension[informedConsent] ^short = "Informed consent for record linkage"
* extension[informedConsent] ^definition = "Indication whether an informed consent that allows record linkage has been obtained."
* extension[informedConsent].value[x] only boolean
* extension[responsibleInstitutions] ^short = "Responsible authorities"
* extension[responsibleInstitutions] ^definition = "Institutions and authorities that must agree to the record linkage."
* extension[responsibleInstitutions].value[x] only string
* extension[additionalCosts] ^short = "Additional costs for record linkage"
* extension[additionalCosts] ^definition = "Indication whether there are additional costs for record linkage."
* extension[additionalCosts].value[x] only boolean
* extension[identifiers].value[x] only Identifier
* extension[identifiers].valueIdentifier.value ^short = "Identifiers for record linkage"
* extension[identifiers].valueIdentifier.value ^definition = "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* extension[furtherDetails] ^short = "Further details important for conducting record linkage"
* extension[furtherDetails] ^definition = "Additional important details for conducting record linkage."
* extension[furtherDetails].value[x] only string
* extension[exampleResources] ^short = "Record linkage example resources"
* extension[exampleResources] ^definition = "DOIs of additional related resources specific to record linkage (e.g., publications)."
* extension[exampleResources] ^comment = "Short Input Help: Please do not repeat those already entered in the section 'Related resources'."
* extension[exampleResources].value[x] only string

Mapping: NFDI4Health-Record-Linkage-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Record_Linkage
* -> "RL1 RecordLinkage"
* extension[legalBasis] -> "RecordLinkage.legalBasis"
* extension[legalBasisDetails] -> "RecordLinkage.legalBasisDetails"
* extension[informedConsent] -> "RecordLinkage.informedConsent"
* extension[responsibleInstitutions] -> "RecordLinkage.responsibleInstitutions"
* extension[additionalCosts] -> "RecordLinkage.additionalCosts"
* extension[identifiers].valueIdentifier.value -> "RecordLinkage.identifiers"
* extension[furtherDetails] -> "RecordLinkage.furtherDetails"
* extension[exampleResources] -> "RecordLinkage.exampleResources"