Alias: $ElementIdentifier = http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier
Alias: $AssignmentDate = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-identifier-assignment-date
Alias: $NonNFDI4HealthRelType = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-reltype-non-nfdi-resource
Alias: $nfdi4health-vs-mds-identifier-type-related-artifact-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-identifier-type-related-artifact-umls-local
Alias: $ResourceTypeGeneral = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-resource-type-general

Profile: NFDI4Health_PR_MDS_Related_Artifact_Non_NFDI4Health_Resource
Parent: RelatedArtifact
Id: nfdi4health-pr-mds-related-artifact-non-ndfi4health-resource
Title: "NFDI4Health PR MDS Related Artifact Non NFDI4Health Resource"
Description: "Profile of a RelatedArtifact intended to capture information about related non NFDI4Health resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-related-artifact-non-ndfi4health-resource"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Related publications, datasets, study documents, web pages, etc."
* . ^definition = "Group of items providing information about identifiers (IDs) of the resources related to the given resource, e.g. DOIs of publications, datasets, study documents or links to web pages."
* . ^comment = "Short input help: If existing, you can specify identifier(s) of any related resources, e.g. DOIs of publications, datasets, study documents, links to web pages, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open

* extension contains 
    $ElementIdentifier named identifier 1..1 and
    $AssignmentDate named identifierAssignmentDate 0..1 and
    $NonNFDI4HealthRelType named relationType 1..1 and
    $ResourceTypeGeneral named resourceTypeGeneral 0..1 

* extension[identifier].valueIdentifier.value 1..1
* extension[identifier].valueIdentifier.type 1..1
* extension[identifier].valueIdentifier.type from $nfdi4health-vs-mds-identifier-type-related-artifact-umls-local (required)
* extension[identifier].valueIdentifier.type ^binding.description = "Value set defining codes to specify the ID Type of the related resource."

Mapping: NFDI4Health-Related-Artifact-Non-NFDI4Health-Resource-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Related_Artifact_Non_NFDI4Health_Resource
* -> "1.13 Resource.ids"
* extension[identifier].valueIdentifier.value -> "1.13.1 Resource.ids.identifier"
* extension[identifier].valueIdentifier.type -> "1.13.2 Resource.ids.scheme"
* extension[identifierAssignmentDate] -> "1.13.3 Resource.ids.date"
* extension[relationType] -> "1.13.4 Resource.ids.relationType"
* extension[resourceTypeGeneral] -> "1.13.5 Resource.ids.resourceTypeGeneral"