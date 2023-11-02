Profile: NFDI4Health_PR_MDS_Centers
Parent: Location
Id: nfdi4health-pr-mds-centers
Title: "Profile intended to capture information on the number of centers invovled in a study"
Description: "Resource covering metadata of a center."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-centers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* description 1..1
* description ^definition = "Number of study centers" "Number of centers involved in the study."
* extension contains 
    NFDI4Health_EX_MDS_Centers named centers 1..1

Mapping: NFDI4Health-Centers-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Centers
* description -> "1.17.18 Resource.studyDesign.studyCentersNumber"
* extension[centers] -> "1.17.17 Resource.studyDesign.studyCentersNumber"