Instance: InstanceOfRelatedArtifact_Household_NFDI
InstanceOf: NFDI4Health_PR_MDS_Related_Artifact_Resource
Usage: #inline
Title: "Instance Of Related Artifact NFDI"
Description: "Example data representing Related Artifact"


* extension[NFDI4HealthResource].extension[identifier].valueString = "122"
* extension[NFDI4HealthResource].extension[relationType].valueCoding = $Remaining#075 "A is source of B"
* type = #documentation //mandatory in FHIR