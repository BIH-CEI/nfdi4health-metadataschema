Extension: NFDI4Health_EX_MDS_FundingID
Id: nfdi4health-ex-mds-fundingID
Title: "NFDI4Health EX MDS FundingID"
Description: "Extension providing information about the identifier assigned by a funder to the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-fundingID"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Organization"
* . ^short = "Funding identifier"
* . ^definition = "Identifier assigned by a funder to the resource."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-fundingID" (exactly)
* value[x] 1..
* value[x] only Identifier
* value[x].value 1..

Mapping: NFDI4Health-FundingID-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_FundingID
* -> "1.11.2.2 Resource.roles.organisational.fundingId"