Extension: NFDI4Health_EX_MDS_IDs_NFDI4Health
Id: nfdi4health-ex-mds-ids-nfdi4health
Title: "NFDI4Health EX MDS IDs NFDI4Health"
Description: "Extension storing identifiers assigned by NFDI4Health."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-ids-nfdi4health"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . ^short = "Related (sub-)studies, study documents, etc. registered on this portal"
* . ^definition = "Group of items providing information about related resources registered on this portal."
* . ^comment = "Short input help : Does the [RESOURCE] have any related resources registered on this portal?"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    identifier 1..1 and
    relationType 0..1
* extension[identifier] ^short = "Identifier of the related resource"
* extension[identifier] ^definition = "Identifier (ID) of the related resource assigned on this portal."
* extension[identifier].value[x] only string
* extension[relationType] ^short = "Relationship between this [RESOURCE] (A) and the related resource (B)?"
* extension[relationType] ^definition = "Relationship between the resource being registered (A) and the related resource (B)."
* extension[relationType].value[x] only CodeableConcept
* extension[relationType].value[x] from NFDI4Health_VS_MDS_Relation_Type_Ids_Nfdi_Local_HL7V3 (required)
* extension[relationType].value[x] ^binding.description = "Value set defining codes to specify the relationship between two resources (both registered in NFDI4Health)."
* extension[relationType].value[x].text ..0
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-ids-nfdi4health" (exactly)

Mapping: NFDI4Health-IDs-NFDI4Health-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_IDs_NFDI4Health
* -> "1.14 Resource.idsNfdi4health"
* extension[relationType] -> "1.14.2 Resource.idsNfdi4health.relationType"
* extension[identifier] -> "1.14.1 Resource.idsNfdi4health.identifier"