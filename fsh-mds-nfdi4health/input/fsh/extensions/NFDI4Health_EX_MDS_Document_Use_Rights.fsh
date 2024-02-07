Extension: NFDI4Health_EX_MDS_Document_Use_Rights
Id: nfdi4health-ex-mds-document-use-rights
Title: "NFDI4Health EX MDS Document Use Rights"
Description: "Extension providing information about the rights to (re-)use the [RESOURCE]."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-document-use-rights"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "DocumentReference"
* . 0..1
* . ^short = "(Re-)use rights"
* . ^definition = "Group of items providing information about the rights to (re-)use the [RESOURCE]."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Copyright_Label_And_Link named copyrightLabelAndLink 1..1 and
    NFDI4Health_EX_MDS_Use_Rights_Confirmations named useRightsConfirmations 0..1 and
    useRightsDescription 0..1
* extension[useRightsDescription] ^short = "Additional information about use rights"
* extension[useRightsDescription] ^definition = "Any additional descriptive information explaining terms and conditions to (re-)use the [RESOURCE]."
* extension[useRightsDescription] ^comment = "Short Input Help: If 'Other' is selected in the field 'License', the preferred license or terms and conditions for (re-)use should be specified here."
* extension[useRightsDescription].value[x] only string

Mapping: NFDI4Health-Document-Use-Rights-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Document_Use_Rights
* -> "1.9.3 Resource.nonStudyDetails.useRights"
* extension[copyrightLabelAndLink] -> "Resource.nonStudyDetails.useRights.label"
* extension[copyrightLabelAndLink] -> "Resource.nonStudyDetails.useRights.link"
* extension[useRightsConfirmations] -> "Resource.nonStudyDetails.useRights.confirmations"
* extension[useRightsDescription] -> "Resource.nonStudyDetails.useRights.description"