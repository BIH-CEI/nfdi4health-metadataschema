Extension: NFDI4Health_EX_MDS_CodeableConcept
Id: nfdi4health-ex-mds-uri
Title: "NFDI4Health EX MDS CodeableConcept"
Description: "Extension defining the NFDI4Health representation of CodeableConcept"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-codeableconcept"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "Coding"

* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-codeableconcept" (exactly)

* . ^short = "NFDI4Health Codeable Concept"
* . ^definition = "NFDI4Health Representation of Codeable Concept."
* extension contains
    classification 1..1 and
    code 0..1

* extension[classification] ^short = "Terminology/classification"
* extension[classification] ^definition = "Terminology/classification used for the focus area or condition."
* extension[classification] ^comment = "Short Input Help: If used, name of the terminology/classification."
* extension[classification] ^example.label = "Example of a terminology/classification"
* extension[classification] ^example.valueCode = $NCI#C49469
* extension[classification].value[x] only Coding
* extension[classification].valueCoding from NFDI4Health_VS_MDS_Study_Conditions_Classification_NCI_Local (required)

* extension[code].value[x] only uri
* extension[code] ^short = "Code"
* extension[code] ^definition = "Code of the health condition or focus of the [RESOURCE] in the terminology/classification."
* extension[code] ^comment = "Short input help: If known, you can provide the code from the terminology/classification used."
* extension[code] ^example.label = "Example of a URI for a SNOMED CT concept."
* extension[code] ^example.valueUri = "http://snomed.info/id/840533007"




Mapping: NFDI4Health-NFDI4Health-CodeableConcept-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_CodeableConcept
* extension[code] -> "Design.focus.code"
* extension[code] -> "Design.conditions.code"
* extension[classification] -> "Design.focus.classification"
* extension[classification] -> "Design.conditions.classification"