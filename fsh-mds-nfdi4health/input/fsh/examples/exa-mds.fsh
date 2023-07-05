Instance: nfdi4health-exa-mds
InstanceOf: Questionnaire
Usage: #example
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-exa-mds"
* version = "3.0"
* status = #draft
* identifier[0].value = "10.4126/FRL01-006439110"
* identifier[=].system = "https://www.doi.org/"
* title = "Metadata schema of the NFDI4Health and the NFDI4Health Task Force COVID-19 (V3_0)"
* language = #en
* publisher = "NFDI4Health"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.nfdi4health.de"
* copyright = "CC BY 4.0"
* code[0].display = "Epidemiology"
* code[+].display = "COVID-19"
* code[+].display = "Standard"
* code[+].display = "Clinical trials"
* code[+].display = "Metadata"
* code[+].display = "FAIR principles"
* code[+].display = "Public Health"
* code[+].display = "Metadata model"

// Resource
* item[0].linkId = "1"
//* item[=].text = "Resource"
* item[=].type = #group
//* item[=].repeats = false
//* item[=] ^label = "Resource"
//* item[=] ^definition = "Group of items providing  Information about a resource. Resources can be, for example,  files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also abstractions (e.g. studies or substudies/data collection events)."

// Resource.identifier
//* item[=].item[+] ^label = "Resource.identifier"
//* item[=].item[+] ^definition = "Unique identifier of the resource used for identification within the NFDI4Health."
//* item[=].item[+] ^comment = "Additional information: The identifier is assigned automatically."
* item[=].item[+].linkId = "1.1"
* item[=].item[=].text = "ID of the [RESOURCE]"
* item[=].item[=].definition = Test_Element_Definition
* item[=].item[=].type = #string
* item[=].item[=].repeats = false

// Resource.classification
//* item[=].item[+].linkId = "1.2 Resource.classification"
//* item[=].item[=].text = "Classification of the resource within the predefined categories"
//* item[=].item[=].definition = "Group of items providing  Information about classification of the resource within the predefined categories."
//* item[=].item[=].type = #group
//* item[=].item[=].repeats = false
//* item[=].item[=].item[0].linkId = "1.2.1 Resource.classification.resourceType"
//* item[=].item[=].item[0].text = "Type of the resource"
//* item[=].item[=].item[0].definition = "A term describing the resource. | Additional Information: The selected value determines which type of information needs to be provided. | Short Input Help: You can register a study, a study protocoll, a questionnaire, etc."
//* item[=].item[=].item[0].type = #choice
//* item[=].item[=].item[0].repeats = false
//* item[=].item[=].item[0].answerOption.valueCoding from NFDI4Health_VS_MDS_Resource_Type_UMLS_Local (required)
//* item[=].item[=].item[+].linkId = "1.2.2 Resource.classification.resourceTypeGeneral"
//* item[=].item[=].item[=].text = "A more general type of the resource"
//* item[=].item[=].item[=].definition = "A more general term describing the resource which forms a pair with the property 'Type of the resource' (e.g. 'Questionnaire'/'Text')."
//* item[=].item[=].item[=].type = #choice
//* item[=].item[=].item[=].answerOption.valueCoding from NFDI4Health_VS_MDS_Resource_Type_General_NCI_UMLS_Local (required)
//* item[=].item[=].item[=].repeats = false
//* item[=].item[=].item[=].required = true
//* item[=].item[=].item[=].enableWhen[0].question = "1.2.1 Resource.classification.resourceType"
//* item[=].item[=].item[=].enableWhen[0].operator = #!=
//* item[=].item[=].item[=].enableWhen[0].answerCoding.code = #C0947630
//* item[=].item[=].item[=].enableWhen[0].answerCoding.system = $UMLS
//* item[=].item[=].item[=].enableWhen[+].question = "1.2.1 Resource.classification.resourceType"
//* item[=].item[=].item[=].enableWhen[=].operator = #!=
//* item[=].item[=].item[=].enableWhen[=].answerCoding.code = #C4288169
//* item[=].item[=].item[=].enableWhen[=].answerCoding.system = $UMLS
//* item[=].item[=].item[=].enableWhen[+].question = "1.2.1 Resource.classification.resourceType"
//* item[=].item[=].item[=].enableWhen[=].operator = #!=
//* item[=].item[=].item[=].enableWhen[=].answerCoding.code = #C0010995
//* item[=].item[=].item[=].enableWhen[=].answerCoding.system = $UMLS
//
//* item[=].item[+].linkId = "1.3 Resource.titles"
//* item[=].item[=].text = "Title(s)/name(s) of the [RESOURCE]"
//* item[=].item[=].definition = "Group of items providing  Information about title(s)/name(s) of the resource."
//* item[=].item[=].type = #group
//* item[=].item[=].repeats = true
//* item[=].item[=].required = true
//* item[=].item[=].item[+].linkId = "1.3.1 Resource.titles.text"
//* item[=].item[=].item[=].text = "Title/name"
//* item[=].item[=].item[=].definition = "Scientific unabbreviated title or name of the resource. | Additional Information: If no official title/name has been defined yet, please provide a title/name that is suitable for public display. | Short Input Help: Please provide at least one title/name of the resource. If the original title is not in English, please also provide an English translation of the original title."
//* item[=].item[=].item[=].type = #string
//* item[=].item[=].item[=].repeats = false
//* item[=].item[=].item[=].required = true
//* item[=].item[=].item[+].linkId = "1.3.2 Resource.titles.language"
//* item[=].item[=].item[=].text = "Language of the title/name"
//* item[=].item[=].item[=].definition = "Language of the title/name."
//* item[=].item[=].item[=].type = #choice
//* item[=].item[=].item[=].answerOption.valueCoding from http://hl7.org/fhir/ValueSet/languages (required)
//* item[=].item[=].item[=].repeats = false
//* item[=].item[=].item[=].required = true
//