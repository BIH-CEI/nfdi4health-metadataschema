Instance: InstanceOfRecordLinkage
InstanceOf: Questionnaire
Title: "NFDI4Health Module Record Linkage Metadataschema (UC 5.3) V3.3"
Usage: #example
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-example-record-linkage"
* status = #draft
* name = "InstanceOfRecordLinkage"
* title = "NFDI4Health Module Record Linkage Metadataschema (UC 5.3) V3.3"
* item[0].type = #boolean
* item[=].linkId = "RL1.1"
* item[=].prefix = "legalBasis"
* item[=].text = "Indication whether there are specific regulations/permissions for record linkage."
* item[=].required = true
* item[+].type = #string
* item[=].linkId = "RL1.2"
* item[=].prefix = "legalBasisDetails"
* item[=].text = "Information specifying which specific legal basis allows for record linkage."
* item[=].required = true
* item[+].type = #boolean
* item[=].linkId = "RL1.3"
* item[=].prefix = "informedConsent"
* item[=].text = "Indication whether an informed consent that allows record linkage has been obtained."
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "RL1.4"
* item[=].prefix = "responsibleInstitutions"
* item[=].text = "Institutions and authorities that must agree to the record linkage."
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "RL1.5"
* item[=].prefix = "additionalCosts"
* item[=].text = "Indication whether there are additional costs for record linkage."
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "RL1.6"
* item[=].prefix = "identifiers"
* item[=].text = "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "RL1.7"
* item[=].prefix = "furtherDetails"
* item[=].text = "Additional important details for conducting record linkage."
* item[=].required = true
* item[+].type = #choice
* item[=].linkId = "RL1.8"
* item[=].prefix = "exampleResources"
* item[=].text = "DOIs of additional related resources specific to record linkage (e.g., publications)."
* item[=].required = true