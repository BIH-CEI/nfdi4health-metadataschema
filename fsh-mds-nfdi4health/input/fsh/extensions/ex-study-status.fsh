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
    overallStatus 1..1 and
    statusWhenIntervention 0..1 and
    recruitmentStatusRegister 0..1 and
    statusEnrollingByInvitation 0..1
* extension[overallStatus] ^short = "Overall study status"
* extension[overallStatus] ^definition = "Overall status of the study."
* extension[overallStatus] ^comment = "If at least one study site in a multicenter study has the status 'Ongoing', then the overall status for the study must be 'Ongoing'. | Select one value from the list."
* extension[overallStatus].value[x] 1..1
* extension[overallStatus].value[x] only Coding
* extension[overallStatus].value[x].code 1..1
* extension[overallStatus].value[x].system 1..1
* extension[overallStatus].value[x] from $nfdi4health-vs-mds-study-overall-status-umls-local (required)
* extension[overallStatus].value[x] ^binding.description = "Value set defining codes to specify the overall status of a study."
* extension[statusWhenIntervention] ^short = "Do participants receive an intervention?"
* extension[statusWhenIntervention] ^definition = "Specification whether study participants receive intervention or have completed it but are still being followed according to the primary objective of the study."
* extension[statusWhenIntervention] ^comment = "Select one value from the list."
* extension[statusWhenIntervention].value[x] 1..1
* extension[statusWhenIntervention].value[x] only Coding
* extension[statusWhenIntervention].value[x].code 1..1
* extension[statusWhenIntervention].value[x].system 1..1
* extension[statusWhenIntervention].value[x] from $nfdi4health-vs-mds-study-status-when-intervention-local (required)
* extension[statusWhenIntervention].value[x] ^binding.description = "Value set defining codes to specify the status of a study when it was halted."
* extension[recruitmentStatusRegister] ^short = "Overall recruitment status of the study from the register of clinical trials"
* extension[recruitmentStatusRegister] ^definition = "Overall recruitment status of the study as indicated in the corresponding register of clinical trials."
* extension[recruitmentStatusRegister] ^comment = "The item applies only to studies automatically uploaded from the registers of clinical trials."
* extension[recruitmentStatusRegister].value[x] 1..1
* extension[recruitmentStatusRegister].value[x] only Coding
* extension[recruitmentStatusRegister].value[x].code 1..1
* extension[recruitmentStatusRegister].value[x].system 1..1
* extension[recruitmentStatusRegister].value[x] from $nfdi4health-vs-mds-study-recruitment-status-register-umls-local (required)
* extension[recruitmentStatusRegister].value[x] ^binding.description = "Value set defining codes to specify the study recruitment status (from a register) in a ResearchStudy resource."
* extension[statusEnrollingByInvitation] ^short = "Are participants enrolled by invitation?"
* extension[statusEnrollingByInvitation] ^definition = "Specification whether study participants have been selected from a predetermined population or enrolled by invitation."
* extension[statusEnrollingByInvitation].value[x] 1..1
* extension[statusEnrollingByInvitation].value[x] only Coding
* extension[statusEnrollingByInvitation].value[x].code 1..1
* extension[statusEnrollingByInvitation].value[x].system 1..1
* extension[statusEnrollingByInvitation].value[x] from $nfdi4health-vs-mds-yes-no-not-applicable-snomedct (required)
* extension[statusEnrollingByInvitation].value[x] ^binding.description = "Value set used to respond to questions that can be answered Yes, No, or Not Applicable."

Mapping: NFDI4Health-Study-Status-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Study_Status
* extension[overallStatus] -> "1.17.7 Resource.studyDesign.status"
* extension[statusWhenIntervention] -> "1.17.8 Resource.studyDesign.statusWhenIntervention"
* extension[recruitmentStatusRegister] -> "1.17.12 Resource.studyDesign.recruitmentStatusRegister"
* extension[statusEnrollingByInvitation] -> "1.17.11 Resource.studyDesign.statusEnrollingByInvitation"