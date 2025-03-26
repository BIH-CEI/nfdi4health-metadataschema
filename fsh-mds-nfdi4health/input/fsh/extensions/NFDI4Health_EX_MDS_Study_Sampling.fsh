Extension: NFDI4Health_EX_MDS_Study_Sampling
Id: nfdi4health-ex-mds-study-sampling
Title: "NFDI4Health EX MDS Study Sampling"
Description: "Group of items providing information about the sampling methohd"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-sampling"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Sampling method"
* . ^definition = "Group of items providing information about the applied sampling method."


* extension contains
    method 1..1 and
    probabilityMethod 0..1 and
    nonProbabilityMethod 0..1
* extension[method] ^short = "Applied sampling method"
* extension[method] ^definition = "Type of the sampling method applied for the selection of participants."
* extension[method].value[x] only Coding
* extension[method].valueCoding from NFDI4Health_VS_MDS_Study_Sampling_Method_NCI_Local (required)
* extension[method].valueCoding ^binding.description = "Value set defining codes to specify types of sampling methods."
* extension[probabilityMethod] ^short = "Specific type of probability sampling"
* extension[probabilityMethod] ^definition = "Specific type of the probability sampling method applied for the selection of participants."
* extension[probabilityMethod] ^comment = " 0..1, if Design.sampling.method == 'Probability'; otherwise 0..0"
* extension[probabilityMethod].value[x] only Coding
* extension[probabilityMethod].valueCoding from NFDI4Health_VS_MDS_Study_Sampling_Probability_Method_NCI_Local (required)
* extension[probabilityMethod].valueCoding ^binding.description = "Value set defining codes to specify types of probability sampling methods."
* extension[nonProbabilityMethod] ^short = "Specific type of non-probability sampling"
* extension[nonProbabilityMethod] ^definition = "Specific type of the non-probability sampling method applied for the selection of participants."
* extension[nonProbabilityMethod] ^comment = " 0..1, if Design.sampling.method == 'Non-probability'; otherwise 0..0"
* extension[nonProbabilityMethod].value[x] only Coding
* extension[nonProbabilityMethod].valueCoding from NFDI4Health_VS_MDS_Study_Sampling_Method_Non_Probability_NCI_Local (required)
* extension[nonProbabilityMethod].valueCoding ^binding.description = "Value set defining codes to specify types of non-probability sampling methods."


Mapping: NFDI4Health-Study-Sampling-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Sampling
* -> "Design.sampling"
* extension[method] -> "Design.sampling.Method"
* extension[probabilityMethod] -> "Design.sampling.probabilityMethod"
* extension[nonProbabilityMethod] -> "Design.sampling.nonProbabilityMethod"


