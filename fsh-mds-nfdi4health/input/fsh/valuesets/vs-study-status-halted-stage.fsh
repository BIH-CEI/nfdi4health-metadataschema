ValueSet: NFDI4Health_VS_MDS_Study_Status_Halted_Stage_Local
Id: nfdi4health-vs-mds-study-status-halted-stage-local
Title: "NFDI4Health VS MDS Study Status Halted Stage [Local]"
Description: "Value set defining codes to specify the status of a study when it was halted."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-status-halted-stage-local"
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