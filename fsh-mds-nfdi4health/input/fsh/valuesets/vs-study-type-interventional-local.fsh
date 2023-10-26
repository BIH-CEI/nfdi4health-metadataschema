ValueSet: NFDI4Health_VS_MDS_Study_Type_Interventional_Local
Id: nfdi4health-vs-mds-study-type-interventional-local
Title: "NFDI4Health VS MDS Study Type Interventional [Local]"
Description: "Value set defining codes to specify the type of an interventional study in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-type-interventional-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"


* $Remaining#133 "Single group"
* $Remaining#134 "Parallel"
* $Remaining#135 "Crossover"
* $Remaining#136 "Factorial"
* $Remaining#137 "Sequential"
* $Remaining#138 "Other (interventional)"
* $Remaining#139 "Unknown (interventional)"

Instance: ConceptMap-study-type-interventional-NFDI4Health-to-UMLS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/Study-Type-Interventional-NFDI4Health-to-UMLS"
* name = "ConceptMap-VS-MDS-NFDI4Health-UMLS-Mapping"
* title = "ConceptMap - Study Type Interventional from NFDI4Health to UMLS"
* status = #active
* experimental = false
* date = "2023-10-26"
* publisher = "NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-primary-design-local"
* group[0].target = "http://terminology.hl7.org/CodeSystem/umls"
* group[=].element[0].code = #133
* group[=].element[=].display = "Single group"
* group[=].element[=].target.code = #C2826346
* group[=].element[=].target.display = "Single Group Study (Research Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #134
* group[=].element[=].display = "Parallel"
* group[=].element[=].target.code = #C2826345
* group[=].element[=].target.display = "Parallel Study (Research Study)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #135
* group[=].element[=].display = "Crossover"
* group[=].element[=].target.code = #C0150097
* group[=].element[=].target.display = "Cross-Over Studies (Research Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #136
* group[=].element[=].display = "Factorial"
* group[=].element[=].target.code = #C2826344
* group[=].element[=].target.display = "Factorial Study (Research Study)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #137
* group[=].element[=].display = "Sequential"
* group[=].element[=].target.code = #C1705294
* group[=].element[=].target.display = "Sequential (Qualitative Concept)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #138
* group[=].element[=].display = "Other (interventional)"
* group[=].element[=].target.code = #C0205394
* group[=].element[=].target.display = "Other (Qualitative Concept)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #139
* group[=].element[=].display = "Unknown (interventional)"
* group[=].element[=].target.code = #C0439673
* group[=].element[=].target.display = "Unknown (Qualitative Concept)"
* group[=].element[=].target.equivalence = #equivalent
