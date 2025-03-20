Logical: NFDI4Health_LM_MDS_Core
Parent: Element
Id: nfdi4health-lm-mds-core
Title: "NFDI4Health Core Metadataschema"
Description: "NFDI4Health Logical Model of Core V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-core"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"


* Resource 1..1 BackboneElement "Resource" "Group of items providing information about a resource. Resources can be, for example, files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also studies or substudies."
* Resource.identifier 1..1 string "identifier" "Identifier"
* Resource.identifier ^comment = "Additional information: The identifier is assigned automatically."
* Resource.identifier ^requirements = "Unique identifier of the resource used for identification within the NFDI4Health."
* Resource.classification 1..1 BackboneElement "classification" "Resource classification"
* Resource.classification ^comment = "Cardinality: 1..1"
* Resource.classification ^requirements = "Group of items providing information about the classification of the resource within the predefined categories."
* Resource.classification.type 1..1 CodeableConcept "type" "Type of the resource"
* Resource.classification.type from NFDI4Health_VS_MDS_Resource_Type_NCI_Local (required)
* Resource.classification.type ^comment = "Additional information: The selected resource type determines which information will be asked next."
* Resource.classification.type ^requirements = "A term describing the resource."
* Resource.classification.typeGeneral 0..1 CodeableConcept "typeGeneral" "In what form is the [RESOURCE] available?"
* Resource.classification.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.classification.typeGeneral ^comment = "Additional information: If the [RESOURCE] consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'."
* Resource.classification.typeGeneral ^requirements = "Specific information about the form in which the [RESOURCE] is available."
* Resource.titles 1..* BackboneElement "titles" "Titles/names"
* Resource.titles ^comment = "Cardinality: 1..*"
* Resource.titles ^requirements = "Group of items providing information about title(s)/name(s) of the [RESOURCE]."
* Resource.titles.text 1..1 string "text" "Title/name"
* Resource.titles.text ^comment = "Additional information: If no official title/name has been defined yet, a title/name that is suitable for public display should be used."
* Resource.titles.text ^requirements = "Scientific unabbreviated title or name of the [RESOURCE]."
* Resource.titles.language 1..1 CodeableConcept "language" "Language of the title/name"
* Resource.titles.language from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.titles.language ^comment = "Cardinality: 1..1"
* Resource.titles.language ^requirements = "Language in which the title/name is provided."
* Resource.acronyms 0..* BackboneElement "acronyms" "Acronyms"
* Resource.acronyms ^comment = "Cardinality: 0..*"
* Resource.acronyms ^requirements = "Group of items providing information about acronym(s) or alternative short title(s)/name(s) of the [RESOURCE]."
* Resource.acronyms.text 1..1 string "text" "Acronym"
* Resource.acronyms.text ^comment = "Additional information: The field refers primarily to resources which have an acronym."
* Resource.acronyms.text ^requirements = "If existing, acronym(s) of the [RESOURCE]."
* Resource.acronyms.language 1..1 CodeableConcept "language" "Language of the acronym"
* Resource.acronyms.language from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.acronyms.language ^comment = "Cardinality: 1..1"
* Resource.acronyms.language ^requirements = "Language in which the acronym is provided."
* Resource.descriptions 1..* BackboneElement "descriptions" "Descriptions"
* Resource.descriptions ^comment = "Cardinality: 1..*"
* Resource.descriptions ^requirements = "Group of items providing information about the description(s) of the [RESOURCE]."
* Resource.descriptions.text 1..1 string "text" "Description"
* Resource.descriptions.text ^comment = "Cardinality: 1..1"
* Resource.descriptions.text ^requirements = "Short plain text summary of the [RESOURCE]."
* Resource.descriptions.language 1..1 CodeableConcept "language" "Language of the description"
* Resource.descriptions.language from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.descriptions.language ^comment = "Cardinality: 1..1"
* Resource.descriptions.language ^requirements = "Language in which the description text is provided."
* Resource.keywords 0..* BackboneElement "keywords" "Keywords"
* Resource.keywords ^comment = "Additional information: The findability of the [RESOURCE] can be significantly increased if proper keywords are stated."
* Resource.keywords ^requirements = "Group of items providing information about keywords describing the [RESOURCE]."
* Resource.keywords.label 1..1 string "label" "Keyword"
* Resource.keywords.label ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. SNOMED CT, MeSH, UMLS) is preferred. However, also self-assigned keywords are allowed."
* Resource.keywords.label ^requirements = "Keyword(s) describing the [RESOURCE]."
* Resource.languages 0..* CodeableConcept "languages" "Languages"
* Resource.languages from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.languages ^comment = "Cardinality: 0..*"
* Resource.languages ^requirements = "Language(s) in which the [RESOURCE] is conducted/provided."