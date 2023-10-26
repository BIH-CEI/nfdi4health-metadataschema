ValueSet: NFDI4Health_VS_MDS_Study_Primary_Design_Local
Id: nfdi4health-vs-mds-study-primary-design-local
Title: "NFDI4Health VS MDS Study Primary Design [Local]"
Description: "Value set defining codes for primary designs of studies in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-primary-design-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $Remaining#131 "Non-interventional"
* $Remaining#130 "Interventional"

Instance: ConceptMap-Study-Primary-Design-NFDI4Health-to-UMLS
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/Study-Rrimary-Design-NFDI4Health-to-UMLS"
* name = "ConceptMap-VS-MDS-NFDI4Health-UMLS-Mapping"
* title = "ConceptMap - Study primary design codes from NFDI4Health to UMLS"
* status = #active
* experimental = false
* date = "2023-10-26"
* publisher = "NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-primary-design-local"
* group[0].target = "http://terminology.hl7.org/CodeSystem/umls"
* group[=].element[0].code = #131
* group[=].element[=].display = "Non-interventional"
* group[=].element[=].target.code = #C4684718
* group[=].element[=].target.display = "Non-Interventional Study (Research Activity)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #130
* group[=].element[=].display = "Interventional"
* group[=].element[=].target.code = #C3274035
* group[=].element[=].target.display = "Interventional Study (Research Study)"
* group[=].element[=].target.equivalence = #equivalent