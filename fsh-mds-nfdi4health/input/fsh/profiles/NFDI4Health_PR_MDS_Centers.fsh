Profile: NFDI4Health_PR_MDS_Centers
Parent: Location
Id: nfdi4health-pr-mds-centers
Title: "NFDI4Health PR MDS Centers"
Description: "Profile intended to capture information on the number of centers invovled in a study."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-pr-mds-centers"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* obeys centers-a and centers-b


* type 0..1
* type ^short = "Mono- or multicentric?"
* type ^definition = "Specification whether the data are collected at only one or at more than one study center.	"
* type ^comment = "0..1, if Resource.classification.type == ('C63536' OR 'C198230'); otherwise 0..0"
* type from NFDI4Health_VS_MDS_Study_Centers_SNOMEDCT_Local (required)
* description 0..1
* description ^short = "Number of centers" 
* description ^definition = "Number of study centers involved in data collection."



Mapping: NFDI4Health-Centers-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_PR_MDS_Centers
* description -> "Design.centersNumber"
* type -> "Design.centers"


Invariant: centers-a
Description: "Cardinality: 0..1, if Design.centers == '255206009'"
Severity: #error
Expression: "type.where(code = '255206009').exists() implies description.exists()"

Invariant: centers-b
Description: "Cardinality: 0..0, if Design.centers != '255206009'"
Severity: #error
Expression: "type.where(code = '084').exists() implies description.exists().not()"


// * extension ^slicing.discriminator.type = #value
// * extension ^slicing.discriminator.path = "url"
// * extension ^slicing.rules = #open
// * extension contains 
//    NFDI4Health_EX_MDS_Centers named centers 0..1