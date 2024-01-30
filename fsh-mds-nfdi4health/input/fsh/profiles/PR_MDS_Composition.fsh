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

* extension contains
    NFDI4Health_EX_MDS_Name_Type named nameType 1..1 and
    NFDI4Health_EX_MDS_Format named format 0..1 and
    NFDI4Health_EX_MDS_Execution_Language named executionlLanguage 0..* and
    NFDI4Health_EX_MDS_Keywords named keywords 0..*
* title 1..
* title ^short = "Title/name"
* title ^definition = "Scientific unabbreviated title or name of the resource."
* title ^comment = "Additional Information: If no official title/name has been defined yet, please provide a title/name that is suitable for public display. | Short Input Help: Please provide at least one title/name of the resource. If the original title is not in English, please also provide an English translation of the original title."
* title.extension contains NFDI4Health_EX_MDS_Label named label 0..*
* identifier.value 1..1
* status = #final (exactly)
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
* subject only Reference(NFDI4Health_PR_MDS_Study or NFDI4Health_PR_MDS_Questionnaire or NFDI4Health_PR_MDS_Document)
* author ^short = "Individual or organisation associated with the [RESOURCE]"
* author ^definition = "Individual or organisation associated with the [RESOURCE] (use practitionerRole to specify their organisation)."
* author only Reference(NFDI4Health_PR_MDS_Practitioner_Role or NFDI4Health_PR_MDS_Organization)
* subject only Reference(NFDI4Health_PR_MDS_Document or NFDI4Health_PR_MDS_Questionnaire or NFDI4Health_PR_MDS_Study)
* subject obeys core-2


//FHIR Paths
Invariant: core-1
Description: "When Composition.type = 'C63536' OR 'C198230' OR 'C47824' OR 'C61393' OR '178' then Composition.category must be empty and when Composition.type != 'C63536' OR 'C198230' OR 'C47824' OR 'C61393' OR '178' then Composition.category must exist."
Severity: #error
Expression: "type.coding.where(code = 'C63536' or code = 'C198230' or code = 'C47824' or code =  'C61393' or code = '178') implies category.exists().not() and type.coding.where(code != 'C63536' or code != 'C198230' or != 'C47824' or code != 'C61393' or code != '178') implies category.exists()"


Invariant: core-2
Description: "When Composition.type = 'C63536' OR 'C198230' then subject only Reference (NFDI4Health_PR_MDS_Study)"
Severity: #error
Expression: "type.coding.where(code = 'C63536' or code = 'C198230') implies subject only Reference (NFDI4Health_PR_MDS_Study)"





Mapping: NFDI4Health-Composition-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: PR_MDS_Composition
* identifier.value -> "Resource.identifier"
* type -> "Resource.classification.type"
* category -> "Resource.classificiation.typeGeneral"
* author -> "Resource.contributors"
* title -> "Resource.titles"
* title -> "Resource.acronyms"


