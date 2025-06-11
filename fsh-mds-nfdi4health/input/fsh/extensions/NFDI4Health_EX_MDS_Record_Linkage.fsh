Extension: NFDI4Health_EX_MDS_Record_Linkage
Id: nfdi4health-ex-mds-record-linkage
Title: "NFDI4Health EX MDS Record Linkage"
Description: "Group of items providing information on record linkage. Based on NFDI4Health Record Linkage Module schema version 3.3.1." 
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-record-linkage"
* ^version = "1.0.0"  
* ^status = #draft    
* ^date = "2024-12-06"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Library"
* . 0..1
* . ^short = "Information about record linkage for the [RESOURCE]"
* . ^definition = "Group of items providing information on record linkage. (Source: MDS v3.3.1)"
* . ^comment = "Applies only if Design.dataSharingPlan.recordLinkage has been answered with Yes/True (as per source XML condition for the RecordLinkage group)." // Clarified comment based on XML

* extension contains
    legalBasis 0..1 and
    legalBasisDetails 0..1 and
    informedConsent 0..1 and
    responsibleInstitutions 0..* and
    additionalCosts 0..1 and
    identifiers 0..* and
    furtherDetails 0..1 and
    exampleResources 0..*

* extension[legalBasis] ^short = "Legal regulation/permission for record linkage"
* extension[legalBasis] ^definition = "Indication whether there are specific regulations/permissions for record linkage."
* extension[legalBasis] ^comment = "Additional Information: Whether any specific legal regulations/permissions exist (e.g. for social data, for cancer registry data, hospital data, etc.). (Source: XML RecordLinkage.legalBasis)"
* extension[legalBasis].value[x] only boolean

* extension[legalBasisDetails] ^short = "Specific legal basis allowing record linkage"
* extension[legalBasisDetails] ^definition = "Information specifying which specific legal basis allows for record linkage."
* extension[legalBasisDetails] ^comment = "Additional Information: If existing, any specific legal regulations/permissions (e.g. for social data, for cancer registry data, hospital data, etc.). Cardinality in source XML: 1..1 if RecordLinkage.legalBasis is 'True'/'Yes'; otherwise 0..0. (Source: XML RecordLinkage.legalBasisDetails)" // Updated: Added conditional cardinality from XML
* extension[legalBasisDetails].value[x] only string

* extension[informedConsent] ^short = "Informed consent for record linkage obtained?"
* extension[informedConsent] ^definition = "Indication whether an informed consent that allows record linkage has been obtained."
* extension[informedConsent].value[x] only boolean

* extension[responsibleInstitutions] ^short = "Responsible authorities"
* extension[responsibleInstitutions] ^definition = "Institutions and authorities that must agree to the record linkage."
* extension[responsibleInstitutions].value[x] only string

* extension[additionalCosts] ^short = "Additional costs for record linkage"
* extension[additionalCosts] ^definition = "Indication whether there are additional costs for record linkage."
* extension[additionalCosts].value[x] only boolean

* extension[identifiers].value[x] only Identifier
* extension[identifiers].valueIdentifier.value ^short = "Identifiers for record linkage"
* extension[identifiers].valueIdentifier.value ^definition = "Identifiers that can be used for record linkage (e.g. names, date of birth, zip code, insurance number or control number as in cancer registries)."

* extension[furtherDetails] ^short = "Further details important for conducting record linkage"
* extension[furtherDetails] ^definition = "Additional important details for conducting record linkage."
* extension[furtherDetails].value[x] only string

* extension[exampleResources] ^short = "Record linkage example resources"
* extension[exampleResources] ^definition = "DOIs of additional related resources specific to record linkage (e.g., publications)."
* extension[exampleResources] ^comment = "Short Input Help: Please do not repeat those already entered in the section 'Related resources'."
* extension[exampleResources].value[x] only string


Mapping: NFDI4Health-Record-Linkage-to-FHIR
Id: NFDI4Health-MDS-RecordLinkage-v3-3-1
Title: "NFDI4Health MDS Record Linkage (Schema 3.3.1) to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Record_Linkage
* -> "RL1 RecordLinkage"
* extension[legalBasis].valueBoolean -> "RecordLinkage.legalBasis (XML nfdhtfcov19-dataelement-123)"
* extension[legalBasisDetails].valueString -> "RecordLinkage.legalBasisDetails (XML nfdhtfcov19-dataelement-125)"
* extension[informedConsent].valueBoolean -> "RecordLinkage.informedConsent (XML nfdhtfcov19-dataelement-126)"
* extension[responsibleInstitutions].valueString -> "RecordLinkage.responsibleInstitutions (XML nfdhtfcov19-dataelement-127)"
* extension[additionalCosts].valueBoolean -> "RecordLinkage.additionalCosts (XML nfdhtfcov19-dataelement-128)"
* extension[identifiers].valueIdentifier -> "RecordLinkage.identifiers (XML nfdhtfcov19-dataelement-129)"
* extension[furtherDetails].valueString -> "RecordLinkage.furtherDetails (XML nfdhtfcov19-dataelement-130)"
* extension[exampleResources].valueString -> "RecordLinkage.exampleResources (XML nfdhtfcov19-dataelement-131)"