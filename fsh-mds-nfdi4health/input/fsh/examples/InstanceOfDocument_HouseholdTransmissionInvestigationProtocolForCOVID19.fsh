Instance: InstanceOfDocumentHouseholdTransmissionInvestigationForC19
InstanceOf: NFDI4Health_PR_MDS_Document
Title: "Example of the NFDI4Health PR MDS Document - Household Transmission Investigation Protocol for Coronavirus Disease 2019 (COVID-19)"
Usage: #example

// General information
* status = #current // mandatory in FHIR, no information in MDS

// Content
* content.attachment.language = #en "English"
* content.extension[version].valueString = "2.2"

/// Descriptions
* extension[descriptions].extension[value].valueString = "This document sets out the methods to guide data collection and the public health investigation for the comprehensive assessment of household contacts of confirmed COVID-19 cases. The household transmission investigation is a case-ascertained prospective study of all identified household contacts of a laboratory-confirmed 2019-nCoV infection. It is intended to provide rapid and early information on the clinical, epidemiological and virological characteristics of 2019-nCoV. There are three primary objectives of this household transmission study:
1) To better understand the extent of transmission within a household by estimating the secondary infection rate for household contacts at an individual level, and factors associated with any variation in the secondary infection risk.
2) To characterize secondary cases including the range of clinical presentation, risk factors for infection, and the extent and fraction of asymptomatic infections.
3) To characterize serologic response following confirmed 2019-nCoV infection (highly encouraged, but optional depending on laboratory capacity and resources)."
* extension[descriptions].extension[language].valueCodeableConcept = $ISOLanguage#en "English"

/// Details
* extension[keywords][0].valueCodeableConcept.text = "COVID-19"
* extension[keywords][=].valueCodeableConcept.coding.system = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].valueCodeableConcept.text = "Questionnaire"
* extension[keywords][=].valueCodeableConcept.coding.system = "https://id.nlm.nih.gov/mesh/T000997092.html"
* content.format.display = "PDF"
* extension[useRights].extension[copyrightLabelAndLink].extension[label].valueCoding = $SCT#74964007 "Other"
* extension[useRights].extension[useRightsDescription].valueString = " This document is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 IGO (CC BY-NC-SA 3.0 IGO) License. To view a copy of the license, visit https://creativecommons.org/licenses/by-nc-sa/3.0/igo/legalcode."


// Related Resources
* extension[relatedResources].valueRelatedArtifact = InstanceOfRelatedArtifact

