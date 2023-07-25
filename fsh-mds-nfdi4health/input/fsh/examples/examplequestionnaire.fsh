
//Example

Instance: QuestionnaireExample
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title: "Example of the NFDI4Health PR MDS Questionnaire"
Usage: #example
* description = "There are four versions of the CRISIS questionnaires: Baseline, Baseline Current, Follow Up, and Follow Up Current Forms. 
The Baseline Current Form is a shorter version of the Baseline Form that includes: a) Background section that obtains some basic demographic information; and b) Past two-week assessment of the survey domains. In contrast to the Baseline Form, it excludes the past three-month assessment of the survey domains.
Generally, the CRISIS questionnaires include the following domains:
- Background (e.g., Demographics, Health, Family/living situation);
- Coronavirus/covid-19 health/exposure status;
- Life changes due to coronavirus/covid-19 crisis;
- Daily behaviors (e.g., sleep, physical activity, time outdoors);
- Emotions/worries (e.g., mood circumplex);
- Media use (e.g., mobile devices, media, etc.);
- Substance use (e.g., tobacco, alcohol, other drugs)."
* identifier.value = "96"
* title = "CRISIS Questionnaire - Youth Self-Report Baseline Form: Current Form"
* title.extension[translation].extension[lang].valueCode = #297487008
* title.extension[translation].extension[content].valueString = "CRISIS Questionnaire - Youth Self-Report Baseline Form: Current Form"
* extension[label].extension[value].valueString = "CRISIS Youth Baseline Current Form"
* extension[label].extension[type].valueCoding.display = "Acronym"
* extension[label].extension[type].valueCoding.code = #acronym
* extension[label].extension[language].valueCode = #en-US
* extension[keywords].extension[label].valueString = "COVID-19"
* extension[keywords].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords].extension[label].valueString = "Questionnaire"
* extension[keywords].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* extension[webpage].valueUrl = "http://www.crisissurvey.org/download/"
* extension[format].valueString = "PDF"
* version = "V0.3"
* copyright.extension[label].valueCodeableConcept = #UseRights#CC-BY-SA-4.0
* copyright.extension[useRightsConfimations].extension[confirmationAuthority].valueBoolean = false
* copyright.extension[useRightsConfimations].extension[confirmationTerms].valueBoolean = false
* copyright.extension[useRightsConfimations].extension[confirmationIrrevocability].valueBoolean = false
* copyright.extension[useRightsConfimations].extension[supportByLicensing].valueBoolean = false
* copyright = "For reuse purposes, copies of all forms, their translations and scoring information can be found on the download page of the CRISIS project."
* extension[associatedParty][0].extension[party].valueReference = Reference(OrganizationExample1) 
* extension[associatedParty][0].extension[nameType].valueCoding = $UMLS#C0220885 "Organizational (Qualitative Concept)"
* extension[associatedParty][0].extension[roleOrganisational].valueCoding = $Remaining#046 "Public Funder"
* extension[associatedParty][1].extension[party].valueReference = Reference(PractitionerRoleExample1)
* extension[associatedParty][1].extension[nameType].valueCoding = $UMLS#C1519021 "Personal Attribute (Organism Attribute)"
