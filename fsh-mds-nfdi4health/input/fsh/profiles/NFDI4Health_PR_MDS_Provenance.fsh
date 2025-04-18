Profile: NFDI4Health_PR_MDS_Provenance
Parent: Provenance
Id: nfdi4health-pr-mds-provenance
Title: "NFDI4Health PR MDS Provenance"
Description: "Profile to collect information how data was collected - manually v.s. automatically - and the activities related to a resource - e.g., when it was uploaded, when it was published, when it was updated, etc. - and the persons or devices involved."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-provenance"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Provenance aspects of data entry"
* . ^definition = "Group of items providing information about provenance aspects of the data entry on this portal."
* meta.versionId ^short = "Version number"
* meta.versionId ^definition = "Version number of the [RESOURCE] within this portal"
* target only Reference(NFDI4Health_PR_MDS_Questionnaire or NFDI4Health_PR_MDS_Document or NFDI4Health_PR_MDS_Study or NFDI4Health_PR_MDS_Registry)
* target ^definition = "The Reference(s) that were generated or updated by the activity described in this resource. A provenance can point to more than one target if multiple resources were created/updated by the same activity."
* recorded ^short = "Last verified on | First submitted on | First posted/published on | Last update submitted on | Last update posted/published on"
* recorded ^definition = "For verification date: Date on which the responsible party last verified the information about the [RESOURCE], even if no additional or updated information is being submitted. | For first submission date: Date when the [RESOURCE] was first submitted for publication. | For first posted date: Date when the [RESOURCE] was first posted/published. | For last update submission date: Date when the last update of the [RESOURCE] was submitted for publication. | For last update posted date: Date when the last update of the [RESOURCE] was posted/published."
* activity 1..
* activity from NFDI4Health_VS_MDS_Provenance_Activity_HL7_Local (required)
* activity ^binding.description = "Value set defining codes for activity types."
* agent ^short = "Last verified by [USER] | First submitted by [USER] | First posted/published by [USER] | Last updated submitted by [USER] | Last update posted/published by [USER]"
* agent ^definition = "For verification user: User who last verified the information about the [RESOURCE]. | For first submission user: User who first submitted the [RESOURCE] for publication. | For first posted user: User who first posted/published the [RESOURCE]. | For last update submission user: User who submitted the last update of the [RESOURCE]. | For last update posted user: User who posted/published the last update of the [RESOURCE]."
* agent.who only Reference(NFDI4Health_PR_MDS_Practitioner or NFDI4Health_PR_MDS_Organization)

Mapping: NFDI4Health-Provenance-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Provenance
* -> "Resource.provenance"
* meta.versionId -> "Resource.provenance.resourceVersion"
* recorded -> "Resource.provenance.verificationDate"
* recorded -> "Resource.provenance.firstSubmittedDate"
* recorded -> "Resource.provenance.firstPostedDate"
* recorded -> "Resource.provenance.lastUpdateSubmittedDate"
* recorded -> "Resource.provenance.lastUpdatePostedDate"
* agent -> "Resource.provenance.verificationUser"
* agent -> "Resource.provenance.firstSubmittedUser"
* agent -> "Resource.provenance.firstPostedUser"
* agent -> "Resource.provenance.lastUpdateSubmittedUser"
* agent -> "Resource.provenance.lastUpdatePostedUser"



