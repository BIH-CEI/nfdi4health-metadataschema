Profile: NFDI4Health_PR_MDS_Affiliation
Parent: Organization
Id: nfdi4health-pr-mds-affiliation
Title: "NFDI4Health PR MDS Affiliation"
Description: "Group of items providing further information about the organisation(s) associated with the contributor."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-affiliation"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Details about the contributing organisation(s)/institution(s)/group(s) | Organisation(s) associated with the contributor"
* . ^definition = "For 1.10.2 Resource.contributors.organisational: Group of items providing information about group(s) of persons, institution(s) or organisation(s) contributing to the [RESOURCE]. | For 1.10.6 Resource.contributors.affiliation: Group of items providing further information about the organisation(s) associated with the contributor."
* . ^comment = "For 1.10.2 Resource.contributors.organisational: Additional information: Group of items applicable only when providing organisational, institutional or group names."

* identifier ^short = "Digital identifier(s)"
* identifier ^definition = "Group of items providing information about identifiers of the organisation."
* identifier.type 1..
* identifier.type ^short = "Scheme"
* identifier.type ^definition = "Type of the identifier scheme reported."
* identifier.type ^example.label = "Identifier type"
* identifier.type ^example.valueCodeableConcept.text = "ROR"
* identifier.type from NFDI4Health_VS_MDS_Role_Affiliation_Identifier_Scheme_Local (required)
* identifier.type ^binding.description = "Value set defining codes to specify the identifier scheme of an affiliation identifier."
* identifier.type.coding 1..1
* identifier.value 1..
* identifier.value ^short = "Identifier"
* identifier.value ^definition = "Digital identifier according to a specific scheme that uniquely identifies the organisation."
* identifier.value ^comment = "Short input help: Preferably, provide an identifier from ROR (https://ror.org/search)."
* identifier.value ^example.label = "Example of ROR Identifier"
* identifier.value ^example.valueString = "0259fwx54"
* name 1..
* name ^short = "Name of the organisation/institution/group"
* name ^definition = "Name of the organisation associated with the contributor."
* name ^comment = "Resource.contributors.affiliations.name: If you have already entered the name of the organistion in the field 'Name of the organisation/institution/group', please repeat it here."
* telecom 0..1
* telecom ^short = "Web page"
* telecom ^definition = "Web page of the organisation associated with the contributor."
* telecom.system 1..1
* telecom.system = #url (exactly)
* telecom.value 1..1
* telecom.use = #work
* address ..1
* address ^short = "Address"
* address ^definition = "Address of the organisation associated with the contributor."
* address ^comment = "Short Input Help: Please preferably use the following address format: Street name and number [comma] post code [comma] city [comma] country."
* address ^example.label = "Example of an organisation address"
* address ^example.valueString = "Gleueler Straße 60, 50931, Cologne, Germany"
* address.text 1..1
* address.use = #work

Mapping: NFDI4Health-Affiliation-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Affiliation
* -> "Resource.contributors.affiliations"
* identifier -> "Resource.contributors.affiliation.identifiers"
* identifier.type -> "Resource.contributors.affiliation.identifiers.scheme"
* identifier.value -> "Resource.contributors.affiliation.identifiers.identifier"
* name -> "Resource.contributors.affiliation.name"
* telecom -> "Resource.contributors.affiliation.webpage"
* address -> "Resource.contributors.affiliation.address"
