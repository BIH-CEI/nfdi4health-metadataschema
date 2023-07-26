Alias: $ElementIdentifier = http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier
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
* . ^short = "NFDI4Health Registered Related artifact"
* . ^definition = "Information about a related artifact registered on the NFDI4Health portal"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains 
    $ElementIdentifier named identifier 1..1 and
    $NFDI4HealthRelType named relationType 0..1
* extension[identifier].valueIdentifier.value 1..1
* extension[identifier].valueIdentifier.system 1..1
* extension[identifier].valueIdentifier.system = "https://www.nfdihealth.de" (exactly)

Mapping: NFDI4Health-Related-Artifact-NFDI4Health-Resource-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Related_Artifact_NFDI4Health_Resource
* -> "1.14 Resource.idsNfdi4health"
* extension[identifier] -> "1.14.1 Resource.idsNfdi4health.identifier"
* extension[relationType] -> "1.14.2 Resource.idsNfdi4health.relationType"