Profile: NFDI4Health_PR_MDS_Provenance
Parent: Provenance
Id: nfdi4health-pr-mds-provenance
Title: "NFDI4Health PR MDS Provenance"
Description: "Resource covering information about the provenance of a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-provenance"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Information about provenance aspects of the data entry"
* . ^definition = "Group of items providing information about provenance aspects of the data entry on the portal"
* meta.versionId ^short = "Version number of the resource within the portal/system"
* meta.versionId ^definition = "Version number of the resource within the portal/system"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains NFDI4Health_EX_MDS_Provenance_Data_Source named dataSource 1..1
* target only Reference(NFDI4Health_PR_MDS_Questionnaire or NFDI4Health_PR_MDS_Document or NFDI4Health_PR_MDS_Study)
* target ^definition = "The Reference(s) that were generated or updated by the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by the same activity."
* recorded ^short = "Verfication date / Date when the [RESOURCE] was first submitted for publication / Date when the [RESOURCE] was first posted/published / Date when the last update of the [RESOURCE] was submitted for publication / Date when the last update of the [RESOURCE] was posted/published."
* recorded ^definition = "For verification date: Date on which the responsible party last verified the information about the resource, even if no additional or updated information is being submitted.\r\n\r\nFor first submission date: Date when the resource was first submitted for publication.\r\n\r\nFor first posted date: Date when the resource was first posted/published.\r\n\r\nFor last update date: Date when the last update of the resource was submitted for publication.\r\n\r\nFor last posted date: Date when the last update of the resource was posted/published.\r\nFor"
* activity 1..
* activity.coding from NFDI4Health_VS_MDS_Provenance_Activity_HL7_Local (required)
* activity.coding ^binding.description = "Value set defining codes for activity types."
* agent ^short = "User who submitted, published, updated or verified the resource."
* agent ^definition = "An actor taking a role in an activity for which it can be assigned some degree of responsibility for the activity taking place."
* agent.who only Reference(NFDI4Health_PR_MDS_Practitioner or NFDI4Health_PR_MDS_Practitioner_Role or NFDI4Health_PR_MDS_Organization)

Mapping: NFDI4Health-Provenance-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Provenance
* -> "1.18 Resource.provenance"
* meta.versionId -> "1.18.12 Resource.provenance.resourceVersion"
* recorded -> "1.18.2 Resource.provenance.verificationDate"
* recorded -> "1.18.4 Resource.provenance.firstSubmittedDate"
* recorded -> "1.18.6 Resource.provenance.firstPostedDate"
* recorded -> "1.18.8 Resource.provenance.lastUpdateSubmittedDate"
* recorded -> "1.18.10 Resource.provenance.lastUpdatePostedDate"
* agent -> "1.18.3 Resource.provenance.verificationUser"
* agent -> "1.18.5 Resource.provenance.firstSubmittedUser"
* agent -> "1.18.7 Resource.provenance.firstPostedUser"
* agent -> "1.18.9 Resource.provenance.lastUpdateSubmittedUser"
* agent -> "1.18.11 Resource.provenance.lastUpdatePostedUser"



