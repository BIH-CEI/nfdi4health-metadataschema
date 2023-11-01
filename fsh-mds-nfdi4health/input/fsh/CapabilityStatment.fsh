Instance: nfdi4health-cps-mds-capability-statement
InstanceOf: CapabilityStatement
Usage: #definition
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-cps-mds-capability-statement"
* ^version = "0.9"
* ^status = #draft
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* name = "NFDI4HEALTH_CPS_MDS_CAPABILITY_STATMENT"
* title = "Nfdi4Health CPS MDS Capability Statment"
* description = "The CapabilityStatement describes all mandatory interactions for a system to be conformant to the MDS of Nfdi4Health"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest[+].mode = #server

//------------------
// Location (Centers)
//------------------
* rest[=].resource[+]
  * insert InitResource(#Location, #SHALL, Location, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-centers|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
// ?


//------------------
// DocumentReference
//------------------
* rest[=].resource[+]
  * insert InitResource(#DocumentReference, #SHALL, DocumentReference, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-document|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "identifier", DocumentReference-identifier, #token, "Master Version Specific Identifier")
  * insert AddSearchParameter(#SHALL, "identifier", DocumentReference-masterIdentifier, #token, "Master Version Specific Identifier")
  * insert AddSearchParameter(#SHALL, "description", DocumentReference-description, #string, "Human-readable description")
  * insert AddSearchParameter(#SHALL, "format", DocumentReference-content-format, #token, "Format/content rules for the document")
  * insert AddSearchParameter(#SHALL, "language", DocumentReference-content-attachment-language, #token, "Human language of the content (BCP-47))

//------------------
// EvidenceVariable
//------------------
* rest[=].resource[+]
  * insert InitResource(#EvidenceVariable, #SHALL, EvidenceVariable, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-evidence-variable-intervention-exposure|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
   // CORE
  * insert AddSearchParameter(#SHALL, "identifier", EvidenceVariable-identifier, #token, "External identifier for the evidence variable")
  * insert AddSearchParameter(#SHALL, "title", EvidenceVariable-title, #string, "The human-friendly name of the evidence variable")
  * insert AddSearchParameter(#SHALL, "description", EvidenceVariable-description, #string, "The description of the evidence variable")

//------------------
// Group
//------------------
* rest[=].resource[+]
  * insert InitResource(#Group, #SHALL, Group, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-group-actual|1.0.0, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-group-intended|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "actual", Group-actual, #token, "Descriptive or actual")
  * insert AddSearchParameter(#SHALL, "characteristic", Group-characteristic, #token, "Kind of characteristic")
  * insert AddSearchParameter(#SHALL, "value", Group.characteristic.value as CodeableConcept, #token, "Value held by characteristic")

//------------------
// Organization
//------------------
* rest[=].resource[+]
  * insert InitResource(#Organization, #SHALL, Organization, #SHALL)
  * insert AddSupportedProfile(nnfdi4health-pr-mds-organization|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "identifier", Organization-identifier, #token, "Any identifier for the organization - not the accreditation issuer's identifier")
  * insert AddSearchParameter(#SHALL, "name", Organization-name, #string, "A portion of the organization's name or alias")
  * insert AddSearchParameter(#SHALL, "address", Organization-address, #string, "A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text")
  * insert AddSearchParameter(#SHALL, "partOf", Organization-partOf, #reference, "An organization of which this organization forms a part")


//------------------
// PractitionerRole
//------------------
* rest[=].resource[+]
  * insert InitResource(#PractitionerRole, #SHALL, PractitionerRole, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-practitioner-role|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  //* insert AddSearchParameter(#SHALL, "identifier", PractitionerRole-identifier, #token, "A practitioner's Identifier")
  * insert AddSearchParameter(#SHALL, "practitioner", PractitionerRole-practitioner, #reference, "Practitioner that is able to provide the defined services for the organization")
  * insert AddSearchParameter(#SHALL, "organization", PractitionerRole-organization, #reference, "The identity of the organization the practitioner represents / acts on behalf of")
  * insert AddSearchParameter(#SHALL, "phone", 	PractitionerRole.telecom.system='phone', #token, "A value in a phone contact")


//------------------
// Practitioner
//------------------
* rest[=].resource[+]
  * insert InitResource(#Practitioner, #SHALL, Practitioner, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-practitioner|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "practitioner", PractitionerRole-practitioner, #token, "")
  * insert AddSearchParameter(#SHALL, "practitioner", PractitionerRole-practitioner, #token, "")
//------------------
// Provenance
//------------------
* rest[=].resource[+]
  * insert InitResource(#Provenance, #SHALL, Provenance, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-provenance|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
//------------------
// Questionaire
//------------------
* rest[=].resource[+]
  * insert InitResource(#Questionaire, #SHALL, Questionaire, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-questionnaire|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
//------------------
// ResearchStudy
//------------------
* rest[=].resource[+]
  * insert InitResource(#ResearchStudy, #SHALL, ResearchStudy, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-study|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
