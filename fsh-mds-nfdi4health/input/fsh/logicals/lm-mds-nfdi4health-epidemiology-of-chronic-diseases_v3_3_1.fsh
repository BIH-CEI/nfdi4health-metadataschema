Logical: NFDI4Health_LM_MDS_EOCD
Parent: Element
Id: nfdi4health-lm-mds-eocd
Title: "NFDI4Health Module Epidemiology of Chronic Diseases"
Description: "NFDI4Health Logical Model of Module Epidemiology of Chronic Diseases V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-eocd"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* ChronicDiseasesEpidemiology 0..* BackboneElement "Chronic disease data collected in the [RESOURCE]"
* ChronicDiseasesEpidemiology ^comment = "Cardinality:</strong> 1..*, if Resource.chronicDiseases == 'Yes' AND Resource.classification.type == ('Study protocol' OR 'Informed consent form' OR 'Patient information sheet' OR 'Manual of operations (SOPs)' OR 'Statistical analysis plan' OR 'Data management plan' OR 'Case report form' OR 'Interview scheme\n                        and themes' OR 'Observation guide' OR 'Discussion guide' OR 'Participant tasks' OR 'Other study document' OR 'Other'); otherwise 0.. 0"
* ChronicDiseasesEpidemiology ^requirements = "Group of items providing information on chronic disease data collection."
* ChronicDiseasesEpidemiology ^base.path = "ChronicDiseasesEpidemiology"
* ChronicDiseasesEpidemiology ^base.min = 0
* ChronicDiseasesEpidemiology ^base.max = "*"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName 0..* CodeableConcept "commonChronicDiseaseName" "Common chronic diseases on which data were collected"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName from NFDI4Health_VS_MDS_CD_CommonChronicDiseaseName_SCT_Local (required)
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^comment = "Additional information: </strong>The values originate from the following sources: 1) 10 types of cancer with the highest incidence in Germany, by gender, based on 2017/2018 German cancer registry data (RKI, Zentrum für Krebsregisterdaten, https://www.krebsdaten.de/); 2) 10 cardiovascular diseases with\n                            highest mortality in Germany in 2020 (www.destatis.de). <br/>All values follow the classifiction system ICD-10 (WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10), https://icd.who.int/en)."
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^requirements = "Specification of the common chronic diseases on which data were collected in the [RESOURCE]."
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^base.path = "ChronicDiseasesEpidemiology.commonChronicDiseaseName"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^base.min = 0
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^base.max = "*"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^binding.description = "NFDI4Health_VS_MDS_CD_CommonChronicDiseaseName_SCT_Local"
* ChronicDiseasesEpidemiology.dataCollected 0..* CodeableConcept "dataCollected" "Type of data collected"
* ChronicDiseasesEpidemiology.dataCollected from NFDI4Health_VS_MDS_CD_DataCollected_NCI (required)
* ChronicDiseasesEpidemiology.dataCollected ^comment = "Cardinality:1..1"
* ChronicDiseasesEpidemiology.dataCollected ^requirements = "Specification of the type of data collected."
* ChronicDiseasesEpidemiology.dataCollected ^base.path = "ChronicDiseasesEpidemiology.dataCollected"
* ChronicDiseasesEpidemiology.dataCollected ^base.min = 0
* ChronicDiseasesEpidemiology.dataCollected ^base.max = "*"
* ChronicDiseasesEpidemiology.dataCollected ^binding.description = "NFDI4Health_VS_MDS_CD_DataCollected_NCI"
* ChronicDiseasesEpidemiology.informationSources 0..* CodeableConcept "informationSources" "From which sources were data generated/extracted?"
* ChronicDiseasesEpidemiology.informationSources from NFDI4Health_VS_MDS_CD_Information_Sources_NCI_Local (required)
* ChronicDiseasesEpidemiology.informationSources ^comment = "Additional information: </strong>Treat prevalent and incident diseases separately (selected values should be specific for prevalent diseases and then separately incident diseases)."
* ChronicDiseasesEpidemiology.informationSources ^requirements = "Specification of the source(s) from which information was generated/extracted."
* ChronicDiseasesEpidemiology.informationSources ^base.path = "ChronicDiseasesEpidemiology.informationSources"
* ChronicDiseasesEpidemiology.informationSources ^base.min = 0
* ChronicDiseasesEpidemiology.informationSources ^base.max = "*"
* ChronicDiseasesEpidemiology.informationSources ^binding.description = "NFDI4Health_VS_MDS_CD_Information_Sources_NCI_Local"
* ChronicDiseasesEpidemiology.outcomesVerificationMethods 0..* string "outcomesVerificationMethods" "How were outcomes generally verified?"
* ChronicDiseasesEpidemiology.outcomesVerificationMethods ^comment = "Cardinality:0..*"
* ChronicDiseasesEpidemiology.outcomesVerificationMethods ^requirements = "Methods of verification differ by study. All the details per outcome are not needed here but rather an explanation of how outcomes were verified in general."
* ChronicDiseasesEpidemiology.outcomesVerificationMethods ^base.path = "ChronicDiseasesEpidemiology.outcomesVerificationMethods"
* ChronicDiseasesEpidemiology.outcomesVerificationMethods ^base.min = 0
* ChronicDiseasesEpidemiology.outcomesVerificationMethods ^base.max = "*"