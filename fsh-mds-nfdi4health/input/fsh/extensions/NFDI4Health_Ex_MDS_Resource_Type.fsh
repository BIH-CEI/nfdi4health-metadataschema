Alias: $nfdi4health-vs-mds-resource-type-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-resource-type-umls-local

Extension: NFDI4Health_EX_MDS_Resource_Type
Id: nfdi4health-ex-mds-resource-type
Title: "NFDI4Health EX MDS Resource Type"
Description: "Extension providing information about the resource type."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-resource-type"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Element"
* . 0..1
* . ^short = "Type of the resource"
* . ^definition = "A term describing the resource."
* . ^comment = "Additional Information: The selected resource type determines which information will be asked next. | Short Input Help: You can register a study, a study protocol, a questionnaire, etc. Please only add follow up questionnaires if baseline questionnaires have already been registered."
* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-resource-type-umls-local (required)
* value[x] ^binding.description = "Value set defining codes to specify type of the resource."

Mapping: NFDI4Health-Resource-Type-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Resource_Type
* -> "1.2.1 Resource.classification.type"