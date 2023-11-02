Instance: nfdi4health-cps-mds-capability-statement
InstanceOf: CapabilityStatement
Usage: #definition
* url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-cps-mds-capability-statement"
* version = "0.9"
* status = #draft
* publisher = "NFDI4Health"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.nfdi4health.de"
* name = "NFDI4HEALTH_CPS_MDS_CAPABILITY_STATMENT"
* title = "Nfdi4Health CPS MDS Capability Statment"
* description = "The CapabilityStatement describes all mandatory interactions for a system to be conformant to the MDS of Nfdi4Health"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest[+].mode = #server
* date = "2023-11-02"
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
  * insert AddSearchParameter(#SHALL, "masteridentifier", DocumentReference-masterIdentifier, #token, "Master Version Specific Identifier")
  * insert AddSearchParameter(#SHALL, "description", DocumentReference-description, #string, "Human-readable description")
  * insert AddSearchParameter(#SHALL, "format", DocumentReference-content-format, #token, "Format/content rules for the document")
  * insert AddSearchParameter(#SHALL, "language", DocumentReference-content-attachment-language, #token, "Human language of the content BCP-47")

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
  * insert AddSearchParameter(#SHALL, "value", Group.characteristic.valueCodeableConcept, #token, "Value held by characteristic")

//------------------
// Organization
//------------------
* rest[=].resource[+]
  * insert InitResource(#Organization, #SHALL, Organization, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-organization|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "identifier", Organization-identifier, #token, "Any identifier for the organization - not the accreditation issuer's identifier")
  * insert AddSearchParameter(#SHALL, "name", Organization-name, #string, "A portion of the organization's name or alias")
  * insert AddSearchParameter(#SHALL, "address", Organization-address, #string, "A server defined search that may match any of the string fields in the Address - including line/ city/ district/ state/ country/ postalCode/ and/or text")
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
  * insert AddSearchParameter(#SHALL, "identifier", PractitionerRole-identifier, #token, "A practitioner's Identifier")
  * insert AddSearchParameter(#SHALL, "name", PractitionerRole-name, #string, "A server defined search that may match any of the string fields in the HumanName - including family/ give/ prefix/ suffix/ suffix/ and/or text	")
  * insert AddSearchParameter(#SHALL, "given", PractitionerRole-name-given, #string, "A portion of the given name")
  * insert AddSearchParameter(#SHALL, "family", PractitionerRole-name-family, #string, "A portion of the family name")  
//------------------
// Provenance
//------------------
* rest[=].resource[+]
  * insert InitResource(#Provenance, #SHALL, Provenance, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-provenance|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
// CORE
  * insert AddSearchParameter(#SHALL, "agent", Provenance-agent, #reference, "Who participated")
  * insert AddSearchParameter(#SHALL, "target", Provenance-target, #reference, "Target References usually version specific")
  * insert AddSearchParameter(#SHALL, "recorded", Provenance-recorded, #date, "When the activity was recorded / updated")   
//------------------
// Questionnaire
//------------------
* rest[=].resource[+]
  * insert InitResource(#Questionnaire, #SHALL, Questionnaire, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-questionnaire|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
// CORE
  * insert AddSearchParameter(#SHALL, "identifier", Questionnaire-identifier, #token, "External identifier for the questionnaire")
  * insert AddSearchParameter(#SHALL, "title", Questionnaire-title, #string, "The human-friendly name of the questionnaire")
  * insert AddSearchParameter(#SHALL, "version", Questionnaire-version, #token, "The business version of the questionnaire")
  * insert AddSearchParameter(#SHALL, "status", Questionnaire-status, #token, "The current status of the questionnaire")  
  * insert AddSearchParameter(#SHALL, "description", Questionnaire-description, #string, "The description of the questionnaire")     
//------------------
// ResearchStudy
//------------------
* rest[=].resource[+]
  * insert InitResource(#ResearchStudy, #SHALL, ResearchStudy, #SHALL)
  * insert AddSupportedProfile(nfdi4health-pr-mds-study|1.0.0, #SHALL)
  * insert AddInteraction(#read, #SHALL)
  * insert AddInteraction(#search-type, #SHALL)
  // CORE
  * insert AddSearchParameter(#SHALL, "category", ResearchStudy-category, #token, "Classifications for the study")
  * insert AddSearchParameter(#SHALL, "date", ResearchStudy-period, #date, "When the study began and ended")
  * insert AddSearchParameter(#SHALL, "focus", ResearchStudy-focus, #token, "Drugs/devices/etc under study")
  * insert AddSearchParameter(#SHALL, "identifier", ResearchStudy-identifier, #token, "Business Identifier for study")
  * insert AddSearchParameter(#SHALL, "keyword", ResearchStudy-keyword, #token, "Used to search for the study")
  * insert AddSearchParameter(#SHALL, "location", ResearchStudy-location, #token, "Geographic regions for study")
  * insert AddSearchParameter(#SHALL, "site", ResearchStudy-site, #reference, "Facility where study activities are conducted")
  * insert AddSearchParameter(#SHALL, "title", ResearchStudy-title, #string, "Name for this study")
