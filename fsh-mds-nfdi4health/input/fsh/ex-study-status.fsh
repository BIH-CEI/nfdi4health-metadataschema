Alias: $nfdi4health-vs-mds-study-overall-status-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-overall-status-umls-local
Alias: $nfdi4health-vs-mds-study-status-when-intervention-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-status-when-intervention-local
Alias: $nfdi4health-vs-mds-study-recruitment-status-register-umls-local = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-recruitment-status-register-umls-local
Alias: $nfdi4health-vs-mds-yes-no-not-applicable-snomedct = https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-yes-no-not-applicable-snomedct

Extension: NFDI4Health_EX_MDS_Study_Status
Id: nfdi4health-ex-mds-study-status
Title: "NFDI4Health EX MDS Study Status"
Description: "Extension informing about the status of a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-study-status"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context.type = #element
* ^context.expression = "ResearchStudy"
* . 1..1
* . ^short = "Status"
* . ^definition = "Group of items providing information about different status of a study (overall status, status of an interventional study, recruitment status, enrolling by invitation status)."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    overall-status 1..1 and
    status-when-intervention 0..1 and
    recruitment-status-register 0..1 and
    status-enrolling-by-invitation 0..1
* extension[overall-status] ^short = "Overall study status"
* extension[overall-status] ^definition = "Overall status of the study."
* extension[overall-status] ^comment = "If at least one study site in a multicenter study has the status 'Ongoing', then the overall status for the study must be 'Ongoing'. | Select one value from the list."
* extension[overall-status].value[x] 1..1
* extension[overall-status].value[x] only Coding
* extension[overall-status].value[x].code 1..1
* extension[overall-status].value[x].system 1..1
* extension[overall-status].value[x] from $nfdi4health-vs-mds-study-overall-status-umls-local (required)
* extension[overall-status].value[x] ^binding.description = "Value set defining codes to specify the overall status of a study."
* extension[status-when-intervention] ^short = "Do participants receive an intervention?"
* extension[status-when-intervention] ^definition = "Specification whether study participants receive intervention or have completed it but are still being followed according to the primary objective of the study."
* extension[status-when-intervention] ^comment = "Select one value from the list."
* extension[status-when-intervention].value[x] 1..1
* extension[status-when-intervention].value[x] only Coding
* extension[status-when-intervention].value[x].code 1..1
* extension[status-when-intervention].value[x].system 1..1
* extension[status-when-intervention].value[x] from $nfdi4health-vs-mds-study-status-when-intervention-local (required)
* extension[status-when-intervention].value[x] ^binding.description = "Value set defining codes to specify the status of a study when it was halted."
* extension[recruitment-status-register] ^short = "Overall recruitment status of the study from the register of clinical trials"
* extension[recruitment-status-register] ^definition = "Overall recruitment status of the study as indicated in the corresponding register of clinical trials."
* extension[recruitment-status-register] ^comment = "The item applies only to studies automatically uploaded from the registers of clinical trials."
* extension[recruitment-status-register].value[x] 1..1
* extension[recruitment-status-register].value[x] only Coding
* extension[recruitment-status-register].value[x].code 1..1
* extension[recruitment-status-register].value[x].system 1..1
* extension[recruitment-status-register].value[x] from $nfdi4health-vs-mds-study-recruitment-status-register-umls-local (required)
* extension[recruitment-status-register].value[x] ^binding.description = "Value set defining codes to specify the study recruitment status (from a register) in a ResearchStudy resource."
* extension[status-enrolling-by-invitation] ^short = "Are participants enrolled by invitation?"
* extension[status-enrolling-by-invitation] ^definition = "Specification whether study participants have been selected from a predetermined population or enrolled by invitation."
* extension[status-enrolling-by-invitation].value[x] 1..1
* extension[status-enrolling-by-invitation].value[x] only Coding
* extension[status-enrolling-by-invitation].value[x].code 1..1
* extension[status-enrolling-by-invitation].value[x].system 1..1
* extension[status-enrolling-by-invitation].value[x] from $nfdi4health-vs-mds-yes-no-not-applicable-snomedct (required)
* extension[status-enrolling-by-invitation].value[x] ^binding.description = "Value set used to respond to questions that can be answered Yes, No, or Not Applicable."

Mapping: NFDI4Health-Study-Status-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Status
* extension[overall-status] -> "1.17.7 Resource.studyDesign.status"
* extension[status-when-intervention] -> "1.17.8 Resource.studyDesign.statusWhenIntervention"
* extension[recruitment-status-register] -> "1.17.12 Resource.studyDesign.recruitmentStatusRegister"
* extension[status-enrolling-by-invitation] -> "1.17.11 Resource.studyDesign.statusEnrollingByInvitation"