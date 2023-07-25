Extension: NFDI4Health_EX_MDS_Study_Ethics_Committee_Approval
Id: nfdi4health-ex-mds-study-ethics-committee-approval
Title: "NFDI4Health EX MDS Study Ethics Committee Approval"
Description: "Extension informing about the status of the study approval from the (leading) ethics committee"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-ethics-committee-approval"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Status of the ethics committee approval"
* . ^definition = "Status of the study approval from the (leading) ethics committee"
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-ethics-committee-approval" (exactly)
* value[x] 1..
* value[x] only Coding
* valueCoding from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_UMLS_Local (required)
* valueCoding ^binding.description = "Value set defining codes to specify the status of the study ethics committee approval."
* valueCoding.code 1..
* valueCoding.system 1..

Mapping: NFDI4Health-Study-Ethics-Committee-Approval-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Ethics_Committee_Approval
* -> "1.17.6 Resource.studyDesign.ethicsCommiteeApproval"