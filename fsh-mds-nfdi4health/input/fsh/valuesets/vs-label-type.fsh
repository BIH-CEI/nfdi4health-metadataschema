Alias: $HL7titleType = http://hl7.org/fhir/title-type

ValueSet: NFDI4Health_VS_MDS_Label_Type_HL7
Id: nfdi4health-vs-mds-label-type-hl7
Title: "NFDI4Health VS MDS Label Type [HL7]"
Description: "Value set used to express the reason and specific aspect for the variant title, such as language and specific language. Comment : Build based on HL7 Value Set specified in FHIR R5"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-label-type-hl7"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $HL7titleType#primary "Primary title"
* $HL7titleType#official "Official title"
* $HL7titleType#scientific "Scientific title"
* $HL7titleType#plain-language "Plain language title"
* $HL7titleType#subtitle "Subtitle"
* $HL7titleType#short-title "Short title"
* $HL7titleType#acronym "Acronym"
* $HL7titleType#earlier-title "Different text in an earlier version"
* $HL7titleType#language "Different language"
* $HL7titleType#autotranslated "Different language derived from autotranslation"
* $HL7titleType#human-use "Human use"
* $HL7titleType#machine-use "Machine use"
* $HL7titleType#duplicate-uid "Different text for the same object with a different identifier"