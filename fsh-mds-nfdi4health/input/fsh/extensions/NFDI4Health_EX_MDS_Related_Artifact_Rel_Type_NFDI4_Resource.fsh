Alias: $nfdi4health-vs-mds-relation-type-ids-nfdi-local-hl7v3 = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-relation-type-ids-nfdi-local-hl7v3

Extension: NFDI4Health_EX_MDS_Related_Artifact_Rel_Type_NFDI4_Resource
Id: nfdi4health-ex-mds-related-artifact-reltype-nfdi-resource
Title: "NFDI4Health EX MDS Related Artifact Relation Type NFDI4Health Resource"
Description: "Extension providing information about the relation type of this resource with a related resource registered on the NFDI4Health portal."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-reltype-nfdi-resource"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "RelatedArtifact"
* . 0..*
* . ^short = "Relationship between this [RESOURCE] (A) and the related resource (B)?"
* . ^definition = "Relationship between the resource being registered (A) and the related resource (B)."
* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from $nfdi4health-vs-mds-relation-type-ids-nfdi-local-hl7v3 (required)
* valueCoding ^binding.description = "Value set defining codes to specify the relationship between two resources (both registered in NFDI4Health)."

Mapping: NFDI4Health-Related-Artifact-Relation-Type-NFDI4Health-Resource-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_Rel_Type_NFDI4_Resource
* -> "1.14.2 Resource.idsNfdi4health.relationType"