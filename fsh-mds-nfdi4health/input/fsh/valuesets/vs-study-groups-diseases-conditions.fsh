ValueSet: NFDI4Health_VS_MDS_Study_Groups_Of_Diseases_Generally_Conditions_ICD
Id: nfdi4health-vs-mds-study-diseases-generally-conditions-icd
Title: "NFDI4Health VS MDS Study Groups of Diseases Generally Conditions [ICD]"
Description: "Value set created by NFDI4Health defining codes for groups of diseases generally conditions."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-groups-of-diseases-generally-conditions-icd"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* include codes from system $ICD10 where concept descendent-of #II
* include codes from system $ICD10 where concept descendent-of #III
* include codes from system $ICD10 where concept descendent-of #IV
* include codes from system $ICD10 where concept descendent-of #XVII
* include codes from system $ICD10 where concept descendent-of #XVI
* include codes from system $ICD10 where concept descendent-of #XV
* include codes from system $ICD10 where concept descendent-of #XIII
* include codes from system $ICD10 where concept descendent-of #G47.2
* include codes from system $ICD10 where concept descendent-of #XIV
* include codes from system $ICD10 where concept descendent-of #XVIII
* include codes from system $ICD10 where concept descendent-of #XIX
* include codes from system $ICD10 where concept descendent-of #XX
* include codes from system $ICD10 where concept descendent-of #XXI
* include codes from system $ICD10 where concept descendent-of #XII
* include codes from system $ICD10 where concept descendent-of #XIII
* include codes from system $ICD10 where concept descendent-of #XI
* include codes from system $ICD10 where concept descendent-of #X
* include codes from system $ICD10 where concept descendent-of #IX
* include codes from system $ICD10 where concept descendent-of #VIII
* include codes from system $ICD10 where concept descendent-of #VII
* include codes from system $ICD10 where concept descendent-of #VI
* include codes from system $ICD10 where concept descendent-of #V
* include codes from system $ICD10 where concept descendent-of #I

