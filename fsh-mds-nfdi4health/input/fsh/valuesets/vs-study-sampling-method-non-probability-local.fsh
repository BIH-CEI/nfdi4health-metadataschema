ValueSet: NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_Local
Id: nfdi4health-vs-mds-study-sampling-method-non-prob-local
Title: "NFDI4Health VS MDS Study Sampling Method Non Probability [local]"
Description: "Value set defining codes to specify types of non-probability sampling methods."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-non-prob-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $Remaining#173 "Quota"
* $Remaining#008 "Respondent-assisted"
* $Remaining#174 "Purposive"
* $Remaining#175 "Availability"

Instance: ConceptMap-Study-Sampling-Non-Probability-NFDI4Health-to-NCI
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/Study-Sampling-Method-Non-Probability-NFDI4Health-to-NCI"
* name = "ConceptMap-VS-MDS-Study-Sampling-Method-Non-Probability-NFDI4Health-NCI-Mapping"
* title = "ConceptMap - Study sampling method non probability codes from NFDI4Health to NCI"
* status = #active
* experimental = false
* date = "2023-10-26"
* publisher = "NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-non-probability-local"
* group[0].target = "http://ncimeta.nci.nih.gov"
* group[=].element[0].code = #173
* group[=].element[=].display = "Quota"
* group[=].element[=].target.code = #C71504 
* group[=].element[=].target.display = "Quota Sampling"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #174
* group[=].element[=].display = "Purposive"
* group[=].element[=].target.code = #C71505 
* group[=].element[=].target.display = "Matched Sampling"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #175
* group[=].element[=].display = "Availability"
* group[=].element[=].target.code = #C53204 
* group[=].element[=].target.display = "Convenience Sampling"
* group[=].element[=].target.equivalence = #equivalent
