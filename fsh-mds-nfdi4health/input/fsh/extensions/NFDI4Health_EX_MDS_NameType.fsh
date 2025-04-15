Extension: NFDI4Health_EX_MDS_Name_Type
Id: nfdi4health-ex-mds-name-type
Title: "NFDI4Health EX MDS Name Type"
Description: "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-name-type"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Composition.author"

* . 1..1
* . ^short = "Is it a personal or organisational contribution?"
* . ^definition = "Indication whether the contribution was made by person(s) or organisation(s)/institution(s)/group(s)."

* value[x] 1..1
* value[x] only Coding
* valueCoding
* valueCoding from NFDI4Health_VS_MDS_Role_Name_Type_SNOMED (required)


Mapping: NFDI4Health-Name-Type-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Name_Type

* -> "Resource.contributors.nameType"

