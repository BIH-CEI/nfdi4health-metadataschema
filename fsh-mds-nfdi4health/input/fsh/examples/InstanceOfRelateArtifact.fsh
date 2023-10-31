Instance: InstanceOfRelatedArtifact
InstanceOf: NFDI4Health_PR_MDS_Related_Artifact_Resource
Usage: #inline
Title: "Instance Of Related Artifact NFDI"
Description: "Example data representing Related Artifact"

// NFDI4Health IDs
* extension[NFDI4HealthResource][0].extension[identifier].valueString = "122"
* extension[NFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#075 "A is source of B"

// Non NFDI4Health IDs
* extension[nonNFDI4HealthResource][0].extension[identifier].valueString = "WHO/2019-nCoV/HHtransmission/2020.4"
* extension[nonNFDI4HealthResource][=].extension[scheme].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
* extension[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#072 "A is identical to B"

* type = #documentation //mandatory in FHIR

// Webpage
* url = "www.nfdi4health.de"