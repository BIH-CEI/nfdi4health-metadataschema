Profile: PR_MDS_Composition
Parent: Composition
Id: pr-mds-composition
Title: "NFDI4Health PR MDS Composition"
Description: "Profile intended to capture information on the core information of resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/pr-mds-composition"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* identifier 1..1 
* identifier ^short = "ID of the [RESOURCE]"
* identifier ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
* identifier ^comment = "Additional information: The identifier is assigned automatically. / Source of the property and/or allowed values: NFDI4Health, DataCite [1]"
* identifier.value 1..1
* type 1..1
* type from NFDI4Health_VS_MDS_Resource_Type_NCI_Local (required)
* type ^short = "Resource classification"
* type ^definition = "Group of items providing information about the classification of the resource within the predefined categories."
* category 0..1
* category ^short = "In what form is the [RESOURCE] available?"
* category ^definition = "Specific information about the form in which the [RESOURCE] is available."
* category ^comment = "Cardinality: 1..1, if Resource.classification.type != ('Study' OR 'Substudy' OR 'Dataset' OR 'Registry' OR 'Secondary data source'); otherwise 0..0"
* category from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* category obeys core-1


//FHIR Paths
Invariant: core-1
Description: "When Composition.type = 'C63536' OR 'C198230' OR 'C47824' OR 'C61393' OR '178' then category must be empty and when Composition.type != 'C63536' OR 'C198230' OR 'C47824' OR 'C61393' OR '178' then Composition.category must exist."
Severity: #error
Expression: "type.coding.where(code = 'C63536' or code = 'C198230' or code = 'C47824' or code =  'C61393' or code = '178') implies category.exists().not() and type.coding.where(code != 'C63536' or code != 'C198230' or != 'C47824' or code != 'C61393' or code != '178') implies category.exists()"





Mapping: NFDI4Health-Composition-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: PR_MDS_Composition
* identifier.value -> "Resource.identifier"
* type -> "Resource.type"
* category -> "Resource.classificiation"

