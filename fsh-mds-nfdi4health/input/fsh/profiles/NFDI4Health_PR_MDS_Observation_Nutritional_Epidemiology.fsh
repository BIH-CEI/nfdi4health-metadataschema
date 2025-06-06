Profile: NFDI4Health_PR_MDS_Observation_Nutritional_Epidemiology
Parent: Observation
Id: nfdi4health-pr-mds-observation-nutritional-epidemiology
Title: "NFDI4Health PR MDS Observation Nutritional Epidemiology" 
Description: "NFDI4Health Nutritional Epidemiology Module"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-observation-nutritional-epidemiology"
* ^version = "1.0" 
* ^status = #draft 
* ^date = "2024-12-06" 
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Diet assessment information collected in the [RESOURCE]"
* . ^definition = "Group of items providing information on diet assessment."

* code = $LNC#75303-8 "Nutrition assessment Narrative"
* category = #survey (exactly)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    instrument 1..1 and
    ffqItemsNumber 0..1 and
    mode 1..* and
    device 1..* and
    portionSizeEstimation 1..* and
    referencePeriodUnit 1..1 and
    referencePeriodNumber 1..1 and
    repeat 1..1 and
    repeatFrequency 0..1 and
    validity 1..1 and
    validityReference 0..1 and
    reliability 1..1 and
    reliabilityReference 0..1 and
    dietarySupplements 1..1

* component[instrument] ^short = "Dietary assessment instrument used"
* component[instrument] ^definition = "Specification of the dietary assessment instrument like food record or diet history."
* component[instrument] ^comment = "Select one value from the list."
* component[instrument].code = $Remaining#182 "Dietary assessment instrument"
* component[instrument].value[x] 1..1
* component[instrument].value[x] only CodeableConcept
* component[instrument].valueCodeableConcept from NFDI4Health_VS_MDS_NE_Instrument_NCI_Local (required)

* component[ffqItemsNumber] ^short = "Number of items in the food frequency questionnaire (FFQ)"
* component[ffqItemsNumber] ^definition = "The number of items inquired by the food frequency questionnaire (FFQ). A food frequency questionnaire (FFQ) consists of a finite list of foods and beverages with response categories to indicate usual frequency of consumption over the time period queried." // Updated
* component[ffqItemsNumber].code = $Remaining#183 "Number of items in food frequency questionnaire"
* component[ffqItemsNumber].value[x] 1..1
* component[ffqItemsNumber].value[x] only integer

* component[mode] ^short = "Modes used to apply the dietary assessment instrument"
* component[mode] ^definition = "How the dietary assessment instrument was applied."
* component[mode] ^comment = "Select all that apply."
* component[mode].code = $Remaining#184 "Mode to apply dietary assessment instrument"
* component[mode].value[x] 1..1 
* component[mode].value[x] only CodeableConcept
* component[mode].valueCodeableConcept from NFDI4Health_VS_MDS_NE_Mode_NCI_MSH_Local (required)

* component[device] ^short = "Devices used to apply the dietary assessment instrument"
* component[device] ^definition = "Specification of device(s) used to apply the dietary assessment instrument to participants."
* component[device] ^comment = "Select all that apply."
* component[device].code = $Remaining#185 "Device to apply dietary assessment instrument"
* component[device].value[x] 1..1
* component[device].value[x] only CodeableConcept
* component[device].valueCodeableConcept from NFDI4Health_VS_MDS_NE_Device_NCI_SNOMEDCT_Local (required)

* component[portionSizeEstimation] ^short = "How was the portion size estimated?"
* component[portionSizeEstimation] ^definition = "Specification of how the portion size was inquired in the dietary assessment instrument."
* component[portionSizeEstimation] ^comment = "Select all that apply."
* component[portionSizeEstimation].code = $Remaining#186 "Method to estimate portion size"
* component[portionSizeEstimation].value[x] 1..1
* component[portionSizeEstimation].value[x] only CodeableConcept
* component[portionSizeEstimation].valueCodeableConcept from NFDI4Health_VS_MDS_NE_Portion_Size_SNOMEDCT_Local (required)

* component[referencePeriodUnit] ^short = "Reference period unit"
* component[referencePeriodUnit] ^definition = "Indication of the reference period the dietary assessment instrument refers to (e.g. 24-h recall refers to the previous day)" // Updated (minor text)
* component[referencePeriodUnit] ^comment = "Select all that apply."
* component[referencePeriodUnit].code = $SCT#258695005 "Unit of time (qualifier value)"
* component[referencePeriodUnit].value[x] 1..1
* component[referencePeriodUnit].value[x] only CodeableConcept
* component[referencePeriodUnit].valueCodeableConcept from NFDI4Health_VS_MDS_NE_Reference_Period_Unit_SNOMEDCT (required)

* component[referencePeriodNumber] ^short = "Number of reference period units"
* component[referencePeriodNumber] ^definition = "Numerical value of reference period units."
* component[referencePeriodNumber].code = $NCI#C49637 "Reference Period (Temporal Concept)"
* component[referencePeriodNumber].value[x] 1..1
* component[referencePeriodNumber].value[x] only integer

* component[repeat] ^short = "Instrument applied repeatedly?"
* component[repeat] ^definition = "Indication whether the same instrument was applied repeatedly."
* component[repeat].code = $SCT#27582007 "Repeat (qualifier value)"
* component[repeat].value[x] 1..1
* component[repeat].value[x] only boolean

* component[repeatFrequency] ^short = "Frequency of instrument application"
* component[repeatFrequency] ^definition = "Indication of how often the dietary assessment instrument was repeatedly applied."
* component[repeatFrequency].code = $NCI#C118873 "How Often (Intellectual Product)"
* component[repeatFrequency].value[x] 1..1
* component[repeatFrequency].value[x] only integer

* component[validity] ^short = "Instrument validated?"
* component[validity] ^definition = "Indication whether the dietary assessment instrument was validated. Validity refers to whether an instrument accurately measures what it is intended to measure. This is typically assessed by comparison to a gold standard using methods like correlations or Bland-Altman plots. It indicates how suitable the instrument is for its purpose and whether it can be applied to other populations beyond the original study."
* component[validity].code = $NCI#C78690 "Content Validity (Quantitative Concept)"
* component[validity].value[x] 1..1
* component[validity].value[x] only boolean

* component[validityReference] ^short = "Reference describing the validation"
* component[validityReference] ^definition = "Indication of the reference describing the validation. Publications that describe the validation of an instrument. Ideally, this should include studies that have undergone a peer-review process. Code or documentation that has not been peer-reviewed would not be considered sufficient in this context."
* component[validityReference].code = $Remaining#187 "Validity reference"
* component[validityReference].value[x] 1..1
* component[validityReference].value[x] only string

* component[reliability] ^short = "Instrument described according to reliability?"
* component[reliability] ^definition = "Indication whether the dietary assessment instrument was described according to its reliability. Reliability reflects how consistently an instrument produces the same results across repeated uses. This is critical for longitudinal studies using the same tools over time."
* component[reliability].code = $NCI#C73622 "Reliability (Quantitative Concept)"
* component[reliability].value[x] 1..1
* component[reliability].value[x] only boolean

* component[reliabilityReference] ^short = "Reference describing reliability measures"
* component[reliabilityReference] ^definition = "Indication of the reference describing the reliability measures."
* component[reliabilityReference].code = $Remaining#188 "Reliability reference"
* component[reliabilityReference].value[x] 1..1
* component[reliabilityReference].value[x] only string

* component[dietarySupplements] ^short = "Dietary supplements inquired?"
* component[dietarySupplements] ^definition = "Indication whether the dietary assessment instrument inquires information about dietary supplements."
* component[dietarySupplements].code = $NCI#C1505 "Dietary Supplement (Food)"
* component[dietarySupplements].value[x] 1..1
* component[dietarySupplements].value[x] only boolean

Mapping: NFDI4Health-Observation-Nutritional-Epidemiology-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Observation_Nutritional_Epidemiology
* -> "NE1 DietAssessment"
* component[instrument].valueCodeableConcept -> "DietAssessment.instrument"
* component[ffqItemsNumber].valueInteger -> "DietAssessment.ffqItemsNumber"
* component[mode].valueCodeableConcept -> "DietAssessment.mode"
* component[device].valueCodeableConcept -> "DietAssessment.device"
* component[portionSizeEstimation].valueCodeableConcept -> "DietAssessment.portionSizeEstimation"
* component[referencePeriodUnit].valueCodeableConcept -> "DietAssessment.referencePeriodUnit"
* component[referencePeriodNumber].valueInteger -> "DietAssessment.referencePeriodNumber"
* component[repeat].valueBoolean -> "DietAssessment.repeat"
* component[repeatFrequency].valueInteger -> "DietAssessment.repeatFrequency"
* component[validity].valueBoolean -> "DietAssessment.validity"
* component[validityReference].valueString -> "DietAssessment.validityReference"
* component[reliability].valueBoolean -> "DietAssessment.reliability"
* component[reliabilityReference].valueString -> "DietAssessment.reliabilityReference"
* component[dietarySupplements].valueBoolean -> "DietAssessment.dietarySupplements"