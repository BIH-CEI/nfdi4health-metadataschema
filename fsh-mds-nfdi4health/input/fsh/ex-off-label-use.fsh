Alias: $nfdi4health-vs-mds-yes-no-not-applicable-snomedct = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-not-applicable-snomedct

Extension: NFDI4Health_EX_MDS_Off_Label_Use
Id: nfdi4health-ex-mds-off-label-use
Title: "NFDI4Health EX MDS Off Label Use"
Description: "Extension informing the unapproved (off-label) use of a drug product in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-off-label-use"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Off-label use of a drug product"
* . ^definition = "Unapproved (off-label) use of a drug product."
* . ^comment = "Select 'Yes' or 'No' only for drug studies and 'Not applicableÄ' for all other studies."
* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-yes-no-not-applicable-snomedct (required)
* value[x] ^binding.description = "Value set used to respond to questions that can be answered Yes, No, or Not Applicable."

Mapping: NFDI4Health Off Label Use to FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Off_Label_Use
* -> "1.17.37.4 Resource.studyDesign.interventional.offLabelUse"