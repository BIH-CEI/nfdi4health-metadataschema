Alias: $nfdi4health-vs-mds-study-sampling-method-nci-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-nci-local

Extension: NFDI4Health_EX_MDS_Study_Sampling_Method
Id: nfdi4health-ex-mds-study-sampling-method
Title: "NFDI4Health EX MDS Study Sampling Method"
Description: "Extension informing about the applied sampling method in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-sampling-method"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Applied sampling method"
* . ^definition = "Type of the sampling method applied for the selection of study participants."
* . ^comment = "Short Input Help: Select one value from the list."
* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-study-sampling-method-nci-local (required)
* value[x] ^binding.description = "Value set defining codes to specify types of sampling methods."

Mapping: NFDI4Health-Study-Sampling-Method-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Sampling_Method
* -> "1.17.20.1 Resource.studyDesign.sampling.method"