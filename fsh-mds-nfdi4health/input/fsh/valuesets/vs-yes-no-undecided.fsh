ValueSet: NFDI4Health_VS_MDS_Yes_No_Undecided_SNOMEDCT_NCI
Id: nfdi4health-vs-mds-yes-no-undecided-snomedct-nci
Title: "NFDI4Health VS MDS Yes, No, Undecided [SNOMED CT, NCI]"
Description: "Value set used to respond to questions that can be answered Yes, No, or Undecided"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-undecided-snomedct-nci"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $SCT#373066001 "Yes (qualifier value)"
* $SCT#373067005 "No (qualifier value)"
* $NCI#C150084 "Undecided (Intellectual Product)"

Instance: ConceptMap-SNOMEDCT-NCI-Yes-No-Undecided-to-NFDI4Health
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/SNOMEDCT-NCI-Yes-No-Undecided-to-NFDI4Health"
* name = "ConceptMap-VS-MDS-Yes-No-Undecided-SNOMEDCT-NCI-NFDI4Health-Mapping"
* title = "ConceptMap - Value Set Yes-No-Undecided from SNOMED CT and NCI to NFDI4Health"
* status = #active
* experimental = false
* date = "2023-07-28"
* publisher = "NFDI4Health"
* description = "Mapping of Value Set Yes-No-Undecided from SNOMED CT and NCI to NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-undecided-snomedct-nci"
* group[0].source = "http://snomed.info/sct"
* group[=].element[0].code = #373066001
* group[=].element[=].display = "Yes (qualifier value)"
* group[=].element[=].target.display = "Yes, there is a plan to make data available"
* group[=].element[=].target.equivalence = #specializes
* group[=].element[+].code = #373067005
* group[=].element[=].display = "No (qualifier value)"
* group[=].element[=].target.display = "No, there is no plan to make data available"
* group[=].element[=].target.equivalence = #specializes
* group[+].source = "http://ncimeta.nci.nih.gov"
* group[=].element[0].code = #C150084
* group[=].element[=].display = "Undecided (Intellectual Product)"
* group[=].element[=].target.display = "Undecided, it is not yet known if data will be made available"
* group[=].element[=].target.equivalence = #specializes