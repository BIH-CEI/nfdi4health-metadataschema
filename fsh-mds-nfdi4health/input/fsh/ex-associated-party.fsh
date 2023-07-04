Alias: $nfdi4health-pr-mds-practitioner-role = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-practitioner-role
Alias: $nfdi4health-pr-mds-organization = https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-organization
Alias: $nfdi4health-vs-mds-personal-roles-nci-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-personal-roles-nci-umls-local
Alias: $nfdi4health-vs-mds-organisational-roles-nci-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-organisational-roles-nci-local
Alias: $nfdi4health-vs-mds-role-name-type-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-role-name-type-umls

Extension: NFDI4Health_EX_MDS_Associated_Party
Id: nfdi4health-ex-mds-associated-party
Title: "NFDI4Health EX MDS Associated Party"
Description: "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the resource."
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "DocumentReference"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* . 1..
* . ^short = "Role(s)"
* . ^definition = "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the resource."
* . ^comment = "For each resource, there may be multiple roles, but at least one person, group of persons or institution/organisation must be specified.\r\nBased on ResearchStudy.associatedParty (R5)."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    party 1..* and
    rolePersonal 0..1 and
    roleOrganisational 0..1 and
    nameType 1..1
* extension[party] ^short = "Individual or organisation associated with the [RESOURCE]"
* extension[party] ^definition = "Individual or organisation associated with the [RESOURCE] (use practitionerRole to specify their organisation)."
* extension[party].value[x] 1..
* extension[party].value[x] only $nfdi4health-pr-mds-practitioner-role or $nfdi4health-pr-mds-organization
* extension[rolePersonal] ^short = "Type of the role"
* extension[rolePersonal] ^definition = "Type of the role a person fulllfils. For example, this can be a principal investigator of a study or an author of a document."
* extension[rolePersonal] ^comment = "Short input help: Which role does the person fulllfil? Select one value from the list."
* extension[rolePersonal].value[x] 1..
* extension[rolePersonal].value[x] only Coding
* extension[rolePersonal].value[x] from $nfdi4health-vs-mds-personal-roles-nci-umls-local (required)
* extension[rolePersonal].value[x] ^short = "Role type"
* extension[rolePersonal].value[x] ^definition = "Type of the role a person fulllfils, e.g. a principal investigator of a study or an author of a document?"
* extension[rolePersonal].value[x] ^comment = "Select one value from the list."
* extension[rolePersonal].value[x] ^binding.description = "Value set defining codes for personal roles."
* extension[rolePersonal].value[x].system 1..
* extension[rolePersonal].value[x].code 1..
* extension[roleOrganisational] ^short = "Type of the role"
* extension[roleOrganisational] ^definition = "Type of the role an organisation, institution or group fulllfils. For example, this can be a sponsor of the study or a group of authors of the document."
* extension[roleOrganisational] ^comment = "Short input help: Which role does the organisation/institution/group/etc. fulllfil? Select one value from the list."
* extension[roleOrganisational].value[x] 1..
* extension[roleOrganisational].value[x] only Coding
* extension[roleOrganisational].value[x] from $nfdi4health-vs-mds-organisational-roles-nci-local (required)
* extension[roleOrganisational].value[x] ^short = "Type of the role"
* extension[roleOrganisational].value[x] ^definition = "Type of the role an organisation, institution or group fulllfils. For example, this can be a sponsor of the study or a group of authors of the document."
* extension[roleOrganisational].value[x] ^comment = "Which role does the organisation/institution/group/etc. fulllfil? Select one value from the list."
* extension[roleOrganisational].value[x] ^binding.description = "Value set defining codes for organisational roles."
* extension[roleOrganisational].value[x].system 1..
* extension[roleOrganisational].value[x].code 1..
* extension[nameType] ^short = "Type of the name"
* extension[nameType] ^definition = "Personal or organisational/group type of the name."
* extension[nameType].value[x] 1..
* extension[nameType].value[x] only Coding
* extension[nameType].value[x] from $nfdi4health-vs-mds-role-name-type-umls (required)
* extension[nameType].value[x] ^short = "Type of the name"
* extension[nameType].value[x] ^definition = "Personal or organisational/group type of the name."
* extension[nameType].value[x] ^binding.description = "Value set defining codes to specify role types."

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Associated_Party
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Associated-Party-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Associated_Party
* -> "1.11 Resource.roles"
* extension[rolePersonal] -> "1.11.3.1 Resource.roles.personal.type"
* extension[roleOrganisational] -> "1.11.2.1 Resource.roles.organisational.type"
* extension[nameType] -> "1.11.1 Resource.roles.nameType"