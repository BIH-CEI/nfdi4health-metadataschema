Logical: Module_Nutritional_Epidemiology
Parent: Element
Id: nfdi4health-lm-metadataschema-ne
Title: "NFDI4Health Module Nutritional Epidemiology"
Description: "NFDI4Health Logical Module of Module Nutritional Epidemiology V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-ne"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* DietAssessment 0..* BackboneElement "DietAssessment" "roup of items providing information on diet assessment."
* DietAssessment ^comment = "Cardinality:</strong> 1..*, if Resource.nutritionalData == 'Yes'; otherwise 0.. 0"
* DietAssessment.instrument 0..* CodeableConcept "Dietary assessment instrument used" "Specification of the dietary assessment instrument like food record or diet history."
* DietAssessment.instrument from NFDI4Health_VS_MDS_NE_Instrument_NCI_Local (required)
* DietAssessment.instrument ^comment = "Cardinality: 1..1"
* DietAssessment.ffqItemsNumber 0..* Quantity "Number of items in the food frequency questionnaire (FFQ)" "The number of items inquired by the food frequency questionnaire (FFQ). A food frequency questionnaire (FFQ) consists of a finite list of foods and beverages with response categories to indicate usual frequency of consumption over the time period queried."
* DietAssessment.ffqItemsNumber ^comment = "Cardinality:</strong> 1..1, if DietAssessment.instrument == 'Food frequency questionnaire (FFQ)'; otherwise 0.. 0"
* DietAssessment.mode 0..* CodeableConcept "Modes used to apply the dietary assessment instrument" "How the dietary assessment instrument was applied."
* DietAssessment.mode from NFDI4Health_VS_MDS_NE_Mode_NCI_MSH_Local (required)
* DietAssessment.mode ^comment = "Cardinality: 1..*"
* DietAssessment.device 0..* CodeableConcept "Devices used to apply the dietary assessment instrument" "Specification of device(s) used to apply the dietary assessment instrument to participants."
* DietAssessment.device from NFDI4Health_VS_MDS_NE_Device_NCI_SNOMEDCT_Local (required)
* DietAssessment.device ^comment = "Cardinality: 1..*"
* DietAssessment.portionSizeEstimation 0..* CodeableConcept "How was the portion size estimated?" "Specification of how the portion size was inquired in the dietary assessment instrument."
* DietAssessment.portionSizeEstimation from NFDI4Health_VS_MDS_NE_Portion_Size_SNOMEDCT_Local (required)
* DietAssessment.portionSizeEstimation ^comment = "Cardinality: 1..*"
* DietAssessment.referencePeriodUnit 0..* CodeableConcept "Reference period unit" "Indication of the reference period the dietary assessment instrument refers to (e.g. 24-h recall refers to the previous day)"
* DietAssessment.referencePeriodUnit from NFDI4Health_VS_MDS_NE_Reference_Period_Unit_SNOMEDCT (required)
* DietAssessment.referencePeriodUnit ^comment = "Cardinality:</strong> 1..1"
* DietAssessment.referencePeriodNumber 0..* Quantity "Number of reference period units" "Numerical value of reference period units."
* DietAssessment.referencePeriodNumber ^comment = "Cardinality:</strong> 1..1"
* DietAssessment.repeat 0..* boolean "Instrument applied repeatedly?" "Indication whether the same instrument was applied repeatedly."
* DietAssessment.repeat ^comment = "Cardinality: 1..1"
* DietAssessment.repeatFrequency 0..* Quantity "Frequency of instrument application" "Indication of how often the dietary assessment instrument was repeatedly applied."
* DietAssessment.repeatFrequency ^comment = "Cardinality: 1..1, if DietAssessment.repeat == 'Yes'; otherwise 0.. 0"
* DietAssessment.validity 0..* boolean "Instrument validated?" "Indication whether the dietary assessment instrument was validated. Validity refers to whether an instrument accurately measures what it is intended to measure. This is typically assessed by comparison to a gold standard using methods like correlations or Bland-Altman plots. It indicates how suitable the instrument is for its purpose and whether it can be applied to other populations beyond the original study."
* DietAssessment.validity ^comment = "Cardinality: 1..1"
* DietAssessment.validityReference 0..* string "Reference describing the validation" "Indication of the reference describing the validation. Publications that describe the validation of an instrument. Ideally, this should include studies that have undergone a peer-review process. Code or documentation that has not been peer-reviewed would not be considered sufficient in this context."
* DietAssessment.validityReference ^comment = "Cardinality: 1..1, if DietAssessment.validity == 'Yes'; otherwise 0.. 0"
* DietAssessment.reliability 0..* boolean "Instrument described according to reliability?" "Indication whether the dietary assessment instrument was described according to its reliability. Reliability reflects how consistently an instrument produces the same results across repeated uses. This is critical for longitudinal studies using the same tools over time."
* DietAssessment.reliability ^comment = "Cardinality: 1..1"
* DietAssessment.reliabilityReference 0..* string "Reference describing reliability measures" "Indication of the reference describing the reliability measures."
* DietAssessment.reliabilityReference ^comment = "Cardinality: 1..1, if DietAssessment.reliability == 'Yes'; otherwise 0.. 0"
* DietAssessment.dietarySupplements 0..* boolean "Dietary supplements inquired?" "Indication whether the dietary assessment instrument inquires information about dietary supplements."
* DietAssessment.dietarySupplements ^comment = "Cardinality: 1..1"

