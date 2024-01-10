Alias: $nfdi4health-vs-mds-resource-type-general-nci-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-resource-type-general-nci-umls-local

Extension: NFDI4Health_EX_MDS_Resource_Type_General
Id: nfdi4health-ex-mds-resource-type-general
Title: "NFDI4Health EX MDS Resource Type General"
Description: "Extension providing information about the general resource type."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-resource-type-general"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Element"
* . 0..1
* . ^short = "In what form is the [RESOURCE] available? | Type of the related resource"
* . ^definition = "For 1.2.2 Resource.classification.typeGeneral: Specific information about the form in which the [RESOURCE] is available. / For 1.12.4 Resource.ids.typeGeneral: Type of the related resource, e.g. journal article, dataset, text, etc."
* . ^comment = "Additional Information: For 1.2.2 Resource.classification.typeGeneral: If the [RESOURCE] consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'. | Short Input Help: For 1.2.2 Resource.classification.typeGeneral: You can select 'Text' for most of the study documents, e.g. for questionnaires, informed consent forms, case report forms, etc. / For 1.12.4 Resource.ids.typeGeneral: Select one value from the list"
* . ^example.label = "Example of a general resource type of a related resource"
* . ^example.valueString = "Text"
* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-resource-type-general-nci-umls-local (required)
* value[x] ^binding.description = "Value set defining codes to specify the the general resource type."

Mapping: NFDI4Health-Resource-Type-General-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Resource_Type_General
* -> "1.2.2 Resource.classification.typeGeneral"
* -> "1.12.4 Resource.ids.typeGeneral"