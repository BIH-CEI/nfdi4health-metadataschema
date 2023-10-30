Alias: $RelatedNonNFDI = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-non-nfdi
Alias: $RelatedNFDI = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi

Profile: NFDI4Health_PR_MDS_Related_Artifact_Resource
Parent: RelatedArtifact
Id: nfdi4health-pr-mds-related-artifact-resource
Title: "NFDI4Health PR MDS Related Artifact Resource"
Description: "Profile of a RelatedArtifact intended to capture information about related non NFDI4Health resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-related-artifact-resource"
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
    $RelatedNFDI named NFDI4HealthResource 0..1 and
    $RelatedNonNFDI named nonNFDI4HealthResource 0..1
* url ^short = "Web page of the [RESOURCE]"
* url ^definition = "If existing, a link to the web page directly relevant to the resource."
* url ^comment = "Additional information: Other web pages related to the resource can additionally be entered in the section \"Related resources\"."


Mapping: NFDI4Health-Related-Artifact-Resource-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Related_Artifact_Resource
*  extension[nonNFDI4HealthResource] -> "1.13 Resource.ids"
*  extension[NFDI4HealthResource] -> "1.14 Resource.idsNfdi4health"
*  url -> "1.9 Resource.webpage"