ValueSet: NFDI4Health_VS_MDS_Mortality_Data_NCI
Id: nfdi4health-vs-mds-mortality-data-nci
Title: "NFDI4Health VS MDS Mortality Data [NCI]"
Description: "Value set defining codes to specify if mortality data were collected in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-mortality-data-nci"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $NCI#C25717 "Vital Status"
* $NCI#C81239 "Cause of Death"
* $NCI#C49487 "No (Classification)"


Instance: ConceptMap-SNOMEDCT-Mortality-Data-to-NFDI4Health
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/NCI-Mortality-Data-to-NFDI4Health"
* name = "ConceptMap-VS-MDS-Mortality-Data-NCI-NFDI4Health-Mapping"
* title = "ConceptMap - Value Set for Mortality Data from NCI to NFDI4Health"
* status = #active
* experimental = false
* date = "2023-07-28"
* publisher = "NFDI4Health"
* description = "Mapping of Value Set Mortality Data from NCI to NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-mortality-data-nci"
* group[0].source = "http://ncimeta.nci.nih.gov"
* group[=].element[0].code = #C25717
* group[=].element[=].display = "Vital Status"
* group[=].element[=].target.display = "Yes, vital status only (cause of death missing) "
* group[=].element[=].target.equivalence = #relatedTo
* group[=].element[+].code = #C81239
* group[=].element[=].display = "Cause of Death"
* group[=].element[=].target.display = "Yes, with cause of death"
* group[=].element[=].target.equivalence = #relatedTo
* group[=].element[+].code = #C49487
* group[=].element[=].display = "No (Classification)"
* group[=].element[=].target.display = "No"
* group[=].element[=].target.equivalence = #equivalent