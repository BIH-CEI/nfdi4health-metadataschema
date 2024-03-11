Profile: NFDI4Health_PR_MDS_EvidenceVariable_Chronic_Diseases
Parent: EvidenceVariable
Id: nfdi4health-pr-mds-evidence-variable-chronic-disease
Title: "NFDI4Health PR MDS Module Chronic Diseases"
Description: "Profile to collect information about a diet assessment used for nutritional epidemiology research."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-evidence-variable-chronic-diseases"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* . ^short = "Chronic disease data collected in the [RESOURCE]"
* . ^definition = " Group of items providing information on chronic disease data collection."

* characteristic contains 
    commonChronicDiseaseName 1..1 and
    dataCollected 1..1 and
    informationSources 1..* and
    outcomesVerificationMethods 0..*
* characteristic[commonChronicDiseaseName] ^short = "On which of the following common chronic diseases were data collected?"
* characteristic[commonChronicDiseaseName] ^definition = "Specification of the common chronic disease on which data were collected in the [RESOURCE]."
* characteristic[commonChronicDiseaseName].definitionCodeableConcept 1..1
* characteristic[commonChronicDiseaseName].definitionCodeableConcept from  NFDI4Health_VS_MDS_CD_CommonChronicDiseaseName_SCT_Local (required)

* characteristic[dataCollected] ^short = "Type of data collected"
* characteristic[dataCollected] ^definition = "Specification of the type of data collected."
* characteristic[dataCollected].definitionCodeableConcept 1..1
* characteristic[dataCollected].definitionCodeableConcept from NFDI4Health_VS_MDS_CD_DataCollected_NCI (required)

* characteristic[informationSources] ^short = "From which source(s) are data generated/extracted?"
* characteristic[informationSources] ^definition = "Specification of the source(s) from which information is generated/extracted."
* characteristic[informationSources].definitionCodeableConcept 1..1
* characteristic[informationSources].definitionCodeableConcept from NFDI4Health_VS_MDS_CD_Information_Sources_NCI_Local (required)

* characteristic[outcomesVerificationMethods] ^short = "How were outcomes generally verified?"
* characteristic[outcomesVerificationMethods] ^definition = "Methods of verification differ by study. All the details per outcome are not needed here but rather an explanation of how outcomes were verified in general."
* characteristic[outcomesVerificationMethods].definitionExpression.expression 1..1