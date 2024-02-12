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


* identifier ^short = "Funding identifier(s)"
* identifier ^definition = "Identifier(s) assigned by a funder to the [RESOURCE]."
* identifier.value 1..1
* name 1..
* name ^short = "Name of the organisation/institution/group"
* name ^definition = "Name of the organisation, institution or group."
* name ^comment = "An organisational name can be used to denote a research group or an institution."
* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    email 0..1 and
    phone 0..1
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
* type 1..1
* type from NFDI4Health_VS_MDS_Organisational_Roles_NCI_Local (required)
* type ^short = "Contributor type"
* type ^definition = "Contributor type an organisation, institution or group fulfills. For example, this can be a sponsor of the study or a group of authors of the document."
* type ^comment = "Short input help: Which contributor type does the organisation, institution or group fulfill? Select one value from the list."
* partOf ^short = "Organisation(s) associated with the contributor"
* partOf ^definition = "Group of items providing further information about the organisation(s) associated with the contributor."
* partOf only Reference(NFDI4Health_PR_MDS_Affiliation)

Mapping: NFDI4Health-Organization-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Organization
* -> "Resource.contributors.organisational"
* -> "Resource.contributors.affiliation"
* identifier.value -> "Resource.contributors.organisational.fundingIds"
* name -> "Resource.contributors.organisational.name"
* telecom[email] -> "Resource.contributors.email"
* telecom[phone] -> "Resource.contributors.phone"
* partOf -> "Resources.contributors.affiliation"
* type -> "Resource.contributors.organisational"