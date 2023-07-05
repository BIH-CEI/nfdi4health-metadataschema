Alias: $nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local

Extension: NFDI4Health_EX_MDS_Study_Sampling_Method_Non_Probability
Id: nfdi4health-ex-mds-study-sampling-method-non-probability
Title: "NFDI4Health EX MDS Study Sampling Method Non Probability"
Description: "Extension informing about the type of applied non-probability sampling in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-sampling-method-non-probability"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Specific type of non-probability sampling"
* . ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* . ^comment = "Short Input Help: If known, select one value from the list."

* value[x] 1..1
* value[x] only Coding
* value[x].code 1..1
* value[x].system 1..1
* value[x] from $nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local (required)
* value[x] ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."

Mapping: NFDI4Health-Study-Sampling-Method-Non-Probability-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Sampling_Method_Non_Probability
* -> "1.17.20.3 Resource.studyDesign.sampling.nonProbabilityMethod"