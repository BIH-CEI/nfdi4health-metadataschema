Extension: NFDI4Health_EX_MDS_Library_Ethics_Approval
Id: nfdi4health-ex-mds-library-ethics-approval
Title: "NFDI4Health EX MDS Library Ethics Committee Approval"
Description: "Extension informing about ethics committee approval of a regisrtry."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-library-ethics-approval"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Library"
* . 0..1
* . ^short = "Status of the ethics committee approval"
* . ^definition = "Status of the study approval from the (leading) ethics committee"
* value[x] 1..1
* value[x] only Coding
* valueCoding from NFDI4Health_VS_MDS_Study_Ethics_Committee_Approval_NCI_Local (required)
* valueCoding ^binding.description = "Value set defining codes to specify the status of the study ethics committee approval."


Mapping: NFDI4Health-Library-Ethics-Approval-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Library_Ethics_Approval
* . -> "Design.administrativeInformation.ethicsCommitteeApproval"
