Extension: NFDI4Health_EX_MDS_Copyright_Label
Id: nfdi4health-ex-mds-copyright-label
Title: "NFDI4Health EX MDS Copyright Label"
Description: "Extension providing information about the license applying to the resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-copyright-label"
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
* . ^short = "License"
* . ^definition = "License defining the rights to (re-)use the resource."
* . ^comment = "Short input help: Select one value from the list. If 'Other' is selected, an explanation of the (re-)use terms and conditions can be provided in the property “Additional information about use rights”."
* value[x] 1..
* value[x] only Coding
* valueCoding from $nfdi4health-vs-mds-use-rights-label-spdx-umls-local (required)

Mapping: NFDI4Health-Copyright-Label-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Copyright_Label
* -> "1.10.3.1 Resource.nonStudyDetails.useRights.label"