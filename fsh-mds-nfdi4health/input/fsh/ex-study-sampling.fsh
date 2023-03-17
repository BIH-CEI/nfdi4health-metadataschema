Alias: $nfdi4health-vs-mds-study-sampling-method-nci-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-nci-local
Alias: $nfdi4health-vs-mds-study-sampling-prob-method-nci = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-prob-method-nci
Alias: $nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local

Extension: NFDI4Health_EX_MDS_Study_Sampling
Id: nfdi4health-ex-mds-study-sampling
Title: "NFDI4Health EX MDS Study Sampling"
Description: "Extension informing about the applied sampling method in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-sampling"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Sampling method"
* . ^definition = "Group of items providing information about the applied sampling method."
* . ^comment = "Select one value from the list."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    method 1..1 and
    methodProbability 0..1 and
    methodNonProbability 0..1
* extension[method] ^short = "Applied sampling method"
* extension[method] ^definition = "Type of the sampling method applied for the selection of study participants."
* extension[method] ^comment = "Select one value from the list."
* extension[method].value[x] 1..1
* extension[method].value[x] only Coding
* extension[method].value[x].code 1..1
* extension[method].value[x].system 1..1
* extension[method].value[x] from $nfdi4health-vs-mds-study-sampling-method-nci-local (required)
* extension[method].value[x] ^binding.description = "Value set defining codes to specify types of sampling methods."
* extension[methodProbability] ^short = "Specific type of probability sampling"
* extension[methodProbability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* extension[methodProbability] ^comment = "If known, select one value from the list."
* extension[methodProbability].value[x] 1..1
* extension[methodProbability].value[x] only Coding
* extension[methodProbability].value[x].code 1..1
* extension[methodProbability].value[x].system 1..1
* extension[methodProbability].value[x] from $nfdi4health-vs-mds-study-sampling-prob-method-nci (required)
* extension[methodProbability].value[x] ^binding.description = "Value set defining codes to specify types of probability sampling methods."
* extension[methodNonProbability] ^short = "Specific type of non-probability sampling"
* extension[methodNonProbability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* extension[methodNonProbability] ^comment = "If known, select one value from the list."
* extension[methodNonProbability].value[x] 1..1
* extension[methodNonProbability].value[x] only Coding
* extension[methodNonProbability].value[x].code 1..1
* extension[methodNonProbability].value[x].system 1..1
* extension[methodNonProbability].value[x] from $nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local (required)
* extension[methodNonProbability].value[x] ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."

Mapping: NFDI4Health-Study-Sampling-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Sampling
* -> "1.17.20 Resource.studyDesign.sampling"
* extension[method] -> "1.17.20.1 Resource.studyDesign.sampling.method "
* extension[methodProbability] -> "1.17.20.2 Resource.studyDesign.sampling.probabilityMethod"
* extension[methodNonProbability] -> "1.17.20.3 Resource.studyDesign.sampling.nonProbabilityMethod"