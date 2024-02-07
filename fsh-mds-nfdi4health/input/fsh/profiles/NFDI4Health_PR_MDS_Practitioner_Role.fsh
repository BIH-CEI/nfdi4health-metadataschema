Profile: NFDI4Health_PR_MDS_Practitioner_Role
Parent: PractitionerRole
Id: nfdi4health-pr-mds-practitioner-role
Title: "NFDI4Health PR MDS Practitioner Role"
Description: "Profile to collect information about the contact information and affiliations of persons having roles."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-practitioner-role"
* ^version = "0.9"
* ^status = #draft
* ^contact.name = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* practitioner 0..1
* practitioner only Reference(Practitioner or NFDI4Health_PR_MDS_Practitioner)
* organization only Reference(NFDI4Health_PR_MDS_Affiliation)
* organization ^short = "Organisation(s) associated with the contributor"
* organization ^definition = "Group of items providing further information about the organisation(s) associated with the contributor."
* code 1..1 
* code ^short = "Contributor type"
* code ^definition = "Contributor type a person fulfills. For example, this can be a principal investigator of a study or an author of a document."
* code from NFDI4Health_VS_MDS_Personal_Roles_NCI_Local (required)
* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.description = "Email and phone"
* telecom ^slicing.rules = #open
* telecom ^definition = "Email and phone of the  person, group of persons or institution/organisation."
* telecom contains
    email 0..1 and
    phone 0..1
* telecom[email] ^short = "Email address"
* telecom[email] ^definition = "Email address of the person or group of persons"
* telecom[email].system 1..1
* telecom[email].system = #email (exactly)
* telecom[email].value 1..1
* telecom[email].use = #work
* telecom[phone] ^short = "Phone number"
* telecom[phone] ^definition = "Phone number of the person or group of persons"
* telecom[phone] ^comment = "Short input help: Please, use the International ITU-T E.164-number structure for geographic areas, e.g. +49 (0)153 1112233."
* telecom[phone].system 1..1
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..1
* telecom[phone].value ^example.label = "Phone number"
* telecom[phone].value ^example.valueString = "+49 (0)153 1112233"
* telecom[phone].use = #work

Mapping: NFDI4Health-Practitioner-Role-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Practitioner_Role
* -> "Resource.contributors.personal"
* organization -> "Resource.contributors.affiliations"
* telecom[email] -> "Resource.contributors.email"
* telecom[phone] -> "Resource.contributors.phone"
* code -> "Resource.contributors.personal.type"