ValueSet: NFDI4Health_VS_MDS_Time_Units_UCUM
Id: nfdi4health-vs-mds-time-units-ucum
Title: "NFDI4Health VS MDS Provenance Time Units [UCUM]"
Description: "Value set defining codes for time units from UCUM."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/ValueSet/nfdi4health-vs-mds-time-units-ucum"
* ^status = #draft
* ^version = "0.9"
* ^experimental = true
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* $UCUM#a "year"
* $UCUM#mo "month"
* $UCUM#we "week"
* $UCUM#d "day"
* $UCUM#h "hour"
* $UCUM#min "minute"
* $Remaining#001 "weeks of gestation"