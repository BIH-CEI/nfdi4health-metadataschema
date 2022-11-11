ValueSet: NFDI4Health_VS_MDS_Study_Sampling_Method_Probability_
Id: nfdi4health-vs-mds-study-sampling-method-probability-
Title: "NFDI4Health VS MDS Study Sampling Method Probability [ ]"
Description: "Value set defining codes to specify types of probability sampling methods."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-probability-"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

Simple random
Systematic random
Stratified
Stratified: Proportional
Stratified: Disproportional
Cluster
Cluster: Simple random
Cluster: Stratified random
Multistage

* $NCI#C53196 "Simple Random Sampling"
* $NCI#C53200 "Systematic Sampling"
* $NCI#C71516 "Stratified Sampling"
* $NCI#C71498 "Proportional Stratified Sampling"
* $NCI#C71497 "Disproportional Stratified Sampling"

* $NCI#C71493 "Cluster Random Sampling (Quantitative Concept)"

* $NCI#C71499 "One-Stage Cluster Random Sampling"

* $NCI#C71496 "Stratified Random Sampling"
* $NCI#C71515 "Multi-Stage Sampling"


ValueSet: Study_sampling_UMLS
Id: 1.2.276.0.76.11.1056--20220705203831
Title: "study_sampling_UMLS"
Description: "study_sampling_UMLS"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod"
* ^extension.valuePeriod.start = "2022-07-05T20:38:31+01:00"
* ^identifier.use = #official
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.2.276.0.76.11.1056"
* ^version = "2022-07-05T20:38:31"
* ^status = #draft
* ^experimental = false
* ^publisher = "BIH @ Charité"
* ^immutable = false
* urn:oid:2.16.840.1.113883.6.86#C0205197 "Complete (Qualitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C0033204 "Probability (Qualitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C0681878 "Simple Random Sampling (Quantitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C1710275 "Systematic Sampling (Quantitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C0681883 "Stratified Sampling (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C2347696 "Proportional Stratified Sampling (Quantitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C2348304 "Disproportional Stratified Sampling (Quantitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C2347812 "Cluster Random Sampling (Quantitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C2347394 "One-Stage Cluster Random Sampling (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C2347298 "Multi-Stage Cluster Random Sampling (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C0814873 "multistage sampling design (Research Activity) (C0814873)"
* urn:oid:2.16.840.1.113883.6.86#C4288587 "Non-Probability Sampling Method (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C0150095 "Convenience Sampling (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C0681880 "Matched Sampling (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C2347740 "Quota Sampling (Research Activity)"
* urn:oid:2.16.840.1.113883.6.86#C2347283 "Mixed Purposeful Sampling (Quantitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C0205394 "Other (Qualitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C0439673 "Unknown (Qualitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C1272460 "Not Applicable (Qualitative Concept)"
* urn:oid:2.16.840.1.113883.6.86#C1556044 "Other - No Information (Idea or Concept)"