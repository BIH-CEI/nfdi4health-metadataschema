Alias: $nfdi4health-vs-mds-study-biospecimen-retention-umls = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-biospecimen-retention-umls

Extension: NFDI4Health_EX_MDS_Biospecimen
Id: nfdi4health-ex-mds-biospecimen
Title: "NFDI4Health EX MDS Biospecimen"
Description: "Extension indicating whether samples of biomaterial from participants are retained in a biorepository, and providing additional information on these biosamples."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-biospecimen"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 0..1
* . ^short = "Biospecimen"
* . ^definition = "Group of items indicating whether samples of biomaterial from participants are retained in a biorepository, and providing additional information on these biosamples."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    retention 0..* and
    description 0..1 
* extension[retention] ^short = "Biosamples retained in a biorepository"
* extension[retention] ^definition = "Indication whether samples of biomaterials from participants of the [RESOURCE] are retained in a biorepository."
* extension[retention] ^comment = "Short input help: Select all that apply."
* extension[retention].value[x] 1..1
* extension[retention].value[x] only Coding
* extension[retention].valueCoding.code 1..1
* extension[retention].valueCoding.system 1..1
* extension[retention].valueCoding from NFDI4Health_VS_MDS_Study_Biospecimen_Retention_NCI (required)
* extension[retention].valueCoding ^binding.description = "Value set defining codes to specify which biosamples are retained in a biorepository."
* extension[description] ^short = "Specific types of retained biosamples"
* extension[description] ^definition = "Additional information about retained biosamples, i.e. an indication of the specific types of retained biospecimens (e.g. blood, serum, urine, etc.)."
* extension[description] ^comment = "You can provide here specific types of retained biosamples (e.g. blood, serum, urine, etc.)."
* extension[description] ^example.label = "Example of a specific type of a retained biosample"
* extension[description] ^example.valueString = "blood"
* extension[description].value[x] 1..1
* extension[description].value[x] only string

Mapping: NFDI4Health-Biospecimen-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Biospecimen
* extension[retention] -> "1.17.27.3 Design.nonInterventional.biospecimenRetention"
* extension[description] -> "1.17.27.4 Design.nonInterventional.biospecimenDescription"