Logical: NFDI4Health_LM_Metadataschema_EOCD_V3_3
Parent: Element
Id: nfdi4health-lm-metadataschema-eocd-v3-3
Title: "NFDI4Health LM Epidemiology of Chronic Diseases Metadataschema (UC 5.2) V3.3"
Description: "NFDI4Health LogicalModel Epidemiology of Chronic Diseases Metadataschema (Use Case 5.2) V3.3"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-metadataschema-eocd-v3-3"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ChronicDiseasesEpidemiology 0..* BackboneElement "Chronic disease data collected in the [RESOURCE]" "Group of items providing information on chronic disease data collection."
* ChronicDiseasesEpidemiology ^comment = "Cardinality: 1..*, if Resource.chronicDiseases == 'Yes' AND Resource.classification.type == ('Study protocol' OR 'Informed consent form' OR 'Patient information sheet' OR 'Manual of operations (SOPs)' OR 'Statistical analysis plan' OR 'Data management plan' OR 'Case report form' OR 'Interview scheme and themes' OR 'Observation guide' OR 'Discussion guide' OR 'Participant tasks' OR 'Other study document' OR 'Other'); otherwise 0..0 / Source of the property and/or allowed values: NFDI4Health UC 5.2 requirements"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName 1..1 Coding "On which of the following common chronic diseases were data collected?" "Specification of the common chronic disease on which data were collected in the [RESOURCE]."
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^comment = "Additional Information: The values originate from the following sources: 1) 10 types of cancer with the highest incidence in Germany, by gender, based on 2017/2018 German cancer registry data (RKI, Zentrum für Krebsregisterdaten, https://www.krebsdaten.de/); 2) 10 cardiovascular diseases with highest mortality in Germany in 2020 (www.destatis.de). / Short Input Help: Select one value from the list. / Source of the property and/or allowed values: ICD-10 [15], Zentrum für Krebsregisterdaten [18], Statistisches Bundesamt [19], (NFDI4Health UC 5.2 requirements)"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName from NFDI4Health_VS_MDS_CD_Common_Chronic_Disease_Name_SNOMEDCT (required)
* ChronicDiseasesEpidemiology.dataCollected 1..1 Coding "Type of data collected" "Specification of the type of data collected."
* ChronicDiseasesEpidemiology.dataCollected ^comment = "Short Input Help: Select one value from the list. / Source of the property and/or allowed values: NFDI4Health UC 5.2 requirements"
* ChronicDiseasesEpidemiology.dataCollected from NFDI4Health_VS_MDS_CD_DataCollected_UMLS (required)
* ChronicDiseasesEpidemiology.informationSources 1..* Coding "From which source(s) are data generated/extracted?" "Specification of the source(s) from which information is generated/extracted."
* ChronicDiseasesEpidemiology.informationSources ^comment = "Additional Information: Treat prevalent and incident diseases separately (selected values should be specific for prevalent diseases and then separately incident diseases). / Short Input Help: Select all that apply. / Source of the property and/or allowed values: NFDI4Health UC 5.2 requirements"
* ChronicDiseasesEpidemiology.informationSources from NFDI4Health_VS_MDS_CD_Information_Sources_UMLS_Local (required)
* ChronicDiseasesEpidemiology.outcomesVerificationMethods 0..* string "How were outcomes generally verified?" "Methods of verification differ by study. All the details per outcome are not needed here but rather an explanation of how outcomes were verified in general."
* ChronicDiseasesEpidemiology.outcomesVerificationMethods ^comment = "Source of the property and/or allowed values: NFDI4Health UC 5.2 requirements"

Mapping: NFDI4Health_EOCD_V3_3_Internal_Numbering
Id: NFDI4Health-EOCD-V3-3-Internal-Numbering
Title: "NFDI4Health Epidemiology of Chronic Diseases Metadataschema Version 3.3 Mapping to internal numbering of Metadataschema Version 3.3"
Source: NFDI4Health_LM_Metadataschema_EOCD_V3_3
* ChronicDiseasesEpidemiology -> "CD1"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName -> "CD1.1"
* ChronicDiseasesEpidemiology.dataCollected -> "CD1.2"
* ChronicDiseasesEpidemiology.informationSources -> "CD1.3"
* ChronicDiseasesEpidemiology.outcomesVerificationMethods -> "CD1.4"