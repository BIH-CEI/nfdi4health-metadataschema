Extension: NFDI4Health_EX_MDS_Document_Copyright
Id: nfdi4health-ex-mds-document-copyright
Title: "NFDI4Health EX MDS Document Copyright"
Description: "Extension providing information about the copyright of a document."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-document-copyright"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "DocumentReference"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Label named label 1..1 and
    NFDI4Health_EX_MDS_Use_Rights named useRightsConfirmations 1..*
* extension[label] ^short = "License"
* extension[label] ^definition = "License defining the rights to (re-)use the resource."