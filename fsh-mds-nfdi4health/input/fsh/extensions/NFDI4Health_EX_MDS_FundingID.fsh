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
* . ^short = "Funding identifier(s)"
* . ^definition = "Identifier(s) assigned by a funder to the [RESOURCE]."
* . ^comment = "Short input help: If available, you can enter funding identifiers."
* value[x] 1..1
* value[x] only string

Mapping: NFDI4Health-FundingID-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_FundingID
* -> "1.10.2.2 Resource.contributors.organisational.fundingIds"