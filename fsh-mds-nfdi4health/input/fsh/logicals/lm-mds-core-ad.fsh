Logical: NFDI4Health_LM_MDS_Core_V3_3_Version2
Parent: Element
Id: nfdi4health-lm-mds-core-v3-3-version2
Title: "NFDI4Health LM Core Metadataschema V3.3"
Description: "NFDI4Health Logical Model Core Metadataschema V3.3  Version2 (AD)"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-core-v3-3-version2"
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
* Resource.classification.type from NFDI4Health_VS_MDS_Resource_Type_NCI_Local (required)
* Resource.classification.type ^comment = "<p><strong>Additional information: </strong>The selected resource type determines which information will be asked next.</p> \n "
* Resource.classification.type ^requirements = "**Description: **A term describing the resource."
* Resource.classification.type ^alias = "Resource.classification.type"
* Resource.classification.type ^base.path = "Resource.classification.type"
* Resource.classification.type ^base.min = 1
* Resource.classification.type ^base.max = "1"
* Resource.classification.type ^binding.description = "NFDI4Health_VS_MDS_Resource_Type_NCI_Local"
* Resource.classification.typeGeneral 0..1 CodeableConcept "typeGeneral" "In what form is the [RESOURCE] available?"
* Resource.classification.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.classification.typeGeneral ^comment = "<p><strong>Additional information:</strong> If the [RESOURCE] consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'.</p> \n * 1..1M 1..1, if Resource.classification.type != (\"Study\" OR \"Substudy\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\"); otherwise 0..0"
* Resource.classification.typeGeneral ^requirements = "**Description: **Specific information about the form in which the [RESOURCE] is available."
* Resource.classification.typeGeneral ^alias = "Resource.classification.typeGeneral"
* Resource.classification.typeGeneral ^base.path = "Resource.classification.typeGeneral"
* Resource.classification.typeGeneral ^base.min = 0
* Resource.classification.typeGeneral ^base.max = "1"
* Resource.classification.typeGeneral ^binding.description = "NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local"