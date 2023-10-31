Extension: NFDI4Health_EX_MDS_Related_Artifact_NonNFDI_Identifier
Id: nfdi4health-ex-mds-related-artifact-nfdi-non-nfdi-identifier
Title: "NFDI4Health EX MDS Related Artifact Non NFDI Identifier"
Description: "Extension storing the information of the Non NFDI4Health identifier of the related resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-non-nfdi-identifier"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Extension.valueRelatedArtifact.extension"
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy.relatedArtifact.extension"
* . ..1
* . ^short = "Identifier of the related resource"
* . ^definition = "Identifier (ID) related to, or associated with, the resource being registered. These can be IDs of related publications, datasets, study documents, web pages, etc."
* value[x] 1..1
* value[x] only string 


Mapping: NFDI4Health-Related-Artifact-NFDI4Health-NonNFDI-Identifier-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_NonNFDI_Identifier
* -> "1.13.1 Resource.ids.identifier"
