// WARNING: The following Mapping may be incomplete since the original NFDI4Health_PR_MDS_Document
// StructureDefinition was missing the mapping entry for 1.1.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: 1.1-for-NFDI4Health_PR_MDS_Document
Id: 1.1
Source: NFDI4Health_PR_MDS_Document
* masterIdentifier -> "resource_identifier" "Unique identifier of the resource used for identification within the NFDI4Health."
* masterIdentifier.system -> "resource_identifier"
* masterIdentifier.value -> "resource_identifier"