Instance: nfdi4health-document-example
InstanceOf: NFDI4Health_PR_MDS_Document
Title: "Document Example"
Usage: #example
* masterIdentifier.value = "98"
* status = #current
* description = "The ISARIC-WHO Case Report Forms (CRFs) should be used to collect standardised clinical data on individuals presenting with suspected or confirmed COVID-19 to improve patient care and inform the public health response. There are 2 forms available to choose from: the CORE form and the RAPID form.
The CORE CRF is a more comprehensive form with more variables to understand the spectrum of disease and management, especially on pathogen testing, critical care interventions, and medications. It can be used where resources allow the collection of more data."
* content.attachment.title.extension[translation].extension[lang].valueCode = #en-US
* content.attachment.title.extension[translation].extension[content].valueString = "ISARIC COVID-19 CORE Case Report Form"
* content.attachment.title.extension[language].valueCode = #EN(English) //?
* extension[label].extension[value].valueString.extension[translation].extension[lang].valueCode = #en-US
* extension[label].extension[value].valueString.extension[translation].extension[content].valueString = "ISARIC COVID-19 CORE CRF"
* extension[label].extension[type].valueCoding.display = "Acronym"
* extension[label].extension[type].valueCoding.code = #acronym 
* extension[label].extension[language].valueCode = #en-US
* extension[descriptions_non_english].extension[text].valueString = "Die ISARIC-WHO Case Report Forms (CRFs) sollen dazu verwendet werden, standartisierte klinische Daten von Individuen mit verdacht auf oder bestätigter COVID-19 Infektion zu sammeln, um die Versorgung des Patienten und die Informationsübermittlung zu verbessern. Es gibt 2 CRFs zwischen denen gewählt werden kann: Das CORE Formular und das RAPID Formular.
Das CORE CRF ist ein umfassenderes Formular mit mehr Variablen, um das Spektrum der Krankheit und des Managements zu verstehen, insbesondere in Bezug auf Erregertests, Interventionen in der Intensivpflege und Medikamente. Es kann verwendet werden, wenn die Ressourcen die Erfassung von mehr Daten erlauben." //Extension "NFDI4Health_EX_MDS_Description_Non_English" hat die ID "nfdi4health-ex-mds-provenance-data-source"??
* extension[descriptions_non_english].extension[language].valueCoding = #DE(Deutsch)
* extension[keywords].extension[label].valueString = "COVID-19"
* extension[keywords].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/D000086382.html"
* extension[keywords].extension[label].valueString = "Questionnaire"
* extension[keywords].extension[code].valueUri = "https://id.nlm.nih.gov/mesh/T000997092.html"
* extension[associatedParty].extension[party].valueReference = Reference(PractitionerRoleExample1)
* extension[associatedParty].extension[nameType].valueCoding = #C1519021
* extension[related][0].extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/"
* extension[related][0].extension[identifier].valueIdentifier.value = "118"
* extension[related][0].extension[relationType].valueCodeableConcept = $Remaining#075 "A is source of B"
//* extension[related][1].extension[identifier].valueIdentifier.type.coding.code = #DOI
* extension[related][1].extension[identifier].valueIdentifier.system = "https://www.medrxiv.org/"
* extension[related][1].extension[identifier].valueIdentifier.value = "https://doi.org/10.1101/2020.07.17.20155218"
* extension[related][1].extension[relationType].valueCodeableConcept = $Remaining#057 "A is supplemented by B"
