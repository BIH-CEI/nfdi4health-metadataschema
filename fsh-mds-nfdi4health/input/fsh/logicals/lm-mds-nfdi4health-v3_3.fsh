Logical: NFDI4Health_LM_Metadataschema_General_V3_3
Parent: Element
Id: nfdi4health-lm-metadataschema-general-v3-3
Title: "NFDI4Health LM Core Metadataschema V3.3"
Description: "NFDI4Health Logical Model Core Metadataschema V3.3"

* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-general-v3-3"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* Resource 1..1 BackboneElement "Resource"
* Resource ^short = "Resource"
* Resource ^definition = "Resource"
* Resource ^comment = "\n                     <p/> \n                     <p><strong>Cardinality:</strong> 1..1</p> \n                 \n "
* Resource ^requirements = "**Description:** Group of items providing Information about a resource. Resources can be, for example, files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also abstractions (e.g. studies or substudies/data collection events)."
* Resource ^base.min = 1
* Resource ^base.max = "1"
* Resource ^mustSupport = true
* Resource.identifier 1..1 string "identifier" "ID of the [Resource]"
* Resource.identifier ^comment = "\n                         <p><strong>Cardinality:</strong> 1..1</p> \n                     \n "
* Resource.identifier ^requirements = "**Description: **Unique identifier of the resource used for identification within the NFDI4Health.\n                         \n**Additional information:** The identifier is assigned automatically."
* Resource.identifier ^alias = "resource_identifier"
* Resource.identifier ^base.min = 1
* Resource.identifier ^base.max = "1"
* Resource.classification 1..1 BackboneElement "classification" "Classification of the resource within the predefined categories"
* Resource.classification ^comment = "\n                         <p>\n                            <strong> Cardinality: 1..1</strong>\n                        </p> \n                     \n "
* Resource.classification ^requirements = "**Description: **Group of items providing Information about classification of the resource within the predefined categories."
* Resource.classification ^alias = "resource_classification"
* Resource.classification ^base.min = 1
* Resource.classification ^base.max = "1"
* Resource.classification.resourceType 1..1 CodeableConcept "resourceType" "Type of the resource"
* Resource.classification.resourceType from https://art-decor.org/fhir/ValueSet/1.2.276.0.76.11.1014--20220616143355 (required)
* Resource.classification.resourceType ^comment = "\n                             <p><strong>Cardinality:</strong> 1..1 </p> \n                         \n "
* Resource.classification.resourceType ^requirements = "**Description: **A term describing the resource.\n                             \n**Additional information: **The selected value determines which type of information needs to be provided."
* Resource.classification.resourceType ^alias = "resource_type"
* Resource.classification.resourceType ^base.min = 1
* Resource.classification.resourceType ^base.max = "1"
* Resource.classification.resourceType ^binding.description = "NFDI4Health_VS_MDS_Resource_Type_UMLS_Local"
* Resource.classification.resourceTypeGeneral 0..1 CodeableConcept "resourceTypeGeneral" "A more general type of the resource"
* Resource.classification.resourceTypeGeneral from https://art-decor.org/fhir/ValueSet/1.2.276.0.76.11.1011--20220627140914 (required)
* Resource.classification.resourceTypeGeneral ^comment = "\n                             <p><strong>Cardinality</strong>: 1..1, if resource_type != (\"Study\" OR \"Substudy/Data collection event\" OR \"Dataset\") </p> \n                             <p/> \n                         \n * 1..1M 1..1, if Resource.classification.type != (\"Study\" OR \"Substudy/Data collection event\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\"); otherwise 0..0"
* Resource.classification.resourceTypeGeneral ^requirements = "**Description: **A more general term describing the resource which forms a pair with the property \"Type of the resource\" (e.g. \"Questionnaire\"/\"Text\")."
* Resource.classification.resourceTypeGeneral ^alias = "resource_type_general"
* Resource.classification.resourceTypeGeneral ^base.min = 0
* Resource.classification.resourceTypeGeneral ^base.max = "1"
* Resource.classification.resourceTypeGeneral ^binding.description = "NFDI4Health_VS_MDS_Resource_Type_General_NCI_UMLS_Local"

