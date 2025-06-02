Extension: NFDI4Health_EX_MDS_Study_Population_Location
Id: nfdi4health-ex-mds-study-population-location
Title: "NFDI4Health EX MDS Study Population Location"
Description: "Extension providing info of the study population Location."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-population-location"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[+].type = #element
* ^context[=].expression = "Group"
* ^context[+].type = #element
* ^context[=].expression = "Library.extension"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    coverage 0..1 and
    countries 1..* and
    region 0..1    
* extension[coverage] ^short = "Coverage"
* extension[coverage] ^definition = "Specification of the recruitment area of the [RESOURCE]."
* extension[coverage] ^comment = "Short input help: Select one value from the list."
* extension[coverage].value[x] only Coding
* extension[coverage].valueCoding from NFDI4Health_VS_MDS_Population_Coverage_NCI (required)
* extension[countries] ^short = "Countries"
* extension[countries] ^definition = "Country or countries where the [RESOURCE] takes place."
* extension[countries] ^comment = "Short input help: Select all that apply."
* extension[countries].value[x] only Coding
* extension[countries].valueCoding from NFDI4Health_VS_MDS_Countries_ISO (required)
* extension[region] ^short = "Regions and/or cities"
* extension[region] ^definition = "If applicable, regions and/or cities within a country where the [RESOURCE] takes place."
* extension[region].value[x] only string


Mapping: NFDI4Health-Study-Population-Location-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Population_Location
* extension[coverage] -> "Design.population.coverage"
* extension[countries] -> "Design.population.countries"
* extension[region] -> "Design.population.region"
