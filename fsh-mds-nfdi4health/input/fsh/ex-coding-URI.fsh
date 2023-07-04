Extension: NFDI4Health_EX_MDS_URI
Id: nfdi4health-ex-mds-uri
Title: "NFDI4Health EX MDS URI"
Description: "Extension defining an URI"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Coding"
* value[x] 1..
* value[x] only uri or url