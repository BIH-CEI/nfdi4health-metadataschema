Logical: Module_Nutritional_Epidemiology
Parent: Element
Id: nfdi4health-lm-metadataschema-ne
Title: "NFDI4Health Module Nutritional Epidemiology V 3.3.1"
Description: "NFDI4Health Logical Module of Module Nutritional Epidemiology"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-ne"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* DietAssessment 0..* BackboneElement "DietAssessment" "Diet assessment information collected in the [RESOURCE]"
* DietAssessment ^comment = "Cardinality: 1..*, if Resource.nutritionalData == 'Yes'; otherwise 0.. 0"
* DietAssessment ^requirements = "Group of items providing information on diet assessment."
* DietAssessment ^base.path = "DietAssessment"
* DietAssessment ^base.min = 0
* DietAssessment ^base.max = "*"
* DietAssessment.instrument 0..* CodeableConcept "instrument" "Dietary assessment instrument used"
* DietAssessment.instrument from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-instrument-nci-local (required)
* DietAssessment.instrument ^comment = "Cardinality: 1..1"
* DietAssessment.instrument ^requirements = "Specification of the dietary assessment instrument like food record or diet history."
* DietAssessment.instrument ^base.path = "DietAssessment.instrument"
* DietAssessment.instrument ^base.min = 0
* DietAssessment.instrument ^base.max = "*"
* DietAssessment.instrument ^binding.description = "NFDI4Health_VS_MDS_NE_Instrument_NCI_Local"
* DietAssessment.ffqItemsNumber 0..* Quantity "ffqItemsNumber" "Number of items in the food frequency questionnaire (FFQ)"
* DietAssessment.ffqItemsNumber ^comment = "Cardinality: 1..1, if DietAssessment.instrument == 'Food frequency questionnaire (FFQ)'; otherwise 0.. 0"
* DietAssessment.ffqItemsNumber ^requirements = "The number of items inquired by the food frequency questionnaire (FFQ). A food frequency questionnaire (FFQ) consists of a finite list of foods and beverages with response categories to indicate usual frequency of consumption over the time period queried."
* DietAssessment.ffqItemsNumber ^base.path = "DietAssessment.ffqItemsNumber"
* DietAssessment.ffqItemsNumber ^base.min = 0
* DietAssessment.ffqItemsNumber ^base.max = "*"
* DietAssessment.mode 0..* CodeableConcept "mode" "Modes used to apply the dietary assessment instrument"
* DietAssessment.mode from https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-mode-nci-msh-local (required)
* DietAssessment.mode ^comment = "Cardinality: 1..*"
* DietAssessment.mode ^requirements = "How the dietary assessment instrument was applied."
* DietAssessment.mode ^base.path = "DietAssessment.mode"
* DietAssessment.mode ^base.min = 0
* DietAssessment.mode ^base.max = "*"
* DietAssessment.mode ^binding.description = "NFDI4Health_VS_MDS_NE_Mode_NCI_MSH_Local"
* DietAssessment.device 0..* CodeableConcept "device" "Devices used to apply the dietary assessment instrument"
* DietAssessment.device from NFDI4Health_VS_MDS_NE_Device_NCI_SNOMEDCT_Local (required)
* DietAssessment.device ^comment = "Cardinality: 1..*"
* DietAssessment.device ^requirements = "Specification of device(s) used to apply the dietary assessment instrument to participants."
* DietAssessment.device ^base.path = "DietAssessment.device"
* DietAssessment.device ^base.min = 0
* DietAssessment.device ^base.max = "*"
* DietAssessment.device ^binding.description = "NFDI4Health_VS_MDS_NE_Device_NCI_SNOMEDCT_Local"
* DietAssessment.portionSizeEstimation 0..* CodeableConcept "portionSizeEstimation" "How was the portion size estimated?"
* DietAssessment.portionSizeEstimation from NFDI4Health_VS_MDS_NE_Portion_Size_SNOMEDCT_Local (required)
* DietAssessment.portionSizeEstimation ^comment = "Cardinality: 1..*"
* DietAssessment.portionSizeEstimation ^requirements = "Specification of how the portion size was inquired in the dietary assessment instrument."
* DietAssessment.portionSizeEstimation ^base.path = "DietAssessment.portionSizeEstimation"
* DietAssessment.portionSizeEstimation ^base.min = 0
* DietAssessment.portionSizeEstimation ^base.max = "*"
* DietAssessment.portionSizeEstimation ^binding.description = "NFDI4Health_VS_MDS_NE_Portion_Size_SNOMEDCT_Local"
* DietAssessment.referencePeriodUnit 0..* CodeableConcept "referencePeriodUnit" "Reference period unit"
* DietAssessment.referencePeriodUnit from NFDI4Health_VS_MDS_NE_Reference_Period_Unit_SNOMEDCT (required)
* DietAssessment.referencePeriodUnit ^comment = "Cardinality: 1..1"
* DietAssessment.referencePeriodUnit ^requirements = "Indication of the reference period the dietary assessment instrument refers to (e.g. 24-h recall refers to the previous day)"
* DietAssessment.referencePeriodUnit ^base.path = "DietAssessment.referencePeriodUnit"
* DietAssessment.referencePeriodUnit ^base.min = 0
* DietAssessment.referencePeriodUnit ^base.max = "*"
* DietAssessment.referencePeriodUnit ^binding.description = "NFDI4Health_VS_MDS_NE_Reference_Period_Unit_SNOMEDCT"
* DietAssessment.referencePeriodNumber 0..* Quantity "referencePeriodNumber" "Number of reference period units"
* DietAssessment.referencePeriodNumber ^comment = "Cardinality: 1..1"
* DietAssessment.referencePeriodNumber ^requirements = "Numerical value of reference period units."
* DietAssessment.referencePeriodNumber ^base.path = "DietAssessment.referencePeriodNumber"
* DietAssessment.referencePeriodNumber ^base.min = 0
* DietAssessment.referencePeriodNumber ^base.max = "*"
* DietAssessment.repeat 0..* boolean "repeat" "Instrument applied repeatedly?"
* DietAssessment.repeat ^comment = "Cardinality: 1..1"
* DietAssessment.repeat ^requirements = "Indication whether the same instrument was applied repeatedly."
* DietAssessment.repeat ^base.path = "DietAssessment.repeat"
* DietAssessment.repeat ^base.min = 0
* DietAssessment.repeat ^base.max = "*"
* DietAssessment.repeatFrequency 0..* Quantity "repeatFrequency" "Frequency of instrument application"
* DietAssessment.repeatFrequency ^comment = "Cardinality: 1..1, if DietAssessment.repeat == 'Yes'; otherwise 0.. 0"
* DietAssessment.repeatFrequency ^requirements = "Indication of how often the dietary assessment instrument was repeatedly applied."
* DietAssessment.repeatFrequency ^base.path = "DietAssessment.repeatFrequency"
* DietAssessment.repeatFrequency ^base.min = 0
* DietAssessment.repeatFrequency ^base.max = "*"
* DietAssessment.validity 0..* boolean "validity" "Instrument validated?"
* DietAssessment.validity ^comment = "Cardinality: 1..1"
* DietAssessment.validity ^requirements = "Indication whether the dietary assessment instrument was validated. Validity refers to whether an instrument accurately measures what it is intended to measure. This is typically assessed by comparison to a gold standard using methods like correlations or Bland-Altman plots. It indicates how suitable the instrument is for its purpose and whether it can be applied to other populations beyond the original study."
* DietAssessment.validity ^base.path = "DietAssessment.validity"
* DietAssessment.validity ^base.min = 0
* DietAssessment.validity ^base.max = "*"
* DietAssessment.validityReference 0..* string "validityReference" "Reference describing the validation"
* DietAssessment.validityReference ^comment = "Cardinality: 1..1, if DietAssessment.validity == 'Yes'; otherwise 0.. 0"
* DietAssessment.validityReference ^requirements = "Indication of the reference describing the validation. Publications that describe the validation of an instrument. Ideally, this should include studies that have undergone a peer-review process. Code or documentation that has not been peer-reviewed would not be considered sufficient in this context."
* DietAssessment.validityReference ^base.path = "DietAssessment.validityReference"
* DietAssessment.validityReference ^base.min = 0
* DietAssessment.validityReference ^base.max = "*"
* DietAssessment.reliability 0..* boolean "reliability" "Instrument described according to reliability?"
* DietAssessment.reliability ^comment = "Cardinality: 1..1"
* DietAssessment.reliability ^requirements = "Indication whether the dietary assessment instrument was described according to its reliability. Reliability reflects how consistently an instrument produces the same results across repeated uses. This is critical for longitudinal studies using the same tools over time."
* DietAssessment.reliability ^base.path = "DietAssessment.reliability"
* DietAssessment.reliability ^base.min = 0
* DietAssessment.reliability ^base.max = "*"
* DietAssessment.reliabilityReference 0..* string "reliabilityReference" "Reference describing reliability measures"
* DietAssessment.reliabilityReference ^comment = "Cardinality: 1..1, if DietAssessment.reliability == 'Yes'; otherwise 0.. 0"
* DietAssessment.reliabilityReference ^requirements = "Indication of the reference describing the reliability measures."
* DietAssessment.reliabilityReference ^base.path = "DietAssessment.reliabilityReference"
* DietAssessment.reliabilityReference ^base.min = 0
* DietAssessment.reliabilityReference ^base.max = "*"
* DietAssessment.dietarySupplements 0..* boolean "dietarySupplements" "Dietary supplements inquired?"
* DietAssessment.dietarySupplements ^comment = "Cardinality: 1..1"
* DietAssessment.dietarySupplements ^requirements = "Indication whether the dietary assessment instrument inquires information about dietary supplements."
* DietAssessment.dietarySupplements ^base.path = "DietAssessment.dietarySupplements"
* DietAssessment.dietarySupplements ^base.min = 0
* DietAssessment.dietarySupplements ^base.max = "*"