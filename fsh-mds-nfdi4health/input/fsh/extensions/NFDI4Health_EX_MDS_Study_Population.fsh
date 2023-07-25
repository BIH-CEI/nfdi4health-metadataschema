Extension: NFDI4Health_EX_MDS_Study_Population
Id: nfdi4health-ex-mds-study-population
Title: "NFDI4Health EX MDS Study Population"
Description: "Extension providing a description of the study population."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-population"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Description of study population"
* . ^definition = "Additional descriptive information providing more details about study population."
* . ^comment = "Short input help: Any information important for the given study population can be specified here."
* value[x] 1..1
* value[x] only string

Mapping: NFDI4Health-Study-Population-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Population
* -> "1.17.24 Resource.studyDesign.population"