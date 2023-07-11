Extension: NFDI4Health_EX_MDS_Webpage
Id: nfdi4health-ex-mds-webpage
Title: "NFDI4Health EX MDS Webpage"
Description: "Extension providing information about the webpage of a resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-webpage"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . ^short = "Web page of the [RESOURCE]"
* . ^definition = "If existing, a link to the web page directly relevant to the resource."
* . ^comment = "Additional information: Other web pages related to the resource can additionally be entered in the section \"Related resources\"."
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-webpage" (exactly)
* value[x] only url

Mapping: NFDI4Health-Webpage-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Webpage
* -> "1.9 Resource.webpage"