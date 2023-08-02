ValueSet: NFDI4Health_VS_MDS_Time_Units_UCUM_UMLS
Id: nfdi4health-vs-mds-time-units-ucum-umls
Title: "NFDI4Health VS MDS Provenance Time Units [UCUM, UMLS]"
Description: "Value set defining codes for time units from UCUM and UMLS."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum-umls"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $UCUM#a "year"
* $UCUM#mo "month"
* $UCUM#we "week"
* $UCUM#d "day"
* $UCUM#h "hour"
* $UCUM#min "minute"
* $UMLS#C1135241 "Weeks pregnant (Finding)"

Instance: ConceptMap-UCUM-UMLS-Time-Units-to-NFDI4Health
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/ConceptMap/UCUM-UMLS-Time-Units-to-NFDI4Health"
* name = "ConceptMap-VS-MDS-Time-Units-UCUM-UMLS-NFDI4Health-Mapping"
* title = "ConceptMap - Value Set Time Units from UCUM and UMLS to NFDI4Health"
* status = #active
* experimental = false
* date = "2023-07-28"
* publisher = "NFDI4Health"
* description = "Mapping of Value Set Time Units from UCUM and UMLS to NFDI4Health"
* sourceCanonical = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum-umls"
* group[0].source = "http://unitsofmeasure.org"
* group[=].element[0].code = #a
* group[=].element[=].display = "Year"
* group[=].element[=].target.display = "Years"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #mo
* group[=].element[=].display = "month"
* group[=].element[=].target.display = "Months"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #we
* group[=].element[=].display = "week"
* group[=].element[=].target.display = "Weeks"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #d
* group[=].element[=].display = "day"
* group[=].element[=].target.display = "Days"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #h
* group[=].element[=].display = "hour"
* group[=].element[=].target.display = "Hours"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #min
* group[=].element[=].display = "minute"
* group[=].element[=].target.display = "Minutes"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://terminology.hl7.org/CodeSystem/umls"
* group[=].element[0].code = #C1135241
* group[=].element[=].display = "Weeks pregnant (Finding)"
* group[=].element[=].target.display = "Weeks of gestation"
* group[=].element[=].target.equivalence = #equivalent
