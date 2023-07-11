CodeSystem: NFDI4Health_CS_MDS_Study_Status
Id: nfdi4health-cs-mds-study-status
Title: "NFDI4Health CS MDS Study Status"
Description: "Code system defining concepts about different status of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/CodeSystem/nfdi4health-cs-mds-study-status"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* #01 "At the planning stage"
* #02 "Ongoing (I): Recruitment ongoing, but data collection not yet started"
* #03 "Ongoing (II): Recruitment and data collection ongoing"
* #04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* #05 "Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing"
* #06 "Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume"
* #07 "Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume"
* #08 "Completed: Recruitment, data collection, and data quality management completed normally"