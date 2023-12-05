Logical: Module_Record_Linkage
Parent: Element
Id: 2.16.840.1.113883.3.1937.777.64.1.5--20231130210338
Description: "NFDI4Health LogicalModel Record Linkage Metadata Schema (Use Case 5.3) V3.3"
* ^language = #en-US
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2023-11-30T21:03:38+01:00"
* ^url.fhir_comments = "https:/art-decor.org/fhir/4.0/nfdhtfcov19-/StructureDefinition/2.16.840.1.113883.3.1937.777.64.1.5-\\-20231130210338"
* ^identifier.use = #official
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.3.1937.777.64.1.5"
* ^version = "2023-11-30T21:03:38"
* ^status = #draft
* ^type = "RecordLinkage"
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^short = "RecordLinkage"
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^definition = "Information about record linkage for the [RESOURCE]"
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^requirements = "**Description:** Group of items providing information on record linkage."
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^alias = "RecordLinkage"
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^base.path = "RecordLinkage"
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.124--20231130210441 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 0..* boolean "legalBasis" "Legal regulation/permission for record linkage"
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 ^comment = "<p><strong>Additional information:</strong> Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.).</p> \n "
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 ^requirements = "**Description:** Indication whether there are specific regulations/permissions for record linkage."
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 ^alias = "RecordLinkage.legalBasis"
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 ^base.path = "RecordLinkage.legalBasis"
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.123--20231130210338 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 0..* string "legalBasisDetails" "Specific legal basis allowing record linkage"
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 ^comment = "<p><strong>Additional information:</strong> If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.).</p> \n "
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 ^requirements = "**Description:** Information specifying which specific legal basis allows for record linkage."
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 ^alias = "RecordLinkage.legalBasisDetails"
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 ^base.path = "RecordLinkage.legalBasisDetails"
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.125--20231130211121 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.126--20231130211432 0..* boolean "informedConsent" "Informed consent for record linkage"
* 16.840.1.113883.3.1937.777.64.2.1.126--20231130211432 ^requirements = "**Description:** Indication whether an informed consent that allows record linkage has been obtained."
* 16.840.1.113883.3.1937.777.64.2.1.126--20231130211432 ^alias = "RecordLinkage.informedConsent"
* 16.840.1.113883.3.1937.777.64.2.1.126--20231130211432 ^base.path = "RecordLinkage.informedConsent"
* 16.840.1.113883.3.1937.777.64.2.1.126--20231130211432 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.126--20231130211432 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.127--20231130211555 0..* string "responsibleInstitutions" "Responsible authorities"
* 16.840.1.113883.3.1937.777.64.2.1.127--20231130211555 ^requirements = "**Description:** Institutions and authorities that must agree to the record linkage."
* 16.840.1.113883.3.1937.777.64.2.1.127--20231130211555 ^alias = "RecordLinkage.responsibleInstitutions"
* 16.840.1.113883.3.1937.777.64.2.1.127--20231130211555 ^base.path = "RecordLinkage.responsibleInstitutions"
* 16.840.1.113883.3.1937.777.64.2.1.127--20231130211555 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.127--20231130211555 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.128--20231130211739 0..* boolean "additionalCosts" "Additional costs for record linkage"
* 16.840.1.113883.3.1937.777.64.2.1.128--20231130211739 ^requirements = "**Description:** Indication whether there are additional costs for record linkage."
* 16.840.1.113883.3.1937.777.64.2.1.128--20231130211739 ^alias = "RecordLinkage.additionalCosts"
* 16.840.1.113883.3.1937.777.64.2.1.128--20231130211739 ^base.path = "RecordLinkage.additionalCosts"
* 16.840.1.113883.3.1937.777.64.2.1.128--20231130211739 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.128--20231130211739 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.129--20231130211949 0..* string "identifiers" "Identifiers for record linkage"
* 16.840.1.113883.3.1937.777.64.2.1.129--20231130211949 ^requirements = "**Description:** Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* 16.840.1.113883.3.1937.777.64.2.1.129--20231130211949 ^alias = "RecordLinkage.identifiers"
* 16.840.1.113883.3.1937.777.64.2.1.129--20231130211949 ^base.path = "RecordLinkage.identifiers"
* 16.840.1.113883.3.1937.777.64.2.1.129--20231130211949 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.129--20231130211949 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.130--20231130212126 0..* string "furtherDetails" "Further details important for conducting record linkage"
* 16.840.1.113883.3.1937.777.64.2.1.130--20231130212126 ^requirements = "**Description:** Additional important details for conducting record linkage."
* 16.840.1.113883.3.1937.777.64.2.1.130--20231130212126 ^alias = "RecordLinkage.furtherDetails"
* 16.840.1.113883.3.1937.777.64.2.1.130--20231130212126 ^base.path = "RecordLinkage.furtherDetails"
* 16.840.1.113883.3.1937.777.64.2.1.130--20231130212126 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.130--20231130212126 ^base.max = "*"
* 16.840.1.113883.3.1937.777.64.2.1.131--20231130212253 0..* string "exampleResources" "Record linkage example resources"
* 16.840.1.113883.3.1937.777.64.2.1.131--20231130212253 ^requirements = "**Description:** DOIs of additional related resources specific to record linkage (e.g., publications)."
* 16.840.1.113883.3.1937.777.64.2.1.131--20231130212253 ^alias = "RecordLinkage.exampleResources"
* 16.840.1.113883.3.1937.777.64.2.1.131--20231130212253 ^base.path = "RecordLinkage.exampleResources"
* 16.840.1.113883.3.1937.777.64.2.1.131--20231130212253 ^base.min = 0
* 16.840.1.113883.3.1937.777.64.2.1.131--20231130212253 ^base.max = "*"