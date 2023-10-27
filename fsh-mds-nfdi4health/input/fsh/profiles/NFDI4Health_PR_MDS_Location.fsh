Profile: NFDI4Health_PR_MDS_Centers
Parent: Location
Id: nfdi4health-pr-mds-centers
Title: "NFDI4Health PR MDS Centers"
Description: "Resource covering metadata of a center."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-centers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* description 1..1
* extension contains 
    NFDI4Health_EX_MDS_Centers named centers 1.1

* type 1..1 from NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local (required)