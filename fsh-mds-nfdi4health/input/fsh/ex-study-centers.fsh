Alias: $nfdi4health-vs-mds-study-centers-snomedct-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-centers-snomedct-local

Extension: NFDI4Health_EX_MDS_Study_Centers
Id: nfdi4health-ex-mds-study-centers
Title: "NFDI4Health EX MDS Study Centers"
Description: "Extension informing about the number of study centers."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-centers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Study centers"
* . ^definition = "Group of items providing information about the number of study centers."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    centers 0..1 and
    centers-number 0..1 
* extension[centers] ^short = "Is it a mono- or multicentric study?"
* extension[centers] ^definition = "Specification whether a study is conducted at one study center or at more than one study center."
* extension[centers].value[x] 1..1
* extension[centers].value[x] only Coding
* extension[centers].value[x].code 1..1
* extension[centers].value[x].system 1..1
* extension[centers].value[x] from $nfdi4health-vs-mds-study-centers-snomedct-local (required)
* extension[centers].value[x] ^binding.description = "Value set defining codes to specify the number of study center(s) in a ResearchStudy resource."
* extension[centers-number] ^short = "Number of study centers"
* extension[centers-number] ^definition = "Number of centers involved in the study."
* extension[centers-number].value[x] 1..1
* extension[centers-number].value[x] only integer

Mapping: NFDI4Health Study Centers to FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Centers
* extension[centers] -> "1.17.17 Resource.studyDesign.centers"
* extension[centers-number] -> "1.17.18 Resource.studyDesign.centersNumber"
