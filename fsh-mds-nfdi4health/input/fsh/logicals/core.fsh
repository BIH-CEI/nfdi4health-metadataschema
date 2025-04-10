Logical: NFDI4Health_LM_MDS_Core_Test
Parent: Element
Id: nfdi4health-lm-mds-core-test
Title: "NFDI4Health Core Metadataschema Test"
Description: "NFDI4Health Logical Model of Core V3.3.1 test"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-core-test"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* Resource 1..1 BackboneElement "Resource"
* Resource ^definition = "Group of items providing information about a resource. Resources can be, for example, files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also studies or substudies."

* Resource.identifier 1..1 string "identifier" "Unique identifier of the resource used for identification within the NFDI4Health."
* Resource.identifier ^comment = "Additional information: The identifier is assigned automatically."

* Resource.classification 1..1  BackboneElement "Resource classification" "Group of items providing information about the classification of the resource within the predefined categories."


* Resource.classification.type 1..1 CodeableConcept "Type of the resource" "A term describing the resource."
* Resource.classification.type from NFDI4Health_VS_MDS_Resource_Type_NCI_Local (required)
* Resource.classification.type ^comment = "Additional information: The selected resource type determines which information will be asked next."

* Resource.classification.typeGeneral 0..1 CodeableConcept "In what form is the [RESOURCE] available?" "Specific information about the form in which the [RESOURCE] is available."
* Resource.classification.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.classification.typeGeneral ^comment = "Additional information: If the [RESOURCE] consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'.\n* 1..1, if Resource.classification.type != (\"Study\" OR \"Substudy\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\")\n* 0..0, if Resource.classification.type == (\"Study\" OR \"Substudy\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\")"

* Resource.titles 1..* BackboneElement "Titles/names" "Group of items providing information about title(s)/name(s) of the [RESOURCE]."

* Resource.titles.text 1..1  string "Title/name"
* Resource.titles.text ^comment = "Additional information: If no official title/name has been defined yet, a title/name that is suitable for public display should be used."
* Resource.titles.text ^definition = "Scientific unabbreviated title or name of the [RESOURCE]."

* Resource.titles.language 1..1 CodeableConcept "Language of the title/name" "Language in which the title/name is provided."
* Resource.titles.language from NFDI4Health_VS_MDS_Languages_ISO (required)

* Resource.acronyms 0..* BackboneElement "Acronyms" "Group of items providing information about acronym(s) or alternative short title(s)/name(s) of the [RESOURCE]."

* Resource.acronyms.text 1..1 string "Acronym"
* Resource.acronyms.text ^comment = "Additional information: The field refers primarily to resources which have an acronym."
* Resource.acronyms.text ^definition = "If existing, acronym(s) of the [RESOURCE]."
