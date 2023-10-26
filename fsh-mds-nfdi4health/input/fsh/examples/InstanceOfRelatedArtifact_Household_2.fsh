Instance: InstanceOfRelatedArtifact_Household_Non_NFDI
InstanceOf: NFDI4Health_PR_MDS_Related_Artifact_Resource
Usage: #inline
Title: "Instance Of Related Artifact Non NFDI"
Description: "Example data representing Related Artifact"


* extension[nonNFDI4HealthResource].extension[identifier].valueString = "WHO/2019-nCoV/HHtransmission/2020.4"
* extension[nonNFDI4HealthResource].extension[scheme].valueCoding = $UMLS#C0205394 "Other (Qualitative Concept)"
* extension[nonNFDI4HealthResource].extension[relationType].valueCoding = $Remaining#072 "A is identical to B"
* type = #documentation //mandatory in FHIR