Alias: $nfdi4health-vs-mds-role-name-identifier-scheme = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-role-name-identifier-scheme
Alias: $nfdi4health-vs-mds-role-name-personal-title-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-role-name-personal-title-nci

Profile: NFDI4Health_PR_MDS_Practitioner
Parent: Practitioner
Id: nfdi4health-pr-mds-practitioner
Title: "NFDI4Health PR MDS Practitioner"
Description: "Resource covering metadata of an individual."
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Details about the person"
* . ^definition = "Group of items providing information about person(s) contributing to the resource."
* . ^comment = "Additional information: Group of items applicable to personal names."
* identifier ^short = "Digital identifier(s) of the person"
* identifier ^definition = "Group of items providing information about digital identifiers of the person."
* identifier.type 1..
* identifier.type from $nfdi4health-vs-mds-role-name-identifier-scheme (required)
* identifier.type ^short = "Which type of identifer is reported?"
* identifier.type ^definition = "Type of the identifier scheme."
* identifier.type ^example.label = "Example of identifier scheme"
* identifier.type ^example.valueCodeableConcept.text = "ORCID"
* identifier.type ^binding.description = "Value set defining codes to specify the identifier scheme of a personal identifier."
* identifier.type.coding 1..1
* identifier.type.coding from $nfdi4health-vs-mds-role-name-identifier-scheme (required)
* identifier.type.coding ^binding.description = "Value set defining codes to specify the identifier scheme of a personal identifier."
* identifier.value 1..
* identifier.value ^short = "Identifier"
* identifier.value ^definition = "Digital identifier of the person according to a definite scheme."
* identifier.value ^comment = "Short input help: Preferably, provide an ORCID (https://orcid.org/)."
* identifier.value ^example.label = "Example of ORCID"
* identifier.value ^example.valueString = "0000-0003-1379-7023"
* name 1..1
* name.family 1..
* name.family ^short = "Family name of the person"
* name.family ^definition = "Family name of the person"
* name.given 1..1
* name.given ^short = "Given name of the person"
* name.given ^definition = "Given name of the person."
* name.prefix 1..1
* name.prefix from $nfdi4health-vs-mds-role-name-personal-title-nci (required)
* name.prefix ^short = "Title of the person"
* name.prefix ^definition = "Title of the person."
* name.prefix ^binding.description = "Value set defining codes to specify personal titles."

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Practitioner
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health
Id: NFDI4Health
Source: NFDI4Health_PR_MDS_Practitioner
* -> "1.11.3 Resource.roles.personal"
* identifier -> "1.11.3.5 Resource.roles.personal.identifiers"
* identifier.type -> "1.11.3.5.2 Resource.roles.personal.identifiers.scheme"
* name.family -> "1.11.3.3 Resource.roles.personal.familyName"
* name.given -> "1.11.3.2 Resource.roles.personal.givenName"
* name.prefix -> "1.11.3.4 Resource.roles.personal.title"