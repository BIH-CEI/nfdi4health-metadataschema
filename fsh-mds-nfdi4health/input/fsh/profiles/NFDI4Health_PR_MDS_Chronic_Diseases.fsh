Profile: NFDI4Health_PR_MDS_Chronic_Diseases
Parent: Condition
Id: nfdi4health-pr-mds-chronic-diseases
Title: "NFDI4Health PR MDS Chronic Conditions"
Description: "Profile intended to capture information on chronic disease data collected in the [RESOURCE]."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-chronic-diseases"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"


* code 1..1
* code ^short = "Common chronic diseases on which data were collected"
* code ^definition = "Specification of the common chronic diseases on which data were collected in the [RESOURCE]."
* code ^comment = "Short Input Help: Select one value from the list."
* code from  NFDI4Health_VS_MDS_CD_CommonChronicDiseaseName_SCT_Local (required)
* subject only Reference(NFDI4Health_PR_MDS_Group_Actual)
* note 0..*
* note ^short = "How were outcomes generally verified?"
* note ^definition = "Methods of verification differ by study. All the details per outcome are not needed here but rather an explanation of how outcomes were verified in general."
* note ^comment = "Short Input Help: E.g., verification methods: hospital/treatment documentation provided by participant, treating physician, hospital/medical records, health insurance, disease registry, death certificate."
* category 1..*
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "code"
* category ^slicing.rules = #open
* category contains
    dataCollected 1..1 and
    informationSources 1..*
* category[dataCollected] ^short = "Type of data collected"
* category[dataCollected] ^definition = "Specification of the type of data collected."
* category[dataCollected] ^comment = "Short Input Help: Select one value from the list."
* category[dataCollected] from NFDI4Health_VS_MDS_CD_DataCollected_NCI (required)
* category[informationSources] ^short = "From which sources were data generated/extracted?"
* category[informationSources] ^definition = "Specification of the source(s) from which information was generated/extracted."
* category[informationSources] ^comment = "Short Input Help: Select all that apply."
* category[informationSources] from NFDI4Health_VS_MDS_CD_Information_Sources_NCI_Local (required)




Mapping: NFDI4Health-ChronicDiseases-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Chronic_Diseases
* code -> "ChronicDiseasesEpidemiology.commonChronicDiseaseName"
* note -> "ChronicDiseasesEpidemiology.outcomesVerificationMethods"
* category[dataCollected] -> "dataCollected"
* category[informationSources] -> "ChronicDiseasesEpidemiology.informationSources"



 

 