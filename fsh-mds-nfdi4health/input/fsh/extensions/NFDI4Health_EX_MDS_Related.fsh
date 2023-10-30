Alias: $RelatedNonNFDI = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-non-nfdi
Alias: $RelatedNFDI = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi

Extension: NFDI4Health_EX_MDS_Related
Id: nfdi4health-ex-mds-related
Title: "NFDI4Health_EX_MDS_Related"
Description: "Extension providing information about related publications, datasets, study documents, web pages, etc."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* . 0..*
* . ^short = "Test"
* . ^definition = "Test"
* value[x] 1..1
* value[x] only NFDI4Health_PR_MDS_Related_Artifact_Resource
//* valueRelatedArtifact only NFDI4Health_PR_MDS_Related_Artifact_Resource

Mapping: NFDI4Health-Related-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related
* -> "1.13 Resource.ids"
* -> "1.14 Resource.idsNfdi4health"
* -> "1.9 Resource.webpage"