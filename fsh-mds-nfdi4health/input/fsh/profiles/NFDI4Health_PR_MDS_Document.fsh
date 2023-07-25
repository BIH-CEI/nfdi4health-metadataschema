Profile: NFDI4Health_PR_MDS_Document
Parent: DocumentReference
Id: nfdi4health-pr-mds-document
Title: "NFDI4Health PR MDS Document"
Description: "Resource covering metadata of a document."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-document"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    NFDI4Health_EX_MDS_Label named label 0..* and
    NFDI4Health_EX_MDS_Description_Non_English named descriptions_non_english 0..* and
    NFDI4Health_EX_MDS_Keywords2 named keywords 0..1 and
    NFDI4Health_EX_MDS_Associated_Party named associatedParty 1..1 and
    NFDI4Health_EX_MDS_Related named related 0..* and
    NFDI4Health_EX_MDS_Document_Copyright named copyright 0..1
* extension[label] ^min = 0
* extension[label] ^isModifier = false
* extension[descriptions_non_english] ^min = 0
* extension[descriptions_non_english] ^isModifier = false
* extension[keywords] ^isModifier = false
* extension[associatedParty] ^isModifier = false
* extension[related] ^isModifier = false
* extension[copyright] ^isModifier = false
* masterIdentifier 1..
* masterIdentifier ^short = "ID of the [RESOURCE]"
* masterIdentifier ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
* masterIdentifier.system 1..
* masterIdentifier.system = "NFDI4Health" (exactly)
* masterIdentifier.value 1..
* identifier ^short = "Alternative identifiers"
* identifier ^definition = "Group of items providing information about identifiers (IDs) assigned to the given resource by another registering systems, e.g. a register of clinical trials or a data repository."
* description 1..
* description ^short = "English description of the  [RESOURCE]"
* description ^definition = "A short plain text summary describing the resource in English."
* content.extension ^slicing.discriminator.type = #value
* content.extension ^slicing.discriminator.path = "url"
* content.extension ^slicing.rules = #open
* content.extension ^min = 0
* content.extension contains NFDI4Health_EX_MDS_Version named version 0..1
* content.extension[version] ^isModifier = false
* content.extension[version].value[x] 1..
* content.attachment.title 1..
* content.attachment.title ^short = "Title/name"
* content.attachment.title ^definition = "Scientific unabbreviated title or name of the resource."
* content.attachment.title.extension ^slicing.discriminator.type = #value
* content.attachment.title.extension ^slicing.discriminator.path = "url"
* content.attachment.title.extension ^slicing.rules = #open
* content.attachment.title.extension contains
    Translation named translation 0..1 and
    NFDI4Health_EX_MDS_Language named language 1..1
* content.attachment.title.extension[translation] ^isModifier = false
* content.attachment.title.extension[language] ^isModifier = false