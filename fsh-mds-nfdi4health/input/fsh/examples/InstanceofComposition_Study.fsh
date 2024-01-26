Instance: InstanceOfCompositionSPOVID
InstanceOf: PR_MDS_Composition
Title: "Example of the PR MDS Composition - SPOVID - Sport & Long-COVID-Syndrom"
Usage: #example

// General information
* identifier.value = "98"
* status = #final // mandatory in FHIR, no information in MDS
* date = "2024"
* title = "SPOVID - Sport & Long-COVID-Syndrom"
* author = Reference(InstanceOfOrganizationContactWHO)
* type = $NCI#C63536 "Study"