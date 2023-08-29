Extension: NFDI4Health_EX_MDS_Use_Rights_Confirmations
Id: nfdi4health-ex-mds-use-rights-confirmations
Title: "NFDI4Health EX MDS Use Rights Confirmations"
Description: "Extension providing information about licensing, if a Creative Commons liesense is selected."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-use-rights-confirmations"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.copyright"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* . 0..1
* . ^short = "Important information about licensing, if a Creative Commons liesense is selected."
* . ^definition = "Group of items applicable if a Creative Commons liesense is selected."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    confirmationAuthority 1..1 and
    confirmationTerms 1..1 and
    confirmationIrrevocability 1..1 and
    supportByLicensing 1..1
* extension[confirmationAuthority] ^short = "Do you confirm that the authors have authority to license the [RESOURCE]?"
* extension[confirmationAuthority] ^definition = "Confirmation that the authors have authority to license the resource."
* extension[confirmationAuthority].value[x] only boolean
* extension[confirmationTerms] ^short = "Do you confirm that the authors have read and understood the terms of the chosen license?"
* extension[confirmationTerms] ^definition = "Confirmation that the authors have read and understand the terms of the chosen license."
* extension[confirmationTerms].value[x] only boolean
* extension[confirmationIrrevocability] ^short = "Do you confirm that the authors understand that Creative Commons (CC) licensing is irrevocable?"
* extension[confirmationIrrevocability] ^definition = "Confirmation that the authors understand that Creative Commons (CC) licensing is not revocable."
* extension[confirmationIrrevocability] ^comment = "Additional information: The resource can be licensed using a CC-license only if it is free of the third-party rights."
* extension[confirmationIrrevocability].value[x] only boolean
* extension[supportByLicensing] ^short = "Do you confirm that the authors allow NFDI4Health to license the document?"
* extension[supportByLicensing].value[x] only boolean

Mapping: NFDI4Health-Use-Rights-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Use_Rights_Confirmations
* -> "1.10.3 Resource.nonStudyDetails.useRights"
* extension[confirmationAuthority] -> "1.10.3.2.1 Resource.nonStudyDetails.useRights.confirmations.authority"
* extension[confirmationTerms] -> "1.10.3.2.2 Resource.nonStudyDetails.useRights.confirmations.terms"
* extension[confirmationIrrevocability] -> "1.10.3.2.3 Resource.nonStudyDetails.useRights.confirmations.irrevocability"
* extension[supportByLicensing] -> "1.10.3.2.4 Resource.nonStudyDetails.useRights.confirmations.supportByLicencing"