Logical: Module_Nutritional_Epidemiology
Parent: Element
Id: nfdi4health-lm-metadataschema-ne
Title: "NFDI4Health Module Nutritional Epidemiology"
Description: "NFDI4Health Logical Module of Module Nutritional Epidemiology V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-ne"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* DietAssessment 0..* BackboneElement "Diet assessment information collected in the [RESOURCE]" "Group of i providing information on diet assessment."
* DietAssessment ^comment = "\n* 1..*, if Resource.nutritionalData == \"Yes\"\n* 0..0, if Resource.nutritionalData == \"No\""
* DietAssessment ^requirements = "**Description: **Group of i providing information on diet assessment."

* DietAssessment.instrument 1..1 CodeableConcept "Dietary assessment instrument used" "Specification of the dietary assessment instrument like food record or diet history."
* DietAssessment.instrument from NFDI4Health_VS_MDS_NE_Instrument_NCI_Local (required)


* DietAssessment.ffqINumber 0..1 Quantity "Number of items in the food frequency questionnaire (FFQ)" "The number of items inquired by the food frequency questionnaire (FFQ). A food frequency questionnaire (FFQ) consists of a finite list of foods and beverages with response categories to indicate usual frequency of consumption over the time period queried."
* DietAssessment.ffqINumber ^comment = "\n* 1..1, if DietAssessment.instrument == \"Food frequency questionnaire (FFQ)\"\n* 0..0, if DietAssessment.instrument != \"Food frequency questionnaire (FFQ)\"" 

* DietAssessment.mode 1..* CodeableConcept "Modes used to apply the dietary assessment instrument" "How the dietary assessment instrument was applied."
* DietAssessment.mode from NFDI4Health_VS_MDS_NE_Mode_NCI_MSH_Local (required)

* DietAssessment.device 1..* CodeableConcept "Devices used to apply the dietary assessment instrument" "Specification of device(s) used to apply the dietary assessment instrument to participants."
* DietAssessment.device from NFDI4Health_VS_MDS_NE_Device_NCI_SNOMEDCT_Local (required)

* DietAssessment.portionSizeEstimation 1..* CodeableConcept "How was the portion size estimated?" "Specification of how the portion size was inquired in the dietary assessment instrument."
* DietAssessment.portionSizeEstimation from NFDI4Health_VS_MDS_NE_Portion_Size_SNOMEDCT_Local (required)

* DietAssessment.referencePeriodUnit 1..* CodeableConcept "Reference period unit" "Indication of the reference period the dietary assessment instrument refers to (e.g. 24-h recall refers to the previous day)"
* DietAssessment.referencePeriodUnit from NFDI4Health_VS_MDS_NE_Reference_Period_Unit_SNOMEDCT (required)

* DietAssessment.referencePeriodNumber 1..1 Quantity "Number of reference period units" "Numerical value of reference period units."

* DietAssessment.repeat 1..1 boolean "Instrument applied repeatedly?" "Indication whether the same instrument was applied repeatedly."


* DietAssessment.repeatFrequency 0..1 Quantity "Frequency of instrument application" "Indication of how often the dietary assessment instrument was repeatedly applied."
* DietAssessment.repeatFrequency ^comment = "\n* 1..1, if DietAssessment.repeat == \"Yes\"\n* 0..0, if DietAssessment.repeat == \"No\""

* DietAssessment.validity 1..1 boolean "Instrument validated?" "Indication whether the dietary assessment instrument was validated. Validity refers to whether an instrument accurately measures what it is intended to measure. This is typically assessed by comparison to a gold standard using methods like correlations or Bland-Altman plots. It indicates how suitable the                             instrument is for its purpose and whether it can be applied to other populations beyond the original study."

* DietAssessment.validityReference 0..1 string "validityReference" "Reference describing the validation"
* DietAssessment.validityReference ^comment = "\n* 1..1, if DietAssessment.validity == \"Yes\"\n* 0..0, if DietAssessment.validity == \"No\""
* DietAssessment.validityReference ^requirements = "Indication of the reference describing the validation. Publications that describe the validation of an instrument. Ideally, this should include studies that have undergone a peer-review process. Code or documentation that has not been peer-reviewed would not be considered sufficient in this                         context."

* DietAssessment.reliability 1..1 boolean "Instrument described according to reliability?" "Indication whether the dietary assessment instrument was described according to its reliability. Reliability reflects how consistently an instrument produces the same results across repeated uses. This is critical for longitudinal studies using the same tools over time."

* DietAssessment.reliabilityReference 0..1 string "Reference describing reliability measures" "Indication of the reference describing the reliability measures."
* DietAssessment.reliabilityReference ^comment = "\n* 1..1, if DietAssessment.reliability == \"Yes\"\n* 0..0, if DietAssessment.reliability == \"No\""

* DietAssessment.dietarySupplements 1..1 boolean "Dietary supplements inquired?" "Indication whether the dietary assessment instrument inquires information about dietary supplements."

