Logical: NFDI4Health_LM_Metadataschema_NE_V3_3
Parent: Element
Id: nfdi4health-lm-metadataschema-ne-v3-3
Title: "NFDI4Health LM Nutritional Epidemiology Metadataschema (UC 5.1) V3.3"
Description: "NFDI4Health LogicalModel Nutritional Epidemiology Metadataschema (Use Case 5.1) V3.3"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-ne-v3-3"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* DietAssessment 0..* BackboneElement "Diet assessment information collected in the [RESOURCE]" "Group of items providing information on diet assessment."
* DietAssessment ^comment = "Cardinality: 1..*, if Resource.nutritionalData == 'Yes'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.instrument 1..1 Coding "Dietary assessment instrument used" "Specification of the dietary assessment instrument used in the [RESOURCE]."
* DietAssessment.instrument ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.instrument from NFDI4Health_VS_MDS_NE_Instrument_NCI_Local (required)
* DietAssessment.ffqItemsNumber 0..1 integer "Number of items in FFQ" "The number of items inquired by the food frequency questionnaire (FFQ)."
* DietAssessment.ffqItemsNumber ^comment = "Cardinality: 1..1, if DietAssessment.instrument == 'Food frequency questionnaire (FFQ)'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.mode 1..* Coding "Mode(s) used to apply the dietary assessment instrument" "Specification of how the dietary assessment instrument was applied to participants of the [RESOURCE]."
* DietAssessment.mode ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.mode from NFDI4Health_VS_MDS_NE_Mode_NCI_MSH_Local (required)
* DietAssessment.device 1..* Coding "Device(s) used to apply the dietary assessment instrument" "Specification of device(s) used to apply the dietary assessment instrument to participants of the [RESOURCE]."
* DietAssessment.device ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.device from NFDI4Health_VS_MDS_NE_Device_NCI_SNOMEDCT_Local (required)
* DietAssessment.portionSizeEstimation 1..* Coding "Portion size estimated by:" "Specification of how the portion size is inquired in the dietary assessment instrument."
* DietAssessment.portionSizeEstimation ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.portionSizeEstimation from NFDI4Health_VS_MDS_NE_Portion_Size_SNOMEDCT_Local (required)
* DietAssessment.referencePeriodUnit 1..1 Coding "Reference period unit" "Indication of the reference period the dietary assessment instrument refers to (e.g. 24-h recall refers to the previous day)."
* DietAssessment.referencePeriodUnit ^comment = "Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.referencePeriodUnit from NFDI4Health_VS_MDS_NE_Reference_Period_Unit_UCUM (required)
* DietAssessment.referencePeriodNumber 1..1 integer "Numerical value of reference period units" ""
* DietAssessment.referencePeriodNumber ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.repeat 1..1 boolean "Instrument applied repeatedly?" "Indication whether the same instrument was applied repeatedly."
* DietAssessment.repeat ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.repeatFrequency 0..1 integer "Frequency of instrument application" "Indication of how often the dietary assessment instrument was repeatedly applied."
* DietAssessment.repeatFrequency ^comment = "Cardinality: 1..1, if DietAssessment.repeat == 'Yes'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.validity 1..1 boolean "Instrument validated?" "Indication whether the dietary assessment instrument was validated."
* DietAssessment.validity ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.validityReference 0..1 string "Reference describing the validation" "Indication of the reference describing the validation."
* DietAssessment.validityReference ^comment = "Cardinality: 1..1, if DietAssessment.validity == 'Yes'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.reliability 1..1 boolean "Instrument described according to reliability?" "Indication whether the dietary assessment instrument was described according to its reliability."
* DietAssessment.reliability ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.reliabilityReference 0..1 string "Reference describing reliability measures" "Indication of the reference describing the reliability measures."
* DietAssessment.reliabilityReference ^comment = "Cardinality: 1..1, if DietAssessment.reliability == 'Yes'; otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"
* DietAssessment.dietarySupplements 1..1 boolean "Dietary supplements inquired?" "Indication whether the dietary assessment instrument inquires information about dietary supplements."
* DietAssessment.dietarySupplements ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.1 requirements"

Mapping: NFDI4Health_NE_Metadataschema_V3_3_Internal_Numbering
Id: NFDI4Health-NE-Metadataschema-V3-3-Internal-Numbering
Title: "NFDI4Health Nutritional Epidemiology Metadataschema Version 3.3 Mapping to internal numbering of Metadataschema Version 3.3"
Source: NFDI4Health_LM_Metadataschema_NE_V3_3
* DietAssessment -> "NE1"
* DietAssessment.instrument -> "NE1.1"
* DietAssessment.ffqItemsNumber -> "NE1.2"
* DietAssessment.mode -> "NE1.3"
* DietAssessment.device -> "NE1.4"
* DietAssessment.portionSizeEstimation -> "NE1.5"
* DietAssessment.referencePeriodUnit -> "NE1.6"
* DietAssessment.referencePeriodNumber -> "NE1.7"
* DietAssessment.repeat -> "NE1.8"
* DietAssessment.repeatFrequency -> "NE1.9"
* DietAssessment.validity -> "NE1.10"
* DietAssessment.validityReference -> "NE1.11"
* DietAssessment.reliability -> "NE1.12"
* DietAssessment.reliabilityReference -> "NE1.13"
* DietAssessment.dietarySupplements -> "NE1.14"