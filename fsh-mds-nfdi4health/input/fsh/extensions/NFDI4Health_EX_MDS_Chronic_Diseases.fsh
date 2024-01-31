Extension: NFDI4Health_EX_MDS_Chronic_Diseases
Id: nfdi4health-ex-mds-chronic-diseases
Title: "NFDI4Health EX MDS Chronic Diseases"
Description: "Extension asking if information about chronic diseases was collected"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-chronic-diseases"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Includes chronic diseases?"
* . ^definition = "Indication whether the [RESOURCE] addresses chronic diseases."
* . ^comment = "1..1, if Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0"
* value[x] 1..
* value[x] only boolean

Mapping: NFDI4Health-Chronic-Diseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Chronic_Diseases
* -> "Resource.chronicDiseases"