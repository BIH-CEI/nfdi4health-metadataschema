Instance: ISARIC_COVID-19_CORE_Case_Report_Form
InstanceOf: NFDI4Health_PR_MDS_Document
Title:"ISARIC COVID-19 CORE Case Report Form"
Usage:#example
* masterIdentifier.value = "98"
* status = "current"
* description = "The ISARIC-WHO Case Report Forms (CRFs) should be used to collect standardised clinical data on individuals presenting with suspected or confirmed COVID-19 to improve patient care and inform the public health response. There are 2 forms available to choose from: the CORE form and the RAPID form.
The CORE CRF is a more comprehensive form with more variables to understand the spectrum of disease and management, especially on pathogen testing, critical care interventions, and medications. It can be used where resources allow the collection of more data."
* content.attachment.title.extension[translation].extension[lang].value[x] = #en-US
* content.attachment.title.extension[translation].extension[content].value[x] = "ISARIC COVID-19 CORE Case Report Form"
* content.attachment.title.extension[language].value[x] = #EN(English) //?
* extension[label].extension[value].value[x].extension[translation].extension[lang].value[x] = #en-US
* extension[label].extension[value].value[x].extension[translation].extension[content].value[x] = "ISARIC COVID-19 CORE CRF"
* extension[label].extension[type].value[x].display = "Acronym"
* extension[label].extension[type].value[x].code = #acronym //?
* extension[label].extension[language].value[x].code= #en-US
* extension[descriptions_non_english].extension[text].value[x] = "Die ISARIC-WHO Case Report Forms (CRFs) sollen dazu verwendet werden, standartisierte klinische Daten von Individuen mit verdacht auf oder bestätigter COVID-19 Infektion zu sammeln, um die Versorgung des Patienten und die Informationsübermittlung zu verbessern. Es gibt 2 CRFs zwischen denen gewählt werden kann: Das CORE Formular und das RAPID Formular.
Das CORE CRF ist ein umfassenderes Formular mit mehr Variablen, um das Spektrum der Krankheit und des Managements zu verstehen, insbesondere in Bezug auf Erregertests, Interventionen in der Intensivpflege und Medikamente. Es kann verwendet werden, wenn die Ressourcen die Erfassung von mehr Daten erlauben." //Extension "NFDI4Health_EX_MDS_Description_Non_English" hat die ID "nfdi4health-ex-mds-provenance-data-source"??
* extension[descriptions_non_english].extension[language].value[x] = #DE(Deutsch)
* extension[keywords].extension[label].value[x] = "COVID-19"
* extension[keywords].extension[code].value[x] = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords].extension[label].value[x] = "Questionnaire"
* extension[keywords].extension[code].value[x] = "https://id.nlm.nih.gov/mesh/T000997092.html"
//associatedParty wurde ausgelassen, Klärungsbedarf
* extension[related].extension[identifier].value[x].system = "https://csh.nfdi4health.de/"
* extension[related].extension[identifier].value[x].value = "118"
* extension[related].extension[relation_type].value[x] = #Datapaper //eigentlich Data dictionary
//resource_type_general freigelassen
* extension[related].extension[identifier].value[x].type.coding.code = #DOI
* extension[related].extension[identifier].value[x].system = "https://www.medrxiv.org/"
* extension[related].extension[identifier].value[x].value = "https://doi.org/10.1101/2020.07.17.20155218"
* extension[related].extension[relation_type].value[x] = #Preprint 
//resource_type_general freigelassen
//copyright freigelassen, Klärungsbedarf