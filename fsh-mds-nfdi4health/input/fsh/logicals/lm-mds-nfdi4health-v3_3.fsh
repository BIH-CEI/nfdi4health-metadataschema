Logical: NFDI4Health_LM_Metadataschema_Core_V3_3
Parent: Element
Id: nfdi4health-lm-metadataschema-core-v3-3
Title: "NFDI4Health LM Core Metadataschema V3.3"
Description: "NFDI4Health Logical Model Core Metadataschema V3.3"

* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-core-v3-3"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"


* Resource 1..1 BackboneElement "Resource"
* Resource ^short = "Resource"
* Resource ^definition = "Resource"
* Resource ^requirements = "**Description:** Group of items providing information about a resource. Resources can be, for example, files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also studies or substudies."
* Resource ^alias = "Resource"
* Resource ^base.path = "Resource"
* Resource ^base.min = 1
* Resource ^base.max = "1"
* Resource ^mustSupport = true
* Resource.identifier 1..1  string "identifier" "ID of the [Resource]"
* Resource.identifier ^comment = "<p><strong>Additional information:</strong> The identifier is assigned automatically.</p> \n "
* Resource.identifier ^requirements = "**Description: **Unique identifier of the resource used for identification within the NFDI4Health."
* Resource.identifier ^alias = "Resource.identifier"
* Resource.identifier ^base.path = "Resource.identifier"
* Resource.identifier ^base.min = 1
* Resource.identifier ^base.max = "1"
* Resource.classification 1..1  BackboneElement "classification" "Resource classification"
* Resource.classification ^requirements = "**Description: **Group of items providing information about the classification of the resource within the predefined categories."
* Resource.classification ^alias = "Resource.classification"
* Resource.classification ^base.path = "Resource.classification"
* Resource.classification ^base.min = 1
* Resource.classification ^base.max = "1"
* Resource.classification.type 1..1  CodeableConcept "type" "Type of the resource"
* Resource.classification.type from https://art-decor.org/fhir/ValueSet/2.Xxxxx840.1.113883.3.1937.777.64.11.76--20231213141150 (required)
* Resource.classification.type ^comment = "<p><strong>Additional information: </strong>The selected resource type determines which information will be asked next.</p> \n "
* Resource.classification.type ^requirements = "**Description: **A term describing the resource."
* Resource.classification.type ^alias = "Resource.classification.type"
* Resource.classification.type ^base.path = "Resource.classification.type"
* Resource.classification.type ^base.min = 1
* Resource.classification.type ^base.max = "1"
* Resource.classification.type ^binding.description = "NFDI4Health_VS_MDS_Resource_Type_UMLS_SNOMED_Local3.3"
* Resource.classification.typeGeneral 0..1 CodeableConcept "typeGeneral" "In what form is the [RESOURCE] available?"
* Resource.classification.typeGeneral from https://art-decor.org/fhir/ValueSet/1.2.276.0.76.11.1011--20220627140914 (required)
* Resource.classification.typeGeneral ^comment = "<p><strong>Additional information:</strong> If the [RESOURCE] consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'.</p> \n * 1..1M 1..1, if Resource.classification.type != (\"Study\" OR \"Substudy\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\"); otherwise 0..0"
* Resource.classification.typeGeneral ^requirements = "**Description: **Specific information about the form in which the [RESOURCE] is available."
* Resource.classification.typeGeneral ^alias = "Resource.classification.typeGeneral"
* Resource.classification.typeGeneral ^base.path = "Resource.classification.typeGeneral"
* Resource.classification.typeGeneral ^base.min = 0
* Resource.classification.typeGeneral ^base.max = "1"
* Resource.classification.typeGeneral ^binding.description = "NFDI4Health_VS_MDS_Resource_Type_General_NCI_UMLS_Local"
* Resource.titles 1..1  BackboneElement "titles" "Title(s)/name(s) of the [RESOURCE]"
* Resource.titles ^requirements = "**Description: **Group of items providing information about title(s)/name(s) of the [RESOURCE]."
* Resource.titles ^alias = "Resource.titles"
* Resource.titles ^base.path = "Resource.titles"
* Resource.titles ^base.min = 1
* Resource.titles ^base.max = "1"
* Resource.titles.text 1..1  string "text" "Title/name"
* Resource.titles.text ^comment = "<p><strong>Additional information: </strong>If no official title/name has been defined yet, a title/name that is suitable for public display should be used.</p> \n "
* Resource.titles.text ^requirements = "**Description: **Scientific unabbreviated title or name of the [RESOURCE]."
* Resource.titles.text ^alias = "Resource.titles.text"
* Resource.titles.text ^base.path = "Resource.titles.text"
* Resource.titles.text ^base.min = 1
* Resource.titles.text ^base.max = "1"
* Resource.titles.language 1..1  CodeableConcept "language" "Language of the title/name"
* Resource.titles.language from https://art-decor.org/fhir/ValueSet/1.2.276.0.76.11.1008--20220627224337 (required)
* Resource.titles.language ^requirements = "**Description: **Language in which the title/name is provided."
* Resource.titles.language ^alias = "Resource.titles.language"
* Resource.titles.language ^base.path = "Resource.titles.language"
* Resource.titles.language ^base.min = 1
* Resource.titles.language ^base.max = "1"
* Resource.titles.language ^binding.description = "NFDI4Health_VS_MDS_Language_UMLS"
* Resource.acronyms 0..* BackboneElement "acronyms" "Acronym(s) of the [RESOURCE]"
* Resource.acronyms ^requirements = "**Description: **Group of items providing information about acronym(s) of the [RESOURCE]."
* Resource.acronyms ^alias = "Resource.acronyms"
* Resource.acronyms ^base.path = "Resource.acronyms"
* Resource.acronyms ^base.min = 0
* Resource.acronyms ^base.max = "*"
* Resource.acronyms.text 1..1  string "text" "Acronym"
* Resource.acronyms.text ^comment = "<p><strong>Additional information:</strong> The field refers primarily to resources which have an acronym.</p> \n "
* Resource.acronyms.text ^requirements = "**Description: **If existing, acronym(s) of the [RESOURCE]."
* Resource.acronyms.text ^alias = "Resource.acronyms.text"
* Resource.acronyms.text ^base.path = "Resource.acronyms.text"
* Resource.acronyms.text ^base.min = 1
* Resource.acronyms.text ^base.max = "1"
* Resource.acronyms.language 1..1 CodeableConcept "language" "Language of the acronym"
* Resource.acronyms.language from https://art-decor.org/fhir/ValueSet/1.2.276.0.76.11.1008--20220627224337 (required)
* Resource.acronyms.language ^requirements = "**Description: **Language in which the acronym is provided."
* Resource.acronyms.language ^alias = "Resource.acronyms.language"
* Resource.acronyms.language ^base.path = "Resource.acronyms.language"
* Resource.acronyms.language ^base.min = 1
* Resource.acronyms.language ^base.max = "1"
* Resource.acronyms.language ^binding.description = "NFDI4Health_VS_MDS_Language_UMLS"