Instance: InstanceOfDocumentHouseholdTransmissionInvestigationForC19
InstanceOf: NFDI4Health_PR_MDS_Document
Title: "Example of the NFDI4Health PR MDS Document - Household Transmission Investigation Protocol for Coronavirus Disease 2019 (COVID-19)"
Usage: #example

// General information
* masterIdentifier.value = "97"
* content.attachment[0].title = "Household transmission investigation protocol for coronavirus disease 2019 (COVID-19)"
* content.attachment[=].title.extension[language].valueCode = #en "English"
* status = #current // mandatory in FHIR, no information in MDS
/// English Description
* description = "This document sets out the methods to guide data collection and the public health investigation for the comprehensive assessment of household contacts of confirmed COVID-19 cases. The household transmission investigation is a case-ascertained prospective study of all identified household contacts of a laboratory-confirmed 2019-nCoV infection. It is intended to provide rapid and early information on the clinical, epidemiological and virological characteristics of 2019-nCoV. There are three primary objectives of this household transmission study:
1) To better understand the extent of transmission within a household by estimating the secondary infection rate for household contacts at an individual level, and factors associated with any variation in the secondary infection risk.
2) To characterize secondary cases including the range of clinical presentation, risk factors for infection, and the extent and fraction of asymptomatic infections.
3) To characterize serologic response following confirmed 2019-nCoV infection (highly encouraged, but optional depending on laboratory capacity and resources)."
* description.extension[language].valueCode = #C0376245 "English Language"
* description.extension[translation].extension[content].valueString = "In diesem Dokument werden die Methoden zur Anleitung der Datenerfassung und der Untersuchung des öffentlichen Gesundheitswesens für die umfassende Beurteilung von Haushaltskontakten von bestätigten COVID-19-Fällen dargelegt. Mit dieser fallbezogenen, prospektiven Studie sollen die Übertragungswege im Haushalt bei im Labor bestätigten 2019-nCoV-Infektionen untersucht werden. Damit sollen schnell und frühzeitig Informationen über die klinischen, epidemiologischen und virologischen Merkmale von 2019-nCoV geliefert werden. 
Dabei werden drei Hauptziele verfolgt:
1) Um Kenntnisse hinsichtlich des Ausmaßes von Übertragungen innerhalb eines Haushalts zu gewinnen, soll auf Indivdualebene die Sekundärinfektionsrate geschätzt werden und Faktoren, die die ein solches Sekundärinfektionsrisiko beeinflussen, untersucht werden. 
2) Charakterisierung der Sekundärfälle, einschließlich des Spektrums klinischer Krankheitsbilder, der Risikofaktoren für die Infektion und des Ausmaßes und Anteils asymptomatisch verlaufender Infektionen.
3) Charakterisierung der serologischen Reaktion nach einer bestätigten 2019-nCoV-Infektion (wird dringend empfohlen, ist aber je nach Laborkapazität und Ressourcen optional)."
* description.extension[translation].extension[lang].valueCode = #de "German"
/// Details
* extension[resourceType].valueCoding = $Remaining#021 "Other study document"
* content.attachment[=].extension[label].extension[value].valueString = "WHO-2019-nCoV-HHtransmission"
* content.attachment[=].extension[label].extension[type].valueCoding = $Remaining#136 "Acronym"
* content.attachment[=].extension[label].extension[language].valueCode = $UMLS#C0376245 "English Language"
* extension[keywords][0].extension[label].valueString = "COVID-19"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords][+].extension[label].valueString = "Questionnaire"
* extension[keywords][=].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* content.attachment[=].language = #en "English"
* content.attachment[=].url = "https://www.who.int/publications/i/item/household-transmission-investigation-protocol-for-2019-novel-coronavirus-(2019-ncov)-infection"
* content.attachment[=].extension[version].valueString = "2.2"
* extension[resourceTypeGeneral].valueCoding = $NCI#C25704 "Text (Manufactured Object)"
* content.format.display = "PDF"
* extension[useRights].extension[copyrightLabel].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
* extension[useRights].extension[useRightsDescription].valueString = " This document is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 IGO (CC BY-NC-SA 3.0 IGO) License. To view a copy of the license, visit https://creativecommons.org/licenses/by-nc-sa/3.0/igo/legalcode."
// Roles
* extension[roles][0].extension[party].valueReference = Reference(InstanceOfOrganizationCreatorWHO)
* extension[roles][=].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C42781 "Author (Human)"
* extension[roles][+].extension[party].valueReference = Reference(InstanceOfOrganizationContactWHO)
* extension[roles][=].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[roles][=].extension[roleOrganisational].valueCoding = $NCI#C25461 "Contact Person (Human)"
// Related Resources
* extension[relatedResources].extension[relatedArtifactNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "122"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* extension[relatedResources].extension[relatedArtifactNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][0].valueRelatedArtifact.extension[identifier].valueIdentifier.value = "WHO/2019-nCoV/HHtransmission/2020.4"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[identifier].valueIdentifier.type = $UMLS#C0205394 "Other (Qualitative Concept)"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.extension[relationType].valueCoding = $Remaining#072 "A is identical to B"
* extension[relatedResources].extension[relatedArtifactNonNFDI4Health][=].valueRelatedArtifact.type = #documentation //mandatory in FHIR
