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
    sampling-method 1..1 and
    sampling-method-probability 0..1 and
    sampling-method-non-probability 0..1
* extension[sampling-method] ^short = "Applied sampling method"
* extension[sampling-method] ^definition = "Type of the sampling method applied for the selection of study participants."
* extension[sampling-method] ^comment = "Select one value from the list."
* extension[sampling-method].value[x] 1..1
* extension[sampling-method].value[x] only Coding
* extension[sampling-method].value[x].code 1..1
* extension[sampling-method].value[x].system 1..1
* extension[sampling-method].value[x] from $nfdi4health-vs-mds-study-sampling-method-nci-local (required)
* extension[sampling-method].value[x] ^binding.description = "Value set defining codes to specify types of sampling methods."
* extension[sampling-method-probability] ^short = "Specific type of probability sampling"
* extension[sampling-method-probability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* extension[sampling-method-probability] ^comment = "If known, select one value from the list."
* extension[sampling-method-probability].value[x] 1..1
* extension[sampling-method-probability].value[x] only Coding
* extension[sampling-method-probability].value[x].code 1..1
* extension[sampling-method-probability].value[x].system 1..1
* extension[sampling-method-probability].value[x] from $nfdi4health-vs-mds-study-sampling-prob-method-nci (required)
* extension[sampling-method-probability].value[x] ^binding.description = "Value set defining codes to specify types of probability sampling methods."
* extension[sampling-method-non-probability] ^short = "Specific type of non-probability sampling"
* extension[sampling-method-non-probability] ^definition = "Specific type of the probability sampling method applied for the selection of study participants."
* extension[sampling-method-non-probability] ^comment = "If known, select one value from the list."
* extension[sampling-method-non-probability].value[x] 1..1
* extension[sampling-method-non-probability].value[x] only Coding
* extension[sampling-method-non-probability].value[x].code 1..1
* extension[sampling-method-non-probability].value[x].system 1..1
* extension[sampling-method-non-probability].value[x] from $nfdi4health-vs-mds-study-sampling-method-non-prob-nci-local (required)
* extension[sampling-method-non-probability].value[x] ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."

Mapping: NFDI4Health-Study-Sampling-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Sampling
* -> "1.17.20 Resource.studyDesign.sampling"
* extension[sampling-method] -> "1.17.20.1 Resource.studyDesign.sampling.method "
* extension[sampling-method-probability] -> "1.17.20.2 Resource.studyDesign.sampling.probabilityMethod"
* extension[sampling-method-non-probability] -> "1.17.20.3 Resource.studyDesign.sampling.nonProbabilityMethod"