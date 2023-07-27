Extension: NFDI4Health_EX_MDS_ResourceID
Id: nfdi4health-ex-mds-resourceID
Title: "NFDI4Health EX MDS ResourceID"
Description: "Extension providing information about identifiers (IDs) of the resources related to the given resource, e.g. DOIs of publications, datasets, study documents or links to web pages."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-resourceID"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "Questionnaire"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains resourceID 0..1