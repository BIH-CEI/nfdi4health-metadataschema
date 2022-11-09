ValueSet: NFDI4Health_VS_MDS_Yes_No_Not_Applicable_SNOMEDCT
Id: nfdi4health-vs-mds-yes-no-not-applicable-snomedct
Title: "NFDI4Health VS MDS Yes, No, Not Applicable [SNOMED CT]"
Description: "Value set used to respond to questions that can be answered Yes, No, or Not Applicable"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-not-applicable-snomedct"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $SCT#373066001 "Yes (qualifier value)"
* $SCT#373067005 "No (qualifier value)"
* $SCT#385432009 "Not applicable (qualifier value)"