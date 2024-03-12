Profile: NFDI4Health_PR_MDS_Group_Actual
Parent: Group
Id: nfdi4health-pr-mds-group-actual
Title: "NFDI4Health PR MDS Group Actual"
Description: "Information about the actual study population."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-group-actual"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . 0..1
* extension contains
    NFDI4Health_EX_MDS_Study_Population_Description named populationDescription 0..1 and
    NFDI4Health_EX_MDS_Study_Population_Location named populationLocation 1..1
* actual = true (exactly)



Mapping: NFDI4Health-Group-Actual-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Group_Actual
* quantity -> "Design.population.obtainedSampleSize"
