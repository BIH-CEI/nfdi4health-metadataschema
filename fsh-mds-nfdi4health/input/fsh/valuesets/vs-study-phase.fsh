ValueSet: NFDI4Health_VS_MDS_Study_Phase_NCI
Id: nfdi4health-vs-mds-study-phase-nci
Title: "NFDI4Health VS MDS Study Phase [NCI]"
Description: "Value set defining codes to specify the phase of a study in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-phase-nci"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de" 

* $NCI#C54721 "Phase 0 Trial"
* $NCI#C15600 "Phase I Trial"
* $NCI#C15693 "Phase I/II Trial"
* $NCI#C15601 "Phase II Trial"
* $NCI#C49686 "Phase IIa Trial"
* $NCI#C49688 "Phase II b Trial"
* $NCI#C15694 "Phase II/III Trial"
* $NCI#C15602 "Phase III Trial"
* $NCI#C49687 "Phase IIIa Trial"
* $NCI#C49689 "Phase IIIb Trial"
* $NCI#C15603 "Phase IV Trial"
* $NCI#C17649 "Other"
* $NCI#C48660 "Not Applicable"

// Code System in FHIR: http://terminology.hl7.org/CodeSystem/research-study-phase covers not all values