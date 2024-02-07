Profile: NFDI4Health_PR_MDS_Centers
Parent: Location
Id: nfdi4health-pr-mds-centers
Title: "NFDI4Health PR MDS Centers"
Description: "Profile intended to capture information on the number of centers invovled in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-centers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* description 0..1
* description ^short = "Number of centers" 
* description ^definition = "Number of centers involved in the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains 
    NFDI4Health_EX_MDS_Centers named centers 0..1


Mapping: NFDI4Health-Centers-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Centers
* description -> "Design.centersNumber"
* extension[centers] -> "Design.centers"