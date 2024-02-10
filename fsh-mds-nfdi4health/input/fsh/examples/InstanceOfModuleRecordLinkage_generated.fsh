Alias: $FHIR-version = http://hl7.org/fhir/FHIR-version
Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: 2.16.840.1.113883.3.1937.777.64.4.6--20231207000000
InstanceOf: Questionnaire
Usage: #example
* meta.lastUpdated = "2023-12-07T11:06:06Z"
* meta.tag = $FHIR-version#4.0
* language = #en-US
* url = "https://art-decor.org/fhir/Questionnaire/2.16.840.1.113883.3.1937.777.64.1.5--20231130210338"
* name = "NFDI4Health_Resource"
* title = "NFDI4Health Resource"
* status = #draft
* subjectType = #Patient
* date = "2023-12-07"
* publisher = "BIH @ Charité"
* item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.124"
* item.text = "RecordLinkage"
* item.type = #group
* item.required = true
* item.repeats = false
* item.item[0].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.124-help"
* item.item[=].text = "Information about record linkage for the [RESOURCE]"
* item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].text.extension.valueString = "<p>Information about record linkage for the [RESOURCE]</p>"
* item.item[=].type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.123"
* item.item[=].text = "legalBasis"
* item.item[=].type = #boolean
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.123-help"
* item.item[=].item.text = "Legal regulation/permission for record linkage"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Legal regulation/permission for record linkage</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.125"
* item.item[=].text = "legalBasisDetails"
* item.item[=].type = #string
* item.item[=].required = true
* item.item[=].repeats = false
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.125-help"
* item.item[=].item.text = "Specific legal basis allowing record linkage"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Specific legal basis allowing record linkage</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.126"
* item.item[=].text = "informedConsent"
* item.item[=].type = #boolean
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.126-help"
* item.item[=].item.text = "Informed consent for record linkage"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Informed consent for record linkage</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.127"
* item.item[=].text = "responsibleInstitutions"
* item.item[=].type = #string
* item.item[=].required = false
* item.item[=].repeats = true
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.127-help"
* item.item[=].item.text = "Responsible authorities"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Responsible authorities</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.128"
* item.item[=].text = "additionalCosts"
* item.item[=].type = #boolean
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.128-help"
* item.item[=].item.text = "Additional costs for record linkage"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Additional costs for record linkage</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.129"
* item.item[=].text = "identifiers"
* item.item[=].type = #string
* item.item[=].required = false
* item.item[=].repeats = true
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.129-help"
* item.item[=].item.text = "Identifiers for record linkage"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Identifiers for record linkage</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.130"
* item.item[=].text = "furtherDetails"
* item.item[=].type = #string
* item.item[=].required = false
* item.item[=].repeats = false
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.130-help"
* item.item[=].item.text = "Further details important for conducting record linkage"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Further details important for conducting record linkage</p>"
* item.item[=].item.type = #display
* item.item[+].linkId = "2.16.840.1.113883.3.1937.777.64.2.1.131"
* item.item[=].text = "Short input help: Please do not repeat those already entered in the section 'Related resources'."
* item.item[=].text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
* item.item[=].text.extension.valueMarkdown = "<p><strong>Short input help:</strong> Please do not repeat those already entered in the section 'Related resources'.</p>"
* item.item[=].type = #string
* item.item[=].required = false
* item.item[=].repeats = true
* item.item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item.item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
* item.item[=].item.extension.valueCodeableConcept.text = "Help-Button"
* item.item[=].item.linkId = "2.16.840.1.113883.3.1937.777.64.2.1.131-help"
* item.item[=].item.text = "Record linkage example resources"
* item.item[=].item.text.extension.url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* item.item[=].item.text.extension.valueString = "<p>Record linkage example resources</p>"
* item.item[=].item.type = #display