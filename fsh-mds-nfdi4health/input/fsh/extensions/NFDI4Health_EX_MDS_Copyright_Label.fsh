Extension: NFDI4Health_EX_MDS_Copyright_Label_And_Link
Id: nfdi4health-ex-mds-copyright-label-and-link
Title: "NFDI4Health EX MDS Copyright Label And Link"
Description: "Extension providing information about the license applying to the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-copyright-label-and-link"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.copyright"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* . 1..1
* extension contains
    label 1..1 and
    link 0..1 
* extension[label].value[x] only Coding 
* extension[label].valueCoding from NFDI4Health_VS_MDS_Use_Rights_Label_SPDX_SNOMED_Local (required)
* extension[label] ^short = "License"
* extension[label] ^definition = "License defining the rights to (re-)use the [RESOURCE]."
* extension[label] ^comment = "Short input help: Select one value from the list. If 'Other' is selected, please provide an explanation of the (re-)use terms and conditions in the field 'Additional information about use rights'."
* extension[link] ^short = "URL of the license"
* extension[link] ^definition = "Link to a web page that contains detailed information about the selected license."
* extension[link].value[x] only url

Mapping: NFDI4Health-Copyright-Label-And-Link-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Copyright_Label_And_Link
* extension[label] -> "Resource.nonStudyDetails.useRights.label"
* extension[link] -> "Resource.nonStudyDetails.useRights.link"