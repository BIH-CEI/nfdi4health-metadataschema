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
* . ^short = "Contributor(s) of the [RESOURCE]"
* . ^definition = "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the [RESOURCE]."
* . ^comment = "Additional information: For each [RESOURCE], there may be multiple contributors, but at least one person, group of persons or institution/organisation must be specified. [Extension based on ResearchStudy.associatedParty (R5).]"
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
* extension[rolePersonal] ^short = "Contributor type"
* extension[rolePersonal] ^definition = "Contributor type a person fulfills. For example, this can be a principal investigator of a study or an author of a document."
* extension[rolePersonal] ^comment = "Short input help: Which contributor type does the person fulfill? Select one value from the list."
* extension[rolePersonal].value[x] 1..
* extension[rolePersonal].value[x] only Coding
* extension[rolePersonal].valueCoding from NFDI4Health_VS_MDS_Personal_Roles_NCI_Local (required)
* extension[rolePersonal].valueCoding ^binding.description = "Value set defining codes for personal roles."
* extension[rolePersonal].valueCoding.system 1..
* extension[rolePersonal].valueCoding.code 1..
* extension[roleOrganisational] ^short = "Contributor type"
* extension[roleOrganisational] ^definition = "Contributor type an organisation, institution or group fulfills. For example, this can be a sponsor of the study or a group of authors of the document."
* extension[roleOrganisational] ^comment = "Short input help: Which contributor type does the organisation, institution or group fulfill? Select one value from the list."
* extension[roleOrganisational].value[x] 1..
* extension[roleOrganisational].value[x] only Coding
* extension[roleOrganisational].valueCoding from NFDI4Health_VS_MDS_Organisational_Roles_NCI_Local (required)
* extension[roleOrganisational].valueCoding ^binding.description = "Value set defining codes for organisational roles."
* extension[roleOrganisational].valueCoding.system 1..
* extension[roleOrganisational].valueCoding.code 1..
* extension[nameType] ^short = "Is it a personal or organisational contribution?"
* extension[nameType] ^definition = "Indication whether the contribution was made by person(s) or organisation(s)/institution(s)/group(s)."
* extension[nameType].value[x] 1..
* extension[nameType].value[x] only Coding
* extension[nameType].valueCoding from NFDI4Health_VS_MDS_Role_Name_Type_SNOMEDCT (required)
* extension[nameType].valueCoding ^binding.description = "Value set defining codes to specify role types."

Mapping: NFDI4Health-Associated-Party-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Associated_Party
* -> "1.10 Resource.contributors"
* extension[rolePersonal] -> "1.10.3.1 Resource.contributors.personal.type"
* extension[roleOrganisational] -> "1.10.2.1 Resource.contributors.organisational.type"
* extension[nameType] -> "1.10.1 Resource.contributors.nameType"