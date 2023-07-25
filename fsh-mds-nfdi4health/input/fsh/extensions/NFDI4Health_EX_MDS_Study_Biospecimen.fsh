Alias: $nfdi4health-vs-mds-study-biospecimen-retention-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-biospecimen-retention-umls

Extension: NFDI4Health_EX_MDS_Study_Biospecimen
Id: nfdi4health-ex-mds-study-biospecimen
Title: "NFDI4Health EX MDS Study Biospecimen"
Description: "Extension indicating whether samples of biomaterial from study participants are retained in a biorepository, and providing additional information on these biosamples."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-biospecimen"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Biospecimen"
* . ^definition = "Group of items indicating whether samples of biomaterial from study participants are retained in a biorepository, and providing additional information on these biosamples."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    retention 0..* and
    description 0..1 
* extension[retention] ^short = "Which biosamples are retained in a biorepository?"
* extension[retention] ^definition = "Indication whether samples of biomaterial from study participants are retained in a biorepository."
* extension[retention] ^comment = "Short input help: Select all that apply."
* extension[retention].value[x] 1..1
* extension[retention].value[x] only Coding
* extension[retention].valueCoding.code 1..1
* extension[retention].valueCoding.system 1..1
* extension[retention].valueCoding from $nfdi4health-vs-mds-study-biospecimen-retention-umls (required)
* extension[retention].valueCoding ^binding.description = "Value set defining codes to specify which biosamples are retained in a biorepository."
* extension[description] ^short = "Specific types of retained biosamples"
* extension[description] ^definition = "Additional information about biosamples to be retained, i.e. which specific types of biospecimens will be retained (e.g. blood, serum, urine, etc.)."
* extension[description] ^comment = "Short input help: Which specific types of biosamples will be retained (e.g. blood, serum, urine, etc.)?"
* extension[description].value[x] 1..1
* extension[description].value[x] only string

Mapping: NFDI4Health-Study-Biospecimen-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Biospecimen
* extension[retention] -> "1.17.36.3 Resource.studyDesign.nonInterventional.biospecimenRetention"
* extension[description] -> "1.17.36.4 Resource.studyDesign.nonInterventional.biospecimenDescription"