ValueSet: NFDI4Health_VS_MDS_NE_Instrument_NCI_Local
Id: nfdi4health-vs-mds-ne-instrument-snomedct-nci-local
Title: "NFDI4Health NE Instrument [NCI, Local]"
Description: "Value Set to define the instruments used within Diet Assessment"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-ne-instrument-nci-local"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $NCI#C94817 "Food Frequency Questionnaire"
* $NCI#C17994 "Dietary History"
* $NCI#C17649 "Other"
* $Remaining#118 "24-h dietary recall" //226069004 | Review of current diet (procedure) |
* $Remaining#120 "Food record"
* $Remaining#129 "Screener" //  $NCI#C188186 "Dietary Screener Questionnaire (Intellectual Product)" https://ncit.nci.nih.gov/ncitbrowser/ConceptReport.jsp?dictionary=NCI_Thesaurus&version=23.12d&ns=ncit&code=C188186&key=1921661669&b=1&n=null