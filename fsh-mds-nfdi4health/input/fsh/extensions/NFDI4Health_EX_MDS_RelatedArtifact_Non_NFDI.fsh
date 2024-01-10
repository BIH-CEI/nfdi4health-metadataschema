//Alias: $RelatedIdentifier2 = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-non-nfdi-identifier
//Alias: $IdentifierScheme = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-scheme
//Alias: $AssignmentDate = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-identifier-assignment-date
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
* . ^short = "Related resources"
* . ^definition = "Group of items providing information about identifiers (IDs) of the resources related to the given [RESOURCE], e.g. DOIs of publications, datasets, study documents or links to web pages."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains 
    identifier 1..1 and
    //$IdentifierScheme named scheme 1..1 and
    //$AssignmentDate named identifierAssignmentDate 0..1 and
    $NonNFDI4HealthRelType named relationType 1..1 and
    $ResourceTypeGeneral named resourceTypeGeneral 0..1 
* extension[identifier].value[x] only Identifier
* extension[identifier].valueIdentifier.value ^short = "Identifier of the related resource"
* extension[identifier].valueIdentifier.value ^definition = "Identifier (ID) related to, or associated with, the [RESOURCE] being registered. These can be IDs of related publications, datasets, study documents, web pages, etc."
* extension[identifier].valueIdentifier.value ^comment = "Additional Information: a) Publications like journal articles usually have a DOI, e.g. 10.3238/arztebl.2020.0861.b) A link (URL) starting with 'http(s)://' to a web page with any additional information can also be provided. | Short Input Help: If existing, you can specify here identifier(s) of any related resources, e.g. DOIs of publications, datasets, study documents, links to web pages, etc."
* extension[identifier].valueIdentifier.value ^example.label = "Example of an identifier from a related resource"
* extension[identifier].valueIdentifier.value ^example.valueString = "10.4126/FRL01-006431467"
* extension[identifier].valueIdentifier.type from NFDI4Health_VS_MDS_Identifier_Type_Related_Artifact_UMLS_Local (required)
* extension[identifier].valueIdentifier.type ^short = "Type of the identifier"
* extension[identifier].valueIdentifier.type ^definition = "Type of the identifier of the related resource."
* extension[identifier].valueIdentifier.type ^comment = "Select one value from the list."
* extension[identifier].valueIdentifier.type ^example.label = "Example of an identifier type of a related resource."
* extension[identifier].valueIdentifier.type ^example.valueString = "DOI"

Mapping: NFDI4Health-Ex-Related-Artifact-Non-NFDI-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_Non_NFDI
* -> "1.12 Resource.ids"
* extension[identifier].valueIdentifier.value -> "1.12.1 Resource.ids.identifier"
* extension[identifier].valueIdentifier.type -> "1.12.2 Resource.ids.scheme"
//* extension[identifierAssignmentDate] -> "1.12.3 Resource.ids.date"
* extension[relationType] -> "1.12.3 Resource.ids.relationType"
* extension[resourceTypeGeneral] -> "1.12.4 Resource.ids.resourceTypeGeneral"