
//Example

Instance: Test
InstanceOf: NFDI4Health_PR_MDS_Questionnaire
Title:"Test"
Usage:#example
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
* identifier.value ="96"
* title ="CRISIS Questionnaire - Youth Self-Report Baseline Form: Current Form"
* title.extension[translation].extension[lang].value[x] = #297487008 // SNOMED CODE angeben? 
* extension[label].extension[value].value[x] = "CRISIS Youth Baseline Current Form"
* extension[label].extension[type].value[x].code = #acronym //?
* extension[label].extension[langugae].value[x] = #EN
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
* extension[keywords].extension[label].value[x] = "COVID-19"
* extension[keywords].extension[code].value[x] = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords].extension[label].value[x] = "Questionnaire"
* extension[keywords].extension[code].value[x] = "https://id.nlm.nih.gov/mesh/T000997092.html"
* extension[webpage].value[x] = "http://www.crisissurvey.org/download/"
* extension[format].value[x] = "PDF"
* version = "V0.3"
* copyright.extension[label].value[x] = #UseRights#CC-BY-SA-4.0
* copyright.extension[useRightsConfimations].extension[authorsConfirmationOne].value[x] = false
* copyright.extension[useRightsConfimations].extension[authorsConfirmationTwo].value[x] = false
* copyright.extension[useRightsConfimations].extension[authorsConfirmationThree].value[x] = false
* copyright.extension[useRightsConfimations].extension[supportByLicensing].value[x] = false
* copyright = "For reuse purposes, copies of all forms, their translations and scoring information can be found on the download page of the CRISIS project."
* extension[associatedParty][0].extension[party]. // Backboneelement ??
* extension[associatedParty].extension[party].value[x] = "NFDI4Health PR MDS Organization" // repeating item for personal instance
* extension[associatedParty].extension[name-type].value[x] = #C0220885 