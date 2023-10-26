ValueSet: NFDI4Health_VS_MDS_Study_Allocation_Local
Id: nfdi4health-vs-mds-study-allocation-local
Title: "NFDI4Health VS MDS Study Allocation [Local]"
Description: "Value set defining codes to specify the subject allocation in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-allocation-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $Remaining#157 "Nonrandomized"
* $Remaining#158 "Not applicable (for single-arm trials)"
* $Remaining#159 "Randomized"

Instance: ConceptMap-Study-Allocation-NFDI4Health-to-UMLS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/Study-Allocation-NFDI4Health-to-UMLS"
* name = "ConceptMap-VS-MDS-Study-Allocation-NFDI4Health-UMLS-Mapping"
* title = "ConceptMap - Study allocation codes from NFDI4Health to UMLS"
* status = #active
* experimental = false
* date = "2023-10-26"
* publisher = "NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-allocation-local"
* group[0].target = "http://terminology.hl7.org/CodeSystem/umls"
* group[=].element[0].code = #157
* group[=].element[=].display = "Nonrandomized"
* group[=].element[=].target.code = #C0034656
* group[=].element[=].target.display = "Randomization (Health Care Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #158
* group[=].element[=].display = "Not applicable (for single-arm trials)"
* group[=].element[=].target.code = #C93043
* group[=].element[=].target.display = "Nonrandomized Clinical Trial (Research Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #159
* group[=].element[=].display = "Randomized"
* group[=].element[=].target.code = #C48660
* group[=].element[=].target.display = "Not Applicable (Qualitative Concept)"
* group[=].element[=].target.equivalence = #equivalent