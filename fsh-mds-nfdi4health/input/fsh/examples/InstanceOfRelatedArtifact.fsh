Instance: InstanceOfRelatedArtifact
InstanceOf: NFDI4Health_PR_MDS_Related_Artifact_Resource
Usage: #inline
Title: "Instance Of Related Artifact NFDI"
Description: "Example data representing Related Artifact"

* type = #documentation //mandatory in FHIR

// NFDI4Health IDs
* extension[NFDI4HealthResource][0].extension[identifier].valueIdentifier.value = "122"
* extension[NFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $Remaining#104 "NFDI4Health" (exactly)
* extension[NFDI4HealthResource][=].extension[identifier].valueIdentifier.system = "https://csh.nfdi4health.de/resource/" (exactly)
* extension[NFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#075 "A is source of B"

// Non NFDI4Health IDs
* extension[nonNFDI4HealthResource][0].extension[identifier].valueIdentifier.value = "WHO/2019-nCoV/HHtransmission/2020.4"
* extension[nonNFDI4HealthResource][=].extension[identifier].valueIdentifier.type = $NCI#C17649 "Other"
* extension[nonNFDI4HealthResource][=].extension[relationType].valueCoding = $Remaining#072 "A is identical to B"

// Webpage
* url = "www.nfdi4health.de"