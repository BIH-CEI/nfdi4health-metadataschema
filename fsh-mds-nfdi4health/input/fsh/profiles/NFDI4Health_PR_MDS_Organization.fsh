Profile: NFDI4Health_PR_MDS_Organization
Parent: Organization
Id: nfdi4health-pr-mds-organization
Title: "NFDI4Health PR MDS Organization"
Description: "Resource covering metadata of an organization."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-organization"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Details about the organisation/institution/group/etc."
* . ^definition = "For \"1.11.2 Resource.roles.organisational\": Group of items providing information about group(s) of persons, institution(s) or organisation(s) contributing to the resource. | For \"1.11.6 Resource.roles.affiliation\": Group of items providing further information about the organisation(s) associated with the role."
* . ^comment = "For \"1.11.2 Resource.roles.organisational\": \r\nAdditional information: Group of items applicable to organisational/group names or providing further information about the organisation(s) associated with the role. | Short input help: Organisational name can be used to denote a research group or an institution."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains NFDI4Health_EX_MDS_FundingID named fundingID 0..* 
* extension[fundingID] ^comment = "Short input help: If available, you can enter a funding identifier"
* extension[fundingID] ^min = 0
* extension[fundingID] ^isModifier = false
* identifier ^short = "Digital identifier(s) of the organisation"
* identifier ^definition = "Group of items providing information about identifiers of the organisation."
* identifier.type 1..
* identifier.type from NFDI4Health_VS_MDS_Role_Affiliation_Identifier_Scheme (required)
* identifier.type ^short = "Identifier scheme"
* identifier.type ^definition = "Type of the identifier scheme."
* identifier.type ^comment = "Which type of identifer is reported?"
* identifier.type ^example.label = "Identifier type"
* identifier.type ^example.valueCodeableConcept.text = "ROR"
* identifier.type ^binding.description = "Value set defining codes to specify the identifier scheme of an affiliation identifier."
* identifier.type.coding 1..1
* identifier.value 1..
* identifier.value ^short = "Identifier"
* identifier.value ^definition = "Digital identifier of the organisation according to a definite scheme."
* identifier.value ^comment = "Short input help: Preferably, provide an identifier from ROR (https://ror.org/search)."
* identifier.value ^example.label = "ROR Identifier"
* identifier.value ^example.valueString = "0259fwx54"
* name 1..
* name ^short = "Name of the organisation/institution/group"
* name ^definition = "For \"1.11.2.3 Resource.roles.organisational.name\": Name of the organisation, institution or group. / For \"1.11.6.1 Resource.roles.affiliation\": Name of the organisation associated with the role."
* name ^comment = "Short input help: If you are have already entered the name of the organistion in the property \"Name of the organisation/institution/group\", please repeat it here."
* telecom ..1
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    email 0..1 and
    phone 0..1 and
    webpage 0..1
* telecom[email] ^short = "Email address"
* telecom[email] ^definition = "Email address of the institution/organisation."
* telecom[email] ^fixedContactPoint.system = #email
* telecom[email] ^fixedContactPoint.use = #work
* telecom[email].system 1..
* telecom[email].system = #email (exactly)
* telecom[email].value 1..
* telecom[phone] ^short = "Phone number"
* telecom[phone] ^definition = "Phone number of the institution/organisation."
* telecom[phone] ^comment = "Please, use the International ITU-T E.164-number structure for geographic areas, e.g. +49 (0)153 1112233."
* telecom[phone] ^fixedContactPoint.system = #phone
* telecom[phone] ^fixedContactPoint.use = #work
* telecom[phone].system 1..
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..
* telecom[phone].value ^short = "Phone number"
* telecom[phone].value ^definition = "Phone number of the  person, group of persons or institution/organisation."
* telecom[phone].value ^comment = "Please, use the International ITU-T E.164-number structure for geographic areas, e.g. +49 (0)153 1112233."
* telecom[phone].value ^example.label = "Phone"
* telecom[phone].value ^example.valueString = "+49 (0)153 1112233"
* telecom[webpage] ^short = "Web page of the organisation"
* telecom[webpage] ^definition = "Web page of the organisation associated with the role."
* telecom[webpage] ^fixedContactPoint.system = #url
* telecom[webpage] ^fixedContactPoint.use = #work
* telecom[webpage].system 1..
* telecom[webpage].system = #url (exactly)
* telecom[webpage].value 1..
* telecom[webpage].value ^short = "Web page of the organisation"
* telecom[webpage].value ^definition = "Web page of the organisation associated with the role."
* address ..1
* address ^short = "Address of the organisation"
* address ^definition = "Address of the organisation associated with the role."
* address ^fixedAddress.use = #work
* address.text 1..
* address.text ^short = "Address of the organisation"
* address.text ^definition = "Address of the organisation associated with the role."

// FHIR Paths
Invariant: org-1
Description: "Within the extension associatedParty, when extension.nameType is 	Organizational (Qualitative Concept) and extension.roleOrganisational is 'Public Funder' or 'Private Funder', then extension FundingID within Organization is 0.*."
Severity: #error
Expression: "extension(where url = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-associated-party) where url = roleOrganisational.valueCoding= (Public Funder or Private Funder)not() and where url = nameType.valueCoding = organisational implies resolve Questionnaire extension where url = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-associated-party.extension.where(url=party.valueReference. where (resolve()is Organization)) and Organization.extension where url = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-fundingID exists().not
  organization"

  //tested
Invariant: org-1a
Description: "Within the extension associatedParty, when extension.nameType is 	Organizational (Qualitative Concept) and extension.roleOrganisational is 'Public Funder' or 'Private Funder', then extension FundingID within Organization is 0.*."
Severity: #error
Expression: "extension.where(url='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-associated-party').where(url='roleOrganisational.valueCoding'='Public Funder'or'Private Funder').where(url='nameType.valueCoding'='Organizational (Qualitative Concept)').exists()"
//last part gives result false

Mapping: NFDI4Health-Organization-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Organization
* -> "1.11.2 Resource.roles.organisational"
* -> "1.11.6 Resource.roles.affiliation"
* identifier -> "1.11.6.4 Resource.roles.affiliation.identifiers"
* identifier.type -> "1.11.6.4.2 Resource.roles.affiliation.identifiers.scheme"
* identifier.value -> "1.11.6.4.1 Resource.roles.affiliation.identifiers.identifier"
* name -> "1.11.2.3 Resource.roles.organisational.name"
* name -> "1.11.6.1 Resource.roles.affiliation.name"
* telecom[email] -> "1.11.4 Resource.roles.email"
* telecom[phone] -> "1.11.5 Resource.roles.phone"
* telecom[webpage] -> "1.11.6.3 Resource.roles.affiliation.webpage"
* address -> "1.11.6.2 Resource.roles.affiliation.address"