ValueSet: NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_Local
Id: nfdi4health-vs-mds-study-sampling-prob-method-local
Title: "NFDI4Health VS MDS Study Sampling Probability Method [Local]"
Description: "Value set defining codes to specify types of probability sampling methods."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-prob-method-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $Remaining#126 "Cluster"
* $Remaining#127 "Cluster - Simple random"
* $Remaining#128 "Cluster - Stratified random"
* $Remaining#167 "Simple random"
* $Remaining#168 "Systematic random"
* $Remaining#169 "Stratified"
* $Remaining#170 "Stratified - Proportional"
* $Remaining#171 "Stratified - Disproportional"
* $Remaining#172 "Multistage"

Instance: ConceptMap-Study-Sampling-Probability-Method-NFDI4Health-to-NCI
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/Study-Sampling-Probability-Method-NFDI4Health-to-NCI"
* name = "ConceptMap-VS-MDS-Study-Sampling-Probability-Method-NFDI4Health-NCI-Mapping"
* title = "ConceptMap - Study sampling probability method codes from NFDI4Health to NCI"
* status = #active
* experimental = false
* date = "2023-10-26"
* publisher = "NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-probability-method-local"
* group[0].target = "http://ncimeta.nci.nih.gov"
* group[=].element[0].code = #167
* group[=].element[=].display = "Simple random"
* group[=].element[=].target.code = ##C53196 
* group[=].element[=].target.display = "Simple Random Sampling (Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #168
* group[=].element[=].display = "Systematic random"
* group[=].element[=].target.code = #C53200 
* group[=].element[=].target.display = "Systematic Sampling (Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #169
* group[=].element[=].display = "Stratified"
* group[=].element[=].target.code = #C71516 
* group[=].element[=].target.display = "Stratified Sampling (Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #170
* group[=].element[=].display = "Stratified - Proportional"
* group[=].element[=].target.code = #C71498 
* group[=].element[=].target.display = "Proportional Stratified Sampling (Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #171
* group[=].element[=].display = "Stratified - Disproportional"
* group[=].element[=].target.code = #C71497 
* group[=].element[=].target.display = "Disproportional Stratified Sampling (Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #172
* group[=].element[=].display = "Multistage"
* group[=].element[=].target.code = #C71515 
* group[=].element[=].target.display = "Multi-Stage Sampling (Activity)"
* group[=].element[=].target.equivalence = #equivalent