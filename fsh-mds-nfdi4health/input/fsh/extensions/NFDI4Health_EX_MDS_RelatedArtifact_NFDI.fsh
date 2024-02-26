// Alias: $RelatedNFDIIdentifier = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi-identifier
Alias: $NFDI4HealthRelType = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-reltype-nfdi-resource
Alias: $AssignmentDate = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-identifier-assignment-date

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
* . ^short = "Related resources registered on this portal"
* . ^definition = "Group of items providing information about related resources (e.g. (sub-)studies, study documents, etc.) registered on this portal."
* . ^comment = "Additional Information: Does the [RESOURCE] have any related resources registered on this portal?"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension 1..2
* extension contains 
    identifier 1..1 and
    $NFDI4HealthRelType named relationType 0..1 and
    $AssignmentDate named identifierAssignmentDate 0..1
* extension[identifier].value[x] only Identifier
* extension[identifier].valueIdentifier.value 1..1
* extension[identifier].valueIdentifier.value ^short = "Identifier of the related resource"
* extension[identifier].valueIdentifier.value ^definition = "Identifier (ID) of the related resource assigned on this portal."
* extension[identifier].valueIdentifier.system 1..1
* extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/" (exactly)
* extension[identifier].valueIdentifier.type 1..1
* extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health" (exactly)


Mapping: NFDI4Health-Ex-Related-Artifact-NFDI-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_NFDI
* -> "Resource.idsNfdi4health"
* extension[identifier] -> "Resource.idsNfdi4health.identifier"
* extension[identifierAssignmentDate] -> "Resource.idsNfdi4health.date"
* extension[relationType] -> "Resource.idsNfdi4health.relationType"