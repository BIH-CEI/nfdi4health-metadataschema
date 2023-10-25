Alias: $RelatedNFDIIdentifier = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi-identifier
Alias: $NFDI4HealthRelType = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-reltype-nfdi-resource

Profile: NFDI4Health_PR_MDS_Related_Artifact_NFDI4Health_Resource
Parent: RelatedArtifact
Id: nfdi4health-pr-mds-related-artifact-ndfi4health-resource
Title: "NFDI4Health PR MDS Related Artifact NFDI4Health Resource"
Description: "Profile of a RelatedArtifact intended to capture information about related NFDI4Health resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-related-artifact-ndfi4health-resource"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Related (sub-)studies, study documents, etc. registered on this portal"
* . ^definition = "Group of items providing information about related resources registered on this portal."
* . ^comment = "Short input help: Does the [RESOURCE] have any related resources registered on this portal?"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains 
    $RelatedNFDIIdentifier named identifier 1..1 and
    $NFDI4HealthRelType named relationType 0..1


Mapping: NFDI4Health-Related-Artifact-NFDI4Health-Resource-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Related_Artifact_NFDI4Health_Resource
* -> "1.14 Resource.idsNfdi4health"
* extension[relationType] -> "1.14.2 Resource.idsNfdi4health.relationType"