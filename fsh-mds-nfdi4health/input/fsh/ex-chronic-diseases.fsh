Extension: NFDI4Health_EX_MDS_Chronic_Diseases
Id: nfdi4health-ex-mds-chronic-diseases
Title: "NFDI4Health EX MDS Chronic Diseases"
Description: "Extension asking if information about chronic diseases was collected"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* value[x] 1..
* value[x] only boolean

// WARNING: The following Mapping may be incomplete since the original NFDI4Health_EX_MDS_Chronic_Diseases
// StructureDefinition was missing the mapping entry for NFDI4Health.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: NFDI4Health-Chronic-Diseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Chronic_Diseases
* -> "1.16 Resource.chronicDiseases"