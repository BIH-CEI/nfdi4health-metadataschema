Extension: NFDI4Health_EX_MDS_Associated_Party
Id: nfdi4health-ex-mds-associated-party
Title: "NFDI4Health EX MDS Associated Party"
Description: "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-associated-party"
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
* . 1..*
* . ^short = "Role(s)"
* . ^definition = "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the resource."
* . ^comment = "Additional information: For each resource, there may be multiple roles, but at least one person, group of persons or institution/organisation must be specified. [Extension based on ResearchStudy.associatedParty (R5).]"
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
* extension[party].value[x] only Reference(NFDI4Health_PR_MDS_Practitioner_Role or NFDI4Health_PR_MDS_Organization)
* extension[rolePersonal] ^short = "Type of the role"
* extension[rolePersonal] ^definition = "Type of the role a person fulllfils. For example, this can be a principal investigator of a study or an author of a document."
* extension[rolePersonal] ^comment = "Short input help: Which role does the person fulllfil? Select one value from the list."
* extension[rolePersonal].value[x] 1..
* extension[rolePersonal].value[x] only Coding
* extension[rolePersonal].value[x] ^short = "Role type"
* extension[rolePersonal].value[x] ^definition = "Type of the role a person fulllfils, e.g. a principal investigator of a study or an author of a document?"
* extension[rolePersonal].value[x] ^comment = "Short input help: Select one value from the list."
* extension[rolePersonal].valueCoding from NFDI4Health_VS_MDS_Personal_Roles_NCI_UMLS_Local (required)
* extension[rolePersonal].valueCoding ^binding.description = "Value set defining codes for personal roles."
* extension[rolePersonal].valueCoding.system 1..
* extension[rolePersonal].valueCoding.code 1..
* extension[roleOrganisational] ^short = "Type of the role"
* extension[roleOrganisational] ^definition = "Type of the role an organisation, institution or group fulllfils. For example, this can be a sponsor of the study or a group of authors of the document."
* extension[roleOrganisational] ^comment = "Short input help: Which role does the organisation/institution/group/etc. fulllfil? Select one value from the list."
* extension[roleOrganisational].value[x] 1..
* extension[roleOrganisational].value[x] only Coding
* extension[roleOrganisational].value[x] ^short = "Type of the role"
* extension[roleOrganisational].value[x] ^definition = "Type of the role an organisation, institution or group fulllfils. For example, this can be a sponsor of the study or a group of authors of the document."
* extension[roleOrganisational].value[x] ^comment = "Which role does the organisation/institution/group/etc. fulllfil? Select one value from the list."
* extension[roleOrganisational].valueCoding from NFDI4Health_VS_MDS_Organisational_Roles_NCI_Local (required)
* extension[roleOrganisational].valueCoding ^binding.description = "Value set defining codes for organisational roles."
* extension[roleOrganisational].valueCoding.system 1..
* extension[roleOrganisational].valueCoding.code 1..
* extension[nameType] ^short = "Type of the name"
* extension[nameType] ^definition = "Personal or organisational/group type of the name."
* extension[nameType].value[x] 1..
* extension[nameType].value[x] only Coding
* extension[nameType].value[x] ^short = "Type of the name"
* extension[nameType].value[x] ^definition = "Personal or organisational/group type of the name."
* extension[nameType].valueCoding from NFDI4Health_VS_MDS_Role_Name_Type_UMLS (required)
* extension[nameType].valueCoding ^binding.description = "Value set defining codes to specify role types."

Mapping: NFDI4Health-Associated-Party-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Associated_Party
* -> "1.11 Resource.roles"
* extension[rolePersonal] -> "1.11.3.1 Resource.roles.personal.type"
* extension[roleOrganisational] -> "1.11.2.1 Resource.roles.organisational.type"
* extension[nameType] -> "1.11.1 Resource.roles.nameType"