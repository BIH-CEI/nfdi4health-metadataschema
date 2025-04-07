Logical: NFDI4Health_LM_MDS_EOCD
Parent: Element
Id: nfdi4health-lm-mds-eocd
Title: "NFDI4Health Module Epidemiology of Chronic Diseases"
Description: "NFDI4Health Logical Model of Module Epidemiology of Chronic Diseases V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-eocd"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* ChronicDiseasesEpidemiology 0..* BackboneElement "Chronic disease data collected in the [RESOURCE]" "Group of items providing information on chronic disease data collection."
* ChronicDiseasesEpidemiology ^comment = "1..*, if Resource.chronicDiseases == \"Yes\" AND Resource.classification.type == (\"Study protocol\" OR \"Informed consent form\" OR \"Patient information sheet\" OR \"Manual of operations (SOPs)\" OR \"Statistical analysis plan\" OR \"Data\n                                    management plan\" OR \"Case report form\" OR \"Interview scheme and themes\" OR \"Observation guide\" OR \"Discussion guide\" OR \"Participant tasks\" OR \"Other study document\" OR \"Other\")\n 0..0, if Resource.chronicDiseases != \"Yes\" OR Resource.classification.type != (\"Study protocol\" OR \"Informed consent form\" OR \"Patient information sheet\" OR \"Manual of operations (SOPs)\" OR \"Statistical analysis plan\" OR \"Data\n                                    management plan\" OR \"Case report form\" OR \"Interview scheme and themes\" OR \"Observation guide\" OR \"Discussion guide\" OR \"Participant tasks\" OR \"Other study document\" OR \"Other\")"
* ChronicDiseasesEpidemiology.commonChronicDiseaseName 1..1 CodeableConcept "Specification of the common chronic diseases on which data were collected in the Group of items providing information on chronic disease data collection."
* ChronicDiseasesEpidemiology.commonChronicDiseaseName from NFDI4Health_VS_MDS_CD_CommonChronicDiseaseName_SCT_Local (required)
* ChronicDiseasesEpidemiology.commonChronicDiseaseName ^comment = "Additional information: The values originate from the following sources: 1) 10 types of cancer with the highest incidence in Germany, by gender, based on 2017/2018 German cancer registry data (RKI, Zentrum für Krebsregisterdaten, https://www.krebsdaten.de/); 2) 10 cardiovascular diseases with\n                            highest mortality in Germany in 2020 (www.destatis.de). <br/>All values follow the classifiction system ICD-10 (WHO's International Statistical Classification of Diseases and Related Health Problems, 10th Revision (ICD-10), https://icd.who.int/en)."
* ChronicDiseasesEpidemiology.dataCollected 1..1 CodeableConcept "Specification of the type of data collected."
* ChronicDiseasesEpidemiology.dataCollected from NFDI4Health_VS_MDS_CD_DataCollected_NCI (required)
* ChronicDiseasesEpidemiology.informationSources 1..* CodeableConcept "Specification of the source(s) from which information was generated/extracted."
* ChronicDiseasesEpidemiology.informationSources from NFDI4Health_VS_MDS_CD_Information_Sources_NCI_Local (required)
* ChronicDiseasesEpidemiology.informationSources ^comment = "Additional information: Treat prevalent and incident diseases separately (selected values should be specific for prevalent diseases and then separately incident diseases)."
* ChronicDiseasesEpidemiology.outcomesVerificationMethods 0..* string "Methods of verification differ by study. All the details per outcome are not needed here but rather an explanation of how outcomes were verified in general."


