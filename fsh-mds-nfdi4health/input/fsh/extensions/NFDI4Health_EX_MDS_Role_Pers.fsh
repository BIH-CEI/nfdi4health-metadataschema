Extension: NFDI4Health_EX_MDS_Role_Personal
Id: nfdi4health-ex-mds-role-personal
Title: "NFDI4Health EX MDS Role Personal"
Description: "Which contributor type does the person fulfill?"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-role-personal"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Composition"

* . 1..*
* . ^short = "Contributor type"
* . ^definition = "Contributor type a person fulfills. For example, this can be a principal investigator of a study or an author of a document."
* . ^comment = "Short input help: Which contributor type does the person fulfill? Select one value from the list."

* value[x] 1..1
* value[x] only Coding
* valueCoding.code 1..1
* valueCoding.system 1..1
* valueCoding from NFDI4Health_VS_MDS_Personal_Roles_NCI_Local (required)




Mapping: NFDI4Health-Role-Personal-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Role_Personal

* -> "Resource.contributors.personal.type"

