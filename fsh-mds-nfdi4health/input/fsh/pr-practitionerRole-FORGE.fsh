Alias: $nfdi4health-pr-mds-practitioner = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-practitioner
Alias: $nfdi4health-pr-mds-organization = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-organization

Profile: NFDI4Health_PR_MDS_Practitioner_Role
Parent: PractitionerRole
Id: nfdi4health-pr-mds-practitioner-role
Title: "NFDI4Health PR MDS Practitioner Role"
Description: "Resource covering metadata of roles from individuals."
* ^version = "0.9"
* ^status = #draft
* ^contact.name = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* practitioner 1..
* practitioner only Reference(Practitioner or $nfdi4health-pr-mds-practitioner)
* organization only Reference(Organization or $nfdi4health-pr-mds-organization)
* telecom ..1
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
* telecom[email] ^fixedContactPoint.system = #email
* telecom[email] ^fixedContactPoint.use = #work
* telecom[email].system 1..
* telecom[email].system = #email (exactly)
* telecom[email].value 1..
* telecom[phone] ^short = "Phone number"
* telecom[phone] ^definition = "Phone number of the person or group of persons"
* telecom[phone] ^comment = "Short input help: Please, use the International ITU-T E.164-number structure for geographic areas, e.g. +49 (0)153 1112233."
* telecom[phone] ^fixedContactPoint.system = #phone
* telecom[phone] ^fixedContactPoint.use = #work
* telecom[phone].system 1..
* telecom[phone].system = #phone (exactly)
* telecom[phone].value 1..
* telecom[phone].value ^example.label = "Phone number"
* telecom[phone].value ^example.valueString = "+49 (0)153 1112233"

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Practitioner_Role
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health
Id: NFDI4Health
Source: NFDI4Health_PR_MDS_Practitioner_Role
* organization -> "1.11.1.5 Resource.roles.affiliation"
* telecom[email] -> "1.11.4 Resource.roles.email"
* telecom[phone] -> "1.11.5 Resource.roles.phone"