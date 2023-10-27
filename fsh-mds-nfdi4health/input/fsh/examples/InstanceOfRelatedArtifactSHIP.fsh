Instance: InstanceOfRelatedArtifactSHIPNonNFDI
InstanceOf: NFDI4Health_PR_MDS_Related_Artifact_Resource
Usage: #inline
Title: "Instance Of Related Artifact SHIP Non NFDI"
Description: "Example data representing Related Artifact"


* extension[nonNFDI4HealthResource].extension[identifier].valueString = "10.1093/ije/dyp394"
* extension[nonNFDI4HealthResource].extension[scheme].valueCoding = $UMLS#C2348291 "Digital Object Identifier (Intellectual Product)"
* extension[nonNFDI4HealthResource].extension[relationType].valueCoding = $Remaining#059 "A is described by B"
* extension[nonNFDI4HealthResource].extension[resourceTypeGeneral].valueCoding = $UMLS#C0282420 "Journal Article (Intellectual Product)"
* type = #documentation //mandatory in FHIR

