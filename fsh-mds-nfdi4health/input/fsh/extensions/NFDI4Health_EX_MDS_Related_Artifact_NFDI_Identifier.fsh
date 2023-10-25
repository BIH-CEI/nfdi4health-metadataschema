Extension: NFDI4Health_EX_MDS_Related_Artifact_NFDI_Identifier
Id: nfdi4health-ex-mds-related-artifact-nfdi-identifier
Title: "NFDI4Health EX MDS Related Artifact NFDI Identifier"
Description: "Extension storing the information of the NFDI4Health identifier of the related resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-nfdi-identifier"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "RelatedArtifact"
* . 1..1
* . ^short = "Identifier of the related resource"
* . ^definition = "Identifier (ID) of the related resource assigned on this portal."
* value[x] 1..1
* value[x] only string

Mapping: NFDI4Health-Related-Artifact-NFDI4Health-Identifier-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_NFDI_Identifier
* -> "1.14.1 Resource.idsNfdi4health.identifier"