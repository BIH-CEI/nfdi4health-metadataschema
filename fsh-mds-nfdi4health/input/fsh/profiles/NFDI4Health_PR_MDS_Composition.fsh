Profile: NFDI4Health_PR_MDS_Composition
Parent: Composition
Id: nfdi4health-pr-mds-composition
Title: "NFDI4Health PR MDS Composition"
Description: "Profile intended to capture information on the core information of resources."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-composition"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* extension contains 
    NFDI4Health_EX_MDS_Provenance_Data_Source named dataSource 1..1
* title 1..
* title ^short = "Title/name"
* title ^definition = "Scientific unabbreviated title or name of the resource."
* title ^comment = "Additional Information: If no official title/name has been defined yet, please provide a title/name that is suitable for public display. | Short Input Help: Please provide at least one title/name of the resource. If the original title is not in English, please also provide an English translation of the original title."
* title.extension contains NFDI4Health_EX_MDS_Label named label 0..*
* identifier.value 1..1
* identifier ^short = "ID of the [RESOURCE]"
* identifier ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
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
* author ^short = "Individual or organisation associated with the [RESOURCE]"
* author ^definition = "Individual or organisation associated with the [RESOURCE] (use practitionerRole to specify their organisation)."
* author.extension contains 
    NFDI4Health_EX_MDS_Name_Type named nameType 1..1
* author only Reference(NFDI4Health_PR_MDS_Practitioner_Role or NFDI4Health_PR_MDS_Organization)
* subject only Reference(NFDI4Health_PR_MDS_Document or NFDI4Health_PR_MDS_Questionnaire or NFDI4Health_PR_MDS_Study)
* subject obeys core-2
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    nutritionalData 0..1 and
    chronicDiseases 0..1
* section[nutritionalData] ^short = "Collects nutritional data?"
* section[nutritionalData] ^definition = "Specification of the dietary assessment instrument used in the [RESOURCE]."
* section[nutritionalData] ^comment = "1..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0"
* section[nutritionalData].code = $NCI#C16927 "Nutritional Science"
* section[nutritionalData].focus 1..1
* section[nutritionalData].focus only Reference(NFDI4Health_PR_MDS_Observation_Nutritional_Epidemiology)
* section[chronicDiseases] ^short = "Includes chronic diseases?"
* section[chronicDiseases] ^definition = "Indication whether the [RESOURCE] addresses chronic diseases."
* section[chronicDiseases] ^comment = "1..1, if Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0"
* section[chronicDiseases].code = $NCI#C165593 "Chronic Disease"
* section[chronicDiseases].focus 1..1
* section[chronicDiseases].focus only Reference(NFDI4Health_PR_MDS_Observation_Nutritional_Epidemiology)


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
Source: NFDI4Health_PR_MDS_Composition
* identifier.value -> "Resource.identifier"
* type -> "Resource.classification.type"
* category -> "Resource.classificiation.typeGeneral"
* author -> "Resource.contributors"
* author.extension[nameType] -> "Resource.contributors.nameType"
* author
* title -> "Resource.titles"
* title -> "Resource.acronyms"
* section[nutritionalData] -> "1.14 Resource.nutritionalData"
* section[chronicDiseases] -> "Resource.chronicDiseases"



