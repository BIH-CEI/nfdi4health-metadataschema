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
* . ^short = "Licensing confirmations"
* . ^definition = "Group of items applicable only if a Creative Commons license is selected."
* . ^comment = "In order to successfully publish the [RESOURCE] under the respective license, all four questions ought to be confirmed."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    confirmationAuthority 1..1 and
    confirmationTerms 1..1 and
    confirmationIrrevocability 1..1 and
    supportByLicensing 1..1
* extension[confirmationAuthority] ^short = "Do you confirm that the authors of the [RESOURCE] have authority to license it?"
* extension[confirmationAuthority] ^definition = "Confirmation that the authors of the [RESOURCE] have authority to license it."
* extension[confirmationAuthority].value[x] only boolean
* extension[confirmationTerms] ^short = "Do you confirm that the authors of the [RESOURCE] have read and understood the terms of the chosen license?"
* extension[confirmationTerms] ^definition = "Confirmation that the authors of the [RESOURCE] have read and understood the terms of the chosen license."
* extension[confirmationTerms].value[x] only boolean
* extension[confirmationIrrevocability] ^short = "Do you confirm that the authors of the [RESOURCE] understand that Creative Commons (CC) licensing is irrevocable?"
* extension[confirmationIrrevocability] ^definition = "Confirmation that the authors of the [RESOURCE] understand that Creative Commons (CC) licensing is not revocable.."
* extension[confirmationIrrevocability] ^comment = "Additional information: The [RESOURCE] can be licensed using a CC-license only if it is free of the third-party rights."
* extension[confirmationIrrevocability].value[x] only boolean
* extension[supportByLicensing] ^short = "Do you confirm that the authors of the [RESOURCE] allow NFDI4Health to license the document?"
* extension[supportByLicensing] ^definition = "Confirmation that NFDI4Health is allowed to license the document, i.e. to mark the [RESOURCE] with the license information."
* extension[supportByLicensing].value[x] only boolean

Mapping: NFDI4Health-Use-Rights-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Use_Rights_Confirmations
* -> "Resource.nonStudyDetails.useRights.confirmations"
* extension[confirmationAuthority] -> "Resource.nonStudyDetails.useRights.confirmations.authority"
* extension[confirmationTerms] -> "Resource.nonStudyDetails.useRights.confirmations.terms"
* extension[confirmationIrrevocability] -> "Resource.nonStudyDetails.useRights.confirmations.irrevocability"
* extension[supportByLicensing] -> "Resource.nonStudyDetails.useRights.confirmations.supportByLicencing"