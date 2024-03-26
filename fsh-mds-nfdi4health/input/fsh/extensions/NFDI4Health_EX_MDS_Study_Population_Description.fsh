Extension: NFDI4Health_EX_MDS_Study_Population_Description
Id: nfdi4health-ex-mds-study-population-description
Title: "NFDI4Health EX MDS Study Population Description"
Description: "Extension providing a description of the study population description."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-population-description"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Group"
* ^context.type = #element
* ^context.expression = "Library"
* . 0..1
* . ^short = "Population description"
* . ^definition = "Additional descriptive information providing more details about the population of the [RESOURCE]."
* . ^comment = "Short input help: Any information important for the given [RESOURCE] population can be specified here."
* value[x] 1..1
* value[x] only string

Mapping: NFDI4Health-Study-Population-Description-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Population_Description
* -> "Design.population.description"
