Extension: NFDI4Health_EX_MDS_Role_Organisational
Id: nfdi4health-ex-mds-role-organisational
Title: "NFDI4Health EX MDS Role Organisational"
Description: "Which contributor type does the organisation, institution or group fulfill? Select one value from the list."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-role-organisational"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Composition"

* . 1..*
* . ^short = "Contributor type"
* . ^definition = "Contributor type an organisation, institution or group fulfills. For example, this can be a sponsor of the study or a group of authors of the document."
* . ^comment = "Short input help: Which contributor type does the organisation, institution or group fulfill? Select one value from the list."

* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from NFDI4Health_VS_MDS_Organisational_Roles_NCI_Local (required)




Mapping: NFDI4Health-Role-Organisational-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Role_Organisational

* -> "Resource.contributors.organisational.type"

