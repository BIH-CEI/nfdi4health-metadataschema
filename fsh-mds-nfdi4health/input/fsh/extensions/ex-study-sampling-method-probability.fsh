Alias: $nfdi4health-vs-mds-study-sampling-prob-method-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-prob-method-nci

Extension: NFDI4Health_EX_MDS_Study_Sampling_Method_Probability
Id: nfdi4health-ex-mds-study-sampling-method-probabiity
Title: "NFDI4Health EX MDS Study Sampling Method Probability"
Description: "Extension informing about the type of applied probability sampling in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-sampling-method-probability"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Specific type of probability sampling"
* . ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* . ^comment = "Short Input Help: If known, select one value from the list."
value[x] 1..1
value[x] only Coding
value[x].code 1..1
value[x].system 1..1
value[x] from $nfdi4health-vs-mds-study-sampling-prob-method-nci (required)
value[x] ^binding.description = "Value set defining codes to specify types of probability sampling methods."

Mapping: NFDI4Health-Study-Sampling-Method-Probability-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Sampling_Method_Probability
* -> "1.17.20.2 Resource.studyDesign.sampling.probabilityMethod"