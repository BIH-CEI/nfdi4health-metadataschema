Profile: NFDI4Health_PR_MDS_Organization
Parent: Organization
Id: nfdi4health-pr-mds-organization
Title: "NFDI4Health PR MDS Organization"
Description: "Profile to collect information on organizations/institutions having roles and the affiliation and address of persons having roles."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-organization"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Details about the contributing organisation(s)/institution(s)/group(s) | Organisation(s) associated with the contributor"
* . ^definition = "For 1.10.2 Resource.contributors.organisational: Group of items providing information about group(s) of persons, institution(s) or organisation(s) contributing to the [RESOURCE]. | For 1.10.6 Resource.contributors.affiliation: Group of items providing further information about the organisation(s) associated with the contributor."
* . ^comment = "For 1.10.2 Resource.contributors.organisational: Additional information: Group of items applicable only when providing organisational, institutional or group names."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains NFDI4Health_EX_MDS_FundingID named fundingID 0..* 
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
* name ^definition = "For 1.10.2.3 Resource.contributors.organisational.name: Name of the organisation, institution or group. | For 1.10.6.1 Resource.contributors.affiliations.name: Name of the organisation associated with the contributor."
* name ^comment = "Short input help: 1.10.2.3 Resource.contributors.organisational.name: An organisational name can be used to denote a research group or an institution. | For 1.10.6.1 Resource.contributors.affiliations.name: If you have already entered the name of the organistion in the field 'Name of the organisation/institution/group', please repeat it here."
* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    email 0..1 and
    phone 0..1 and
    webpage 0..1
* telecom[email] ^short = "Email address"
* telecom[email] ^definition = "Email address of the institution/organisation."
* telecom[email].system 1..1
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1
* telecom[email].use = #work
* telecom[phone] ^short = "Phone number"
* telecom[phone] ^definition = "Phone number of the institution/organisation."
* telecom[phone].system 1..
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..1
* telecom[phone].value ^comment = "Please, use the International ITU-T E.164-number structure for geographic areas, e.g. +49 (0)153 1112233."
* telecom[phone].value ^example.label = "Phone"
* telecom[phone].value ^example.valueString = "+49 (0)153 1112233"
* telecom[phone].use = #work
* telecom[webpage] ^short = "Web page"
* telecom[webpage] ^definition = "Web page of the organisation associated with the contributor."
* telecom[webpage].system 1..1
* telecom[webpage].system = #url (exactly)
* telecom[webpage].value 1..1
* telecom[webpage].use = #work
* address ..1
* address ^short = "Address"
* address ^definition = "Address of the organisation associated with the contributor."
* address ^comment = "Short Input Help: Please preferably use the following address format: Street name and number [comma] post code [comma] city [comma] country."
* address ^example.label = "Example of an organisation address"
* address ^example.valueString = "Gleueler Straße 60, 50931, Cologne, Germany"
* address.text 1..1
* address.use = #work
* partOf ^short = "Organisation(s) associated with the contributor"
* partOf ^definition = "Group of items providing further information about the organisation(s) associated with the contributor."

Mapping: NFDI4Health-Organization-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Organization
* -> "1.10.2 Resource.contributors.organisational"
* -> "1.10.6 Resource.contributors.affiliation"
* identifier -> "1.10.6.4 Resource.contributors.affiliation.identifiers"
* identifier.type -> "1.10.6.4.2 Resource.contributors.affiliation.identifiers.scheme"
* identifier.value -> "1.10.6.4.1 Resource.contributors.affiliation.identifiers.identifier"
* name -> "1.10.2.3 Resource.contributors.organisational.name"
* name -> "1.10.6.1 Resource.contributors.affiliation.name"
* telecom[email] -> "1.10.4 Resource.contributors.email"
* telecom[phone] -> "1.10.5 Resource.contributors.phone"
* telecom[webpage] -> "1.10.6.3 Resource.contributors.affiliation.webpage"
* address -> "1.10.6.2 Resource.contributors.affiliation.address"
* partOf -> "1.10.6 Resources.contributors.affiliation"