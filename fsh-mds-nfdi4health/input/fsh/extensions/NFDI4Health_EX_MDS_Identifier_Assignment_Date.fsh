Extension: NFDI4Health_EX_MDS_Identifier_Assignment_Date
Id: nfdi4health-ex-mds-identifier-assignment-date
Title: "NFDI4Health EX MDS Identifier Assignment Date"
Description: "Extension to store the date when an identifier was assigned."

* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-identifier-assignment-date"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* . 0..1
* . ^short = "Date of ID assignment"
* . ^definition = "Date when the identifier of the related resource was assigned."
* . ^comment = "Additional information: Preferred date format: DD.MM.YYYY"
* value[x] only date
* value[x] 1..1

Mapping: NFDI4Health-Identifier-Assignment-Date-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Identifier_Assignment_Date
* -> "Resource.idsNfdi4health.date"