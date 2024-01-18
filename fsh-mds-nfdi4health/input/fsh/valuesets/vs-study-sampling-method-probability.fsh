ValueSet: NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI_Local
Id: nfdi4health-vs-mds-study-sampling-prob-method-nci-local
Title: "NFDI4Health VS MDS Study Sampling Probability Method [NCI, Local]"
Description: "Value set defining codes to specify types of probability sampling methods."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-prob-method-nci-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $NCI#C53200 "Systematic Sampling"
* $NCI#C71516 "Stratified Sampling"
* $NCI#C71498 "Proportional Stratified Sampling"
* $NCI#C71497 "Disproportional Stratified Sampling"
* $NCI#C71515 "Multi-Stage Sampling"
* $NCI#C53196 "Simple Random Sampling"
* $Remaining#128 "Cluster - Stratified random"
* $Remaining#127 "Cluster - Simple random"
* $Remaining#126 "Cluster"