Profile: NFDI4Health_PR_MDS_Registry
Parent: Library
Id: nfdi4health-pr-mds-registry
Title: "NFDI4Health PR MDS Registry"
Description: "Group of items applicable only to registries."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-registry"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

// Invariants
* obeys biosamples-a and biosamples-b
* obeys imaging-a and imaging-b
* obeys omics-a and omics-b
* obeys supportingInformation-a and supportingInformation-b
* obeys timeFrame-a and timeFrame-b
* obeys accessCriteria-a and accessCriteria-b
* obeys recordLinkage-a and recordLinkage-b
* obeys legalBasisDetails-a and legalBasisDetails-b


// Extensions
* extension contains
    NFDI4Health_EX_MDS_Groups_Of_Diseases named groupsOfDiseases 1..1 and
    NFDI4Health_EX_MDS_Library_Ethics_Approval named ethicsCommitteeApproval 0..1 and
    NFDI4Health_EX_MDS_Keywords named keywords 0..* and
    NFDI4Health_EX_MDS_Descriptions named descriptions 1..1 and
    NFDI4Health_EX_MDS_Data_Source named dataSource 0..1 and
    NFDI4Health_EX_MDS_Subject named subject 1..1 and
    NFDI4Health_EX_MDS_Library_Outcomes named outcomes 0..* and
    NFDI4Health_EX_MDS_Assessments named assessments 0..* and
    NFDI4Health_EX_MDS_Data_Sharing_Plan named dataSharingPlan 1..1 and
    NFDI4Health_EX_MDS_Library_Data_Providers named dataProviders 0..1 and
    NFDI4Health_EX_MDS_Library_Data_Providers_Number named dataProvidersNumber 0..1 and
    NFDI4Health_EX_MDS_Library_Population named population 1..1 and
    NFDI4Health_EX_MDS_Record_Linkage named recordLinkage 0..1


// Elements
* identifier 0..* 
* identifier ^short = "Alternative identifiers"
* identifier ^definition = "Group of items providing information about identifiers (IDs) assigned to the given [RESOURCE] by another registering systems, e.g. a registry of clinical trials or a data repository."
* identifier.type 1..1
* identifier.type ^short = "Type of the registry"
* identifier.type ^definition = "Type/name of the system where the given [RESOURCE] is already registered."
* identifier.type from NFDI4Health_VS_MDS_ID_TYPE_NCI_Local (required)
* identifier.type ^binding.description = "Value set defining codes to specify the type of a resource identifier."
* identifier.value 1..1
* identifier.value ^definition = "Identifier"
* identifier.value ^example[0].label = "Identifier (ID) assigned to the given [RESOURCE] by another registering system, e.g. by a registry of clinical trials or a data repository."
* identifier.value ^example[=].valueString = "ISRCTN91495258"
* status = #active (exactly)
* status ^comment = "The item does not exist in NFDI4Health' MDS. Fixed to 'active' for all studies."
* topic ^short = "Primary focus of the [RESOURCE]"
* topic ^definition = "Group of items providing information about the focus of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* topic.coding ^short = "Terminology/classification"
* topic.coding ^definition = "Terminology/classification used for the focus area."
* topic.coding ^comment = "Short Input Help: If used, name of the terminology/classification."
* topic.coding 1..1
* topic.coding ^example.label = "Example of a terminology/classification"
* topic.coding ^example.valueCode = $NCI#C49469
* topic.coding from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)
* topic.text 1..
* topic.text ^short = "Focus area"
* topic.text ^definition = "Focus area of the [RESOURCE] (e.g. medication, food, therapy, device, etc.)."
* topic.text ^comment = "Additional Information: The use of terms from established terminologies/classifications (e.g. SNOMED CT, ICD, etc.) is preferred. However, also self-assigned terms are allowed. | Short input help: Preferably, use terms from SNOMED CT (https://browser.ihtsdotools.org)."
* topic.extension contains NFDI4Health_EX_MDS_URI named uri 0..1
* effectivePeriod.start ^short = "Start date"
* effectivePeriod.start ^definition = "Start date of data collection for the [RESOURCE]."
* effectivePeriod.start ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned [RESOURCE], enter the intended start date. In case of an ongoing [RESOURCE], enter the actual start date."
* effectivePeriod.end ^short = "End date"
* effectivePeriod.end ^definition = "In case of a [RESOURCE] with patients or other participants, it is the date when the last participant is examined or receives an intervention, or the date of the last participant's last visit."
* effectivePeriod.end ^comment = "Additional information: Preferred date format: DD.MM.YYYY. | Short input help: In case of a planned or ongoing [RESOURCE], enter the intended end date. In case of a completed [RESOURCE], enter the actual end date."
* description ..1
* description ^short = "Additional information about the [RESOURCE]"
* description ^definition = "Any additional information about specific aspects of the [RESOURCE] that could not be captured by other fields.."
* description ^comment = "Short input help: You can provide here specific aspects of the [RESOURCE] that could not be captured by other fields."
* subjectReference only Reference(NFDI4Health_PR_MDS_Group_Eligibility)
* relatedArtifact ..1
* relatedArtifact only NFDI4Health_PR_MDS_Related_Artifact_Resource


Mapping: NFDI4Health-Registry-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Registry
* -> "Design"
* identifier -> "Resource.idsAlternative"
* identifier.type -> "Resource.idsAlternative.scheme"
* identifier.value -> "Resource.idsAlternative.identifier"
* extension[groupsOfDiseases] -> "Design.groupsOfDiseases"
* topic -> "Design.focus"
* topic.extension[uri] -> "Design.focus.code"
* topic.coding.code -> "Design.focus.classification"
* topic.text -> "Design.focus.label"
* extension[descriptions] -> "Resource.descriptions"
* effectivePeriod -> "Design.administrativeInformation.startDate"
* effectivePeriod -> "Design.administrativeInformation.endDate"
* description -> "Design.comment"
* subjectReference -> "Design.eligibilityCriteria"
* subjectCodeableConcept -> "Design.subject"


// All conditions stating Resource.classification.type == 'Registry'  were evaluated as given within the Library Profile


