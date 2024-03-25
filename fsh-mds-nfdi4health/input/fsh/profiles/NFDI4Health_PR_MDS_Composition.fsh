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
* obeys core-2a and core-2b
* obeys core-1a and core-1b
* obeys core-3a and core-3b and core-3c
* obeys core-4a and core-4b
* obeys core-5
* extension contains 
    NFDI4Health_EX_MDS_Provenance_Data_Source named provenanceDataSource 1..1 and
    NFDI4Health_EX_MDS_Chronic_Diseases named chronicDiseases 0..1 and
    NFDI4Health_EX_MDS_Execution_Language named executionLanguage 0..* and
    NFDI4Health_EX_MDS_Nutritional_Data named nutritionalData 0..1
* title 1..
* title ^short = "Title/name"
* title ^definition = "Scientific unabbreviated title or name of the resource."
* title ^comment = "Additional Information: If no official title/name has been defined yet, please provide a title/name that is suitable for public display. | Short Input Help: Please provide at least one title/name of the resource. If the original title is not in English, please also provide an English translation of the original title."
* title.extension contains NFDI4Health_EX_MDS_Label_Backport_R5 named label 1..*
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
* author ^short = "Individual or organisation associated with the [RESOURCE]"
* author ^definition = "Individual or organisation associated with the [RESOURCE] (use practitionerRole to specify their organisation)."
* author.extension contains 
    NFDI4Health_EX_MDS_Name_Type named nameType 1..1
* author only Reference(NFDI4Health_PR_MDS_Practitioner_Role or NFDI4Health_PR_MDS_Organization)
* subject 1..1 
* subject only Reference(NFDI4Health_PR_MDS_Document or NFDI4Health_PR_MDS_Questionnaire or NFDI4Health_PR_MDS_Study)
* subject ^comment = "1..1, if Resource.classification.type == ('Study' OR 'Substudy' OR 'Registry' OR 'Secondary data source'); otherwise 0..0"
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    nutritionalData 0..* and
    chronicDiseases 0..*
* section[nutritionalData] ^short = "Group of items providing information on diet assessment."
* section[nutritionalData] ^definition = "Specification of the dietary assessment instrument used in the [RESOURCE]."
* section[nutritionalData] ^comment = "1..*, if Resource.nutritionalData == 'Yes'; otherwise 0.. 0"
* section[nutritionalData].code = $NCI#C16927 "Nutritional Science"
* section[nutritionalData].entry 1..1
* section[nutritionalData].entry only Reference(Questionnaire)
* section[chronicDiseases] ^short = "Includes chronic diseases?"
* section[chronicDiseases] ^definition = "Indication whether the [RESOURCE] addresses chronic diseases."
* section[chronicDiseases] ^comment = "Cardinality: 1..*, if Resource.chronicDiseases == 'Yes' AND Resource.classification.type == ('Study protocol' OR 'Informed consent form' OR 'Patient information sheet' OR 'Manual of operations (SOPs)' OR 'Statistical analysis plan' OR 'Data management plan' OR 'Case report form' OR 'Interview scheme and themes' OR 'Observation guide' OR 'Discussion guide' OR 'Participant tasks' OR 'Other study document' OR 'Other'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.2 requirements"
* section[chronicDiseases].code = $NCI#C165593 "Chronic Disease"
* section[chronicDiseases].entry 1..1
* section[chronicDiseases].entry only Reference(Questionnaire)


//FHIR Paths
Invariant: core-1a
Description: "When Composition.type = 'C63536' OR 'C198230' OR 'C47824' OR 'C61393' OR '178' then Composition.category must be empty."
Severity: #error
Expression: "type.coding.where(code = 'C63536' or code = 'C198230' or code = 'C47824' or code = 'C61393' or code = '178').exists() implies category.exists().not()"

Invariant: core-1b
Description: "When Composition.type != 'C63536' OR 'C198230' OR 'C47824' OR 'C61393' OR '178' then Composition.category must exist."
Severity: #error
Expression: "type.coding.where(code = 'C93381' or code = 'C16468' or code = 'C15518' or code = 'C115779' or code = 'C115761' or code = 'C115756' or code = 'C40988' or code = 'C17048' or code = 'C17649' or code = 'C48800' or code = '021' or code = '020' or code = '019' or code = '018' or code = '017' or code = '016' or code = '011' or code = '009').exists() implies category.exists()"

Invariant: core-2a
Description: "When author.extension[nameType] = '125676002' then author only Reference (NFDI4Health_PR_MDS_Practitioner_Role)"
Severity: #error
Expression: "author.where(extension('https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-name-type').value as Coding).where(code = '125676002').exists() implies $this.reference.contains('PractitionerRole')"

Invariant: core-2b
Description: "When author.extension[nameType] = '385437003' then author only Reference (NFDI4Health_PR_MDS_Organization)"
Severity: #error
Expression: "author.where(extension('https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-name-type').value as Coding).where(code = '385437003').exists() implies $this.reference.contains('Organization')"

Invariant: core-3a
Description: "When Composition.type = 'C63536' or 'C198230' or 'C61393' or '178' then subject only Reference (NFDI4Health_PR_MDS_Study)"
Severity: #error
Expression: "type.coding.where(code = 'C63536'or code = 'C61393' or code = 'C198230' or code = '178').exists() implies subject.reference.contains('ResearchStudy')"

Invariant: core-3b
Description: "When Composition.type = 009, C16468 , C15518, C115779, C115761, C115756, 011, 016, '017', '018', '021' then subject only Reference (NFDI4Health_PR_MDS_Document)"
Severity: #error
Expression: "type.coding.where(code = '009' or code = 'C16468' or code = 'C15518' or code = 'C115779' or code = 'C115761' or code = 'C115756' or code = '011' or code = '016' or code = '017' or code = '018' or code = '021').exists() implies subject.reference.contains('Document')"

Invariant: core-3c
Description: "When Composition.type = 'C17048' or 'C40988' then subject only Reference (Profile: NFDI4Health_PR_MDS_Questionnaire)"
Severity: #error
Expression: "type.coding.where(code = 'C17048' or code = 'C40988').exists() implies subject.reference.contains('Questionnaire')"

Invariant: core-4a
Description: "1..*, if Resource.chronicDiseases == 'True' AND Resource.classification.type == ('C93381' OR 'C16468' OR 'C15518' OR 'C115779' OR 'C115761' OR 'C115756' OR 'C40988' OR  '016' OR '017' OR '018' OR '019' OR '021' OR 'C17649'); otherwise 0.. 0"
Severity: #error
Expression: "extension.where(url ='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-chronic-diseases').where(value = true).exists() implies section.code.coding.where(code = 'C165593').exists()"
 
Invariant: core-4b
Description: "1..*, if Resource.chronicDiseases == 'True' AND Resource.classification.type == ('C93381' OR 'C16468' OR 'C15518' OR 'C115779' OR 'C115761' OR 'C115756' OR 'C40988' OR  '016' OR '017' OR '018' OR '019' OR '021' OR 'C17649'); otherwise 0.. 0"
Severity: #error
Expression: "type.coding.where(code = 'C93381' or code = 'C16468' or code = 'C15518' or code = 'C115779' or code = 'C115761' or code = 'C115756' or code = 'C40988' or code =  '016' or code = '017' or code = '018' or code = '019' or code = '021' or code = 'C17649').exists()  implies section.code.coding.where(code = 'C165593').exists()"

Invariant: core-5
Description: "1..*, if Resource.nutritionalData == 'True'; otherwise 0.. 0"
Severity: #error
Expression: "extension.where(url ='https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-nutritional-data').where(value = true).exists() implies section.code.coding.where(code = 'C16927').exists()"



Mapping: NFDI4Health-Composition-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Composition
* identifier.value -> "Resource.identifier"
* type -> "Resource.classification.type"
* category -> "Resource.classificiation.typeGeneral"
* author -> "Resource.contributors"
* author.extension[nameType] -> "Resource.contributors.nameType"
* author -> "Resource.contributors"
* title -> "Resource.titles"
* title -> "Resource.acronyms"
* extension[nutritionalData] -> "Resource.nutritionalData"
* extension[chronicDiseases] -> "Resource.chronicDiseases"
* extension[provenanceDataSource] -> "Resource.provenance.dataSource"
* section[nutritionalData] ->  "DietAssessment"
* section[chronicDiseases] -> "ChronicDiseasesEpidemiology"



