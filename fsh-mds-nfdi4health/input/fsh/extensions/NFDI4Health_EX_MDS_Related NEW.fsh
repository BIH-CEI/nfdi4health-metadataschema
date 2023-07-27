Extension: NFDI4Health_EX_MDS_Related_NEW
Id: nfdi4health-ex-mds-related-new
Title: "NFDI4Health_EX_MDS_Related_New"
Description: "Extension providing information about related publications, datasets, study documents, web pages, etc."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-new"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    relatedArtifactNFDI4Health 0..* and
    relatedArtifactNonNFDI4Health 0..*
* extension[relatedArtifactNFDI4Health].value[x] only RelatedArtifact
* extension[relatedArtifactNFDI4Health].valueRelatedArtifact only NFDI4Health_PR_MDS_Related_Artifact_NFDI4Health_Resource
* extension[relatedArtifactNonNFDI4Health].value[x] only RelatedArtifact
* extension[relatedArtifactNonNFDI4Health].valueRelatedArtifact only NFDI4Health_PR_MDS_Related_Artifact_Non_NFDI4Health_Resource

Mapping: NFDI4Health-Related-New-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_NEW
* extension[relatedArtifactNonNFDI4Health] -> "1.13 Resource.ids"
* extension[relatedArtifactNFDI4Health] -> "1.14 Resource.idsNfdi4health"