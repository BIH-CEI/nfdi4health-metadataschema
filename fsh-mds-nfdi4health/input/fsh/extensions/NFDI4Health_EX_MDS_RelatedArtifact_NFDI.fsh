Alias: $RelatedNFDIIdentifier = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi-identifier
Alias: $NFDI4HealthRelType = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-reltype-nfdi-resource

Extension: NFDI4Health_EX_MDS_Related_Artifact_NFDI
Id: nfdi4health-ex-mds-related-artifact-nfdi
Title: "NFDI4Health EX MDS Related Artifact NFDI"
Description: "RelatedArtifact intended to capture information about related NFDI4Health resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "RelatedArtifact"
* . ^short = "Related (sub-)studies, study documents, etc. registered on this portal"
* . ^definition = "Group of items providing information about related resources registered on this portal."
* . ^comment = "Short input help: Does the [RESOURCE] have any related resources registered on this portal?"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension 1..2
* extension contains 
    $RelatedNFDIIdentifier named identifier 1..1 and
    $NFDI4HealthRelType named relationType 0..1


Mapping: NFDI4Health-Ex-Related-Artifact-NFDI-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_NFDI
* -> "1.14 Resource.idsNfdi4health"
* extension[identifier] -> "1.14.1 Resource.idsNfdi4health.identifier"
* extension[relationType] -> "1.14.2 Resource.idsNfdi4health.relationType"