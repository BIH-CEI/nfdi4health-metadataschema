Alias: $RelatedIdentifier2 = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-non-nfdi-identifier
Alias: $IdentifierScheme = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-scheme
Alias: $AssignmentDate = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-identifier-assignment-date
Alias: $NonNFDI4HealthRelType = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-reltype-non-nfdi-resource
Alias: $ResourceTypeGeneral = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-resource-type-general

Extension: NFDI4Health_EX_MDS_Related_Artifact_Non_NFDI
Id: nfdi4health-ex-mds-related-artifact-non-nfdi
Title: "NFDI4Health EX MDS Related Artifact Non NFDI"
Description: "RelatedArtifact intended to capture information about Resources other than NFDI4Health resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-non-nfdi"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "RelatedArtifact"
* . 0..*
* . ^short = "Related publications, datasets, study documents, web pages, etc."
* . ^definition = "Group of items providing information about identifiers (IDs) of the resources related to the given resource, e.g. DOIs of publications, datasets, study documents or links to web pages."
* . ^comment = "Short input help: If existing, you can specify identifier(s) of any related resources, e.g. DOIs of publications, datasets, study documents, links to web pages, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains 
    $RelatedIdentifier2 named identifier 1..1 and
    $IdentifierScheme named scheme 1..1 and
    $AssignmentDate named identifierAssignmentDate 0..1 and
    $NonNFDI4HealthRelType named relationType 1..1 and
    $ResourceTypeGeneral named resourceTypeGeneral 0..1 


Mapping: NFDI4Health-Ex-Related-Artifact-Non-NFDI-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_Non_NFDI
* -> "1.13 Resource.ids"
* extension[identifier] -> "1.13.1 Resource.ids.identifier"
* extension[scheme] -> "1.13.2 Resource.ids.scheme"
* extension[identifierAssignmentDate] -> "1.13.3 Resource.ids.date"
* extension[relationType] -> "1.13.4 Resource.ids.relationType"
* extension[resourceTypeGeneral] -> "1.13.5 Resource.ids.resourceTypeGeneral"