Extension: NFDI4Health_EX_MDS_Library_Population
Id: nfdi4health-ex-mds-library-population
Title: "NFDI4Health EX MDS Library Population"
Description: "Group of items providing information about the Population of a Registry"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-library-population"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Library"
* . ^short = "Population of the [RESOURCE]"
* . ^definition = "Group of items providing information about the population of the [RESOURCE]."
* extension contains
    NFDI4Health_EX_MDS_Study_Population_Description named populationDescription 0..1 and
    NFDI4Health_EX_MDS_Study_Population_Location named populationLocation 1..1 and
    obtainedSampleSize 0..1
* extension[obtainedSampleSize] ^short = "Obtained sample size"
* extension[obtainedSampleSize] ^definition = "Obtained number of observational units for the whole [RESOURCE] (e.g. obtained number of [RESOURCE] participants at all sites of the [RESOURCE])."
* extension[obtainedSampleSize] ^comment = "The value is only available after the end of recruitment"
* extension[obtainedSampleSize].value[x] only Quantity


Mapping: NFDI4Health-Library-Population-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Library_Population
* -> "Design.population"
* extension[obtainedSampleSize]  -> "Design.population.obtainedSampleSize"

