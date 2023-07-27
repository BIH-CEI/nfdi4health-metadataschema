Extension: NFDI4Health_EX_MDS_Related
Id: nfdi4health-ex-mds-related
Title: "NFDI4Health_EX_MDS_Related"
Description: "Extension providing information about identifiers (IDs) of the resources related to the given resource, e.g. DOIs of publications, datasets, study documents or links to web pages - registered on this portal or not."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    identifier 0..1 and
    date 0..1 and
    relationType 1..1 and
    resourceTypeGeneral 0..1
* extension[identifier] ^short = "Identifier of the related resource"
* extension[identifier] ^definition = "Identifier (ID) related to, or associated with, the resource being registered. These can be IDs of related publications, datasets, study documents, web pages, etc."
* extension[identifier].value[x] only Identifier
* extension[identifier].valueIdentifier ^short = "Identifier of the related resource"
* extension[identifier].valueIdentifier ^definition = "Identifier (ID) related to, or associated with, the resource being registered. These can be IDs of related publications, datasets, study documents, web pages, etc."
* extension[identifier].valueIdentifier.system 1..
* extension[identifier].valueIdentifier.system from NFDI4Health_VS_MDS_ID_TYPE_UMLS (required)
* extension[identifier].valueIdentifier.system ^slicing.discriminator.type = #type
* extension[identifier].valueIdentifier.system ^slicing.discriminator.path = "$this"
* extension[identifier].valueIdentifier.system ^slicing.rules = #open
* extension[identifier].valueIdentifier.system ^binding.description = "Value set defining codes to specify the ID Type of the related resource."
* extension[identifier].valueIdentifier.value 1..
* extension[date] ^short = "Date of ID assignment"
* extension[date] ^definition = "Date when the identifier of the related resource was assigned."
* extension[date].value[x] only date
* extension[relationType] ^short = "Relationship between this [RESOURCE] (A) and the related resource (B)?"
* extension[relationType] ^definition = "Relationship between the resource being registered (A) and the related resource (B)."
* extension[relationType].value[x] 1..
* extension[relationType].value[x] only CodeableConcept
* extension[relationType].valueCodeableConcept from NFDI4Health_VS_MDS_Relation_Type_Ids_Local_HL7V3 (required)
* extension[relationType].valueCodeableConcept ^binding.description = "NFDI4Health_VS_MDS_Relation_Type_Ids_Local_HL7V3"
* extension[resourceTypeGeneral] ^short = "Type of the related resource"
* extension[resourceTypeGeneral] ^definition = "Type of the related resource, e.g. journal article, dataset, text, etc."
* extension[resourceTypeGeneral].value[x] only CodeableConcept
* extension[resourceTypeGeneral].valueCodeableConcept from NFDI4Health_VS_MDS_Resource_Type_General_NCI_UMLS_Local (required)
* extension[resourceTypeGeneral].valueCodeableConcept ^binding.description = "Value set defining codes to specify the the general resource type"
* extension[resourceTypeGeneral].valueCodeableConcept.text ..0

Mapping: NFDI4Health-Related-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related
* -> "1.13 Resource.ids"
* -> "1.14 Resource.idsNfdi4health"
* extension[identifier].value[x].system -> "1.13.2 Resource.ids.scheme"
* extension[identifier].value[x].value -> "1.13.1 Resource.ids.identifier"
* extension[identifier].value[x].value -> "1.14.1 Resource.idsNfdi4health.identifier"
* extension[date] -> "1.13.3 Resource.ids.date"
* extension[relationType] -> "1.13.4 Resource.ids.relationType"
* extension[relationType] -> "1.14.2 Resource.idsNfdi4health.relationType"
* extension[resourceTypeGeneral] -> "1.13.5 Resource.ids.resourceTypeGeneral"