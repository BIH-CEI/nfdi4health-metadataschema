Extension: NFDI4Health_EX_MDS_Related_Artifact_Identifier_Date
Id: nfdi4health-ex-mds-related-artifact-identifier-date
Title: "NFDI4Health EX MDS Related Artifact Identifier Date"
Description: "Extension storing the date when an identifier was assigned to a related resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-related-artifact-identifier-date"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Identifier"
* . ..1
* . ^short = "Date of ID assignment"
* . ^definition = "Date when the identifier of the related resource was assigned."
* . ^comment = "Additional information: Preferred date format: DD.MM.YYYY"
* value[x] only date

Mapping: NFDI4Health-Related-Artifact-Identifier-Date-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Related_Artifact_Identifier_Date
* -> "1.13.2 Resource.idsNfdi4health.date"