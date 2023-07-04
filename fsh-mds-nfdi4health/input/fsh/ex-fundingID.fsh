Extension: NFDI4Health_EX_MDS_FundingID
Id: NFDI4Health_EX_MDS_FundingID
Title: "NFDI4Health EX MDS FundingID"
Description: "Identifier assigned by a funder to the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-fundingID"
* ^version = "0.9"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Organization"
* . ^short = "Funding identifier"
* . ^definition = "Identifier assigned by a funder to the resource."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-fundingID" (exactly)
* value[x] 1..
* value[x] only Identifier
* value[x].value 1..

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_FundingID
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Funding-ID-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_FundingID
* -> "1.11.2.2 Resource.roles.organisational.fundingId"