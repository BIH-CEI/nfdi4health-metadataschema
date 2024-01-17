ValueSet: NFDI4Health_VS_MDS_Study_Arm_Group_Type_NCI
Id: nfdi4health-vs-mds-study-arm-group-type-nci
Title: "NFDI4Health VS MDS Study Arm Group Type [NCI]"
Description: "Value set defining codes to specify the role of a study arm or group in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-arm-group-type-nci"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $NCI#C174266 "Investigational Arm"
* $NCI#C174267 "Active Comparator Arm"
* $NCI#C174268 "Placebo Control Arm"
* $NCI#C174269 "Sham Comparator Arm"
* $NCI#C174270 "No Intervention Arm"
* $NCI#C17649 "Other"