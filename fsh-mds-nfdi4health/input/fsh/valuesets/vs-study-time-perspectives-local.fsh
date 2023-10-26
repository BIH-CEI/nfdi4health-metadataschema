ValueSet: NFDI4Health_VS_MDS_Study_Time_Perspectives_Local
Id: nfdi4health-vs-mds-study-time-perspectives-local
Title: "NFDI4Health VS MDS Study Time Perspectives [Local]"
Description: "Value set defining codes to specify the time perspective of a study in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-time-perspectives-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $Remaining#155 "Retrospective"
* $Remaining#156 "Prospective"
* $Remaining#162 "Cross-Sectional"
* $Remaining#163 "Other (timePerspective)"

Instance: ConceptMap-Study-Time-Perspectives-NFDI4Health-to-UMLS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/Study-Time-Perspectives-NFDI4Health-to-UMLS"
* name = "ConceptMap-VS-MDS-Study-Time-Perspectives-NFDI4Health-UMLS-Mapping"
* title = "ConceptMap - Study time perspectives codes from NFDI4Health to UMLS"
* status = #active
* experimental = false
* date = "2023-10-26"
* publisher = "NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-time-perspectives-local"
* group[0].target = "http://terminology.hl7.org/CodeSystem/umls"
* group[=].element[0].code = #155
* group[=].element[=].display = "Retrospective"
* group[=].element[=].target.code = #C0035363 
* group[=].element[=].target.display = "Retrospective Studies (Research Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #156
* group[=].element[=].display = "Prospective"
* group[=].element[=].target.code = #C0033522 
* group[=].element[=].target.display = "Prospective Studies (Research Activty)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #162
* group[=].element[=].display = "Cross-Sectional"
* group[=].element[=].target.code = #C0010362 
* group[=].element[=].target.display = "Cross-Sectional Studies (Research Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #163
* group[=].element[=].display = "Other (timePerspective)"
* group[=].element[=].target.code = #C0205394 
* group[=].element[=].target.display = "Other (Qualitative Concept)"
* group[=].element[=].target.equivalence = #equivalent