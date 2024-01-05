ValueSet: NFDI4Health_VS_MDS_Study_Primary_Purpose_HL7_NCI
Id: nfdi4health-vs-mds-study-primary-purpose-hl7-nci
Title: "NFDI4Health VS MDS Study Primary Purpose [HL7, NCI]"
Description: "Value set defining codes to specify the primary purpose of a study in a ResearchStudy resource."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-study-primary-purpose-hl7-nci"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $NCI#C25263 "Prognostic"
* $NCI#C49661 "Pharmacogenomic Study"
* $NCI#C16527 "Medical Economics"
* $NCI#C48660 "Not Applicable"
* $NCI#C17649 "Other"
* $NCI#C129001 "Pharmacogenetic Study"
* $study-prim-purp-type#prevention "Prevention"
* $study-prim-purp-type#diagnostic "Diagnostic"
* $study-prim-purp-type#supportive-care "Supportive Care"
* $study-prim-purp-type#screening "Screening"
* $study-prim-purp-type#health-services-research "Health Services Research"
* $study-prim-purp-type#basic-science "Basic Science"
* $study-prim-purp-type#device-feasibility "Device Feasibility"
* $study-prim-purp-type#treatment "Treatment"