Extension: NFDI4Health_EX_MDS_Related_Artifact_Scheme
Id: nfdi4health-ex-mds-related-artifact-nfdi-scheme
Title: "NFDI4Health EX MDS Related Artifact Scheme"
Description: "Type of the identifier of the related resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-scheme"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Extension.valueRelatedArtifact.extension"
* ^context[+].type = #element
* ^context[=].expression = "ResearchStudy.relatedArtifact.extension"
* . 1..1
* . ^short = "Type of the identifier"
* . ^definition = "Type of the identifier of the related resource."
* . ^comment = "Short input help: Select one value from the list."
* value[x] 1..1
* value[x] only Coding
* valueCoding from nfdi4health-vs-mds-identifier-type-related-artifact-nci-local (required)
* valueCoding ^binding.description = "Value set defining codes to specify the ID Type of the related resource."


Mapping: NFDI4Health-Related-Artifact-Scheme-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_Scheme
* -> "1.13.2 Resource.ids.scheme"
