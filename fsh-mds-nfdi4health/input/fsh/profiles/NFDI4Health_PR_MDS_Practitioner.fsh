Profile: NFDI4Health_PR_MDS_Practitioner
Parent: Practitioner
Id: nfdi4health-pr-mds-practitioner
Title: "NFDI4Health PR MDS Practitioner"
Description: "Profile to collect information about persons having roles."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-practitioner"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Details about the contributing person(s)"
* . ^definition = "Group of items providing information about person(s) contributing to the [RESOURCE]."
* . ^comment = "Additional information: Group of items applicable only when providing person names."
* identifier ^short = "Digital identifiers"
* identifier ^definition = "Group of items providing information about digital identifiers of the person."
* identifier.type 1..
* identifier.type ^short = "Scheme"
* identifier.type ^definition = "Type of the identifier scheme."
* identifier.type ^example.label = "Example of identifier scheme"
* identifier.type ^example.valueCodeableConcept.text = "ORCID"
* identifier.type.coding 1..1
* identifier.type.coding from NFDI4Health_VS_MDS_Role_Name_Identifier_Scheme_Local (required)
* identifier.type.coding ^binding.description = "Value set defining codes to specify the identifier scheme of a personal identifier."
* identifier.value 1..
* identifier.value ^short = "Identifier"
* identifier.value ^definition = "Digital identifier according to a specific scheme that uniquely identifies the person."
* identifier.value ^comment = "Short input help: Preferably, provide an ORCID (https://orcid.org/)."
* identifier.value ^example.label = "Example of ORCID"
* identifier.value ^example.valueString = "0000-0003-1379-7023"
* name 1..1
* name.family 1..
* name.family ^short = "Family name"
* name.family ^definition = "Family name(s) of the person"
* name.given 1..1
* name.given ^short = "Given name"
* name.given ^definition = "Given name of the person."

Mapping: NFDI4Health-Practitioner-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Practitioner
* -> "Resource.contributors.personal"
* identifier -> "Resource.contributors.personal.identifiers"
* identifier.value -> "Resource.contributors.personal.identifiers.identifier"
* identifier.type -> "Resource.contributors.personal.identifiers.scheme"
* name.family -> "Resource.contributors.personal.familyName"
* name.given -> "Resource.contributors.personal.givenName"