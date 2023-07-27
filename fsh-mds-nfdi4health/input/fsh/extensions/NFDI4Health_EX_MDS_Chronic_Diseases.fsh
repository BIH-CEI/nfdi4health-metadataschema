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
* . ^short = "Chronic diseases included?"
* . ^definition = "Indication whether chronic diseases were addressed by the resource."
* value[x] 1..
* value[x] only boolean

Mapping: NFDI4Health-Chronic-Diseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Chronic_Diseases
* -> "1.16 Resource.chronicDiseases"