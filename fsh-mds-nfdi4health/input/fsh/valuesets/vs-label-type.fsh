ValueSet: NFDI4Health_VS_MDS_Label_Type_Local
Id: nfdi4health-vs-mds-label-type-local
Title: "NFDI4Health VS MDS Label Type [Local]"
Description: "Value set used to express the reason and specific aspect for the variant title, such as language and specific language. Comment : Build based on HL7 Value Set specified in FHIR R5"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-label-type-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $LabelType#01 "Primary title"
* $LabelType#02 "Official title"
* $LabelType#03 "Scientific title"
* $LabelType#04 "Plain language title"
* $LabelType#05 "Subtitle"
* $LabelType#06 "Short title"
* $LabelType#07 "Acronym"
* $LabelType#08 "Different text in an earlier version"
* $LabelType#09 "Different language"
* $LabelType#10 "Different language derived from autotranslation"
* $LabelType#11 "Human use"
* $LabelType#12 "Machine use"
* $LabelType#13 "Different text for the same object with a different identifier"