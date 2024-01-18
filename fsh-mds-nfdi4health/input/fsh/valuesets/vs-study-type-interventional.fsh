ValueSet: NFDI4Health_VS_MDS_Study_Type_Interventional_NCI
Id: nfdi4health-vs-mds-study-type-interventional-nci
Title: "NFDI4Health VS MDS Study Type Interventional [NCI]"
Description: "Value set defining codes to specify the type of an interventional study in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-type-interventional-nci"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $NCI#C82640 "Single Group Study"
* $NCI#C82639 "Parallel Study"
* $NCI#C82637 "Crossover Study"
* $NCI#C82638 "Factorial Study"
* $NCI#C49153 "Sequential"
* $NCI#C17649 "Other"
* $NCI#C17998 "Unknown"