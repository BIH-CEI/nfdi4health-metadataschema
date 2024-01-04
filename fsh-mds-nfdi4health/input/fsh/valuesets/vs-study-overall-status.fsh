ValueSet: NFDI4Health_VS_MDS_Study_Overall_Status_NCI_Local
Id: nfdi4health-vs-mds-study-overall-status-nci-local
Title: "NFDI4Health VS MDS Study Overall Status [NCI, Local]"
Description: "Value set defining codes to specify the overall status of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-overall-status-nci-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de" 

* $StudyStatus#01 "At the planning stage"
* $StudyStatus#02 "Ongoing (I): Recruitment ongoing, but data collection not yet started"
* $StudyStatus#03 "Ongoing (II): Recruitment and data collection ongoing"
* $StudyStatus#04 "Ongoing (III): Recruitment completed, but data collection ongoing"
* $StudyStatus#05 "Ongoing (IV): Recruitment and data collection completed, but data quality management ongoing"
* $StudyStatus#06 "Suspended: Recruitment, data collection, or data quality management, halted, but potentially will resume"
* $StudyStatus#07 "Terminated: Recruitment, data collection, data and quality management halted prematurely and will not resume"
* $StudyStatus#08 "Completed: Recruitment, data collection, and data quality management completed normally"
* $NCI#C17649 "Other"