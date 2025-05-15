Logical: NFDI4Health_LM_MDS_Core
Parent: Element
Id: nfdi4health-lm-mds-core
Title: "NFDI4Health Core Metadataschema"
Description: "NFDI4Health Logical Model of Core V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-core"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"

* Resource 1..1 BackboneElement "Resource"
* Resource ^definition = "Group of items providing information about a resource. Resources can be, for example, files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also studies or substudies."

* Resource.identifier 1..1 string "identifier" "Unique identifier of the resource used for identification within the NFDI4Health."
* Resource.identifier ^comment = "Additional information: The identifier is assigned automatically."

* Resource.classification 1..1  BackboneElement "Resource classification" "Group of items providing information about the classification of the resource within the predefined categories."

* Resource.classification.type 1..1 CodeableConcept "Type of the resource" "A term describing the resource."
* Resource.classification.type from NFDI4Health_VS_MDS_Resource_Type_NCI_Local (required)
* Resource.classification.type ^comment = "Additional information: The selected resource type determines which information will be asked next."

* Resource.classification.typeGeneral 0..1 CodeableConcept "In what form is the [RESOURCE] available?" "Specific information about the form in which the [RESOURCE] is available."
* Resource.classification.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.classification.typeGeneral ^comment = "Additional information: If the [RESOURCE] consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'.\n* 1..1, if Resource.classification.type != (\"Study\" OR \"Substudy\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\")\n* 0..0, if Resource.classification.type == (\"Study\" OR \"Substudy\" OR \"Dataset\" OR \"Registry\" OR \"Secondary data source\")"

* Resource.titles 1..* BackboneElement "Titles/names" "Group of items providing information about title(s)/name(s) of the [RESOURCE]."

* Resource.titles.text 1..1  string "Title/name"
* Resource.titles.text ^comment = "Additional information: If no official title/name has been defined yet, a title/name that is suitable for public display should be used."
* Resource.titles.text ^definition = "Scientific unabbreviated title or name of the [RESOURCE]."

* Resource.titles.language 1..1 CodeableConcept "Language of the title/name" "Language in which the title/name is provided."
* Resource.titles.language from NFDI4Health_VS_MDS_Languages_ISO (required)

* Resource.acronyms 0..* BackboneElement "Acronyms" "Group of items providing information about acronym(s) or alternative short title(s)/name(s) of the [RESOURCE]."

* Resource.acronyms.text 1..1 string "Acronym"
* Resource.acronyms.text ^comment = "Additional information: The field refers primarily to resources which have an acronym."
* Resource.acronyms.text ^definition = "If existing, acronym(s) of the [RESOURCE]."

* Resource.acronyms.language 1..1 CodeableConcept "Language of the acronym"
* Resource.acronyms.language from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.acronyms.language ^definition = "Language in which the acronym is provided."

* Resource.descriptions 1..* BackboneElement "Descriptions"
* Resource.descriptions ^definition = "Group of items providing information about the description(s) of the [RESOURCE]."

* Resource.descriptions.text 1..1 string "Description"
* Resource.descriptions.text ^definition = "Short plain text summary of the [RESOURCE]."

* Resource.descriptions.language 1..1 CodeableConcept "Language of the description"
* Resource.descriptions.language from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.descriptions.language ^definition = "Language in which the description text is provided."

* Resource.keywords 0..* BackboneElement "Keywords"
* Resource.keywords ^comment = "Additional information: The findability of the [RESOURCE] can be significantly increased if proper keywords are stated."
* Resource.keywords ^definition = "Group of items providing information about keywords describing the [RESOURCE]."

* Resource.keywords.label 1..1 string "Keyword"
* Resource.keywords.label ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. SNOMED CT, MeSH, UMLS) is preferred. However, also self-assigned keywords are allowed."
* Resource.keywords.label ^definition = "Keyword(s) describing the [RESOURCE]."
* Resource.keywords.label ^example.label = "example"
* Resource.keywords.label ^example.valueString = "SARS-CoV-2"

* Resource.keywords.code 0..1 string "Code of the keyword"
* Resource.keywords.code ^definition = "If known, the code of the keyword in the classification/vocabulary used."
* Resource.keywords.code ^example.label = "example"
* Resource.keywords.code ^example.valueString = "http://id.nlm.nih.gov/mesh/D000086402"

* Resource.languages 0..* CodeableConcept "Languages"
* Resource.languages from NFDI4Health_VS_MDS_Languages_ISO (required)
* Resource.languages ^definition = "Language(s) in which the [RESOURCE] is conducted/provided."

* Resource.webpage 0..1 string "Web page"
* Resource.webpage ^comment = "Additional information: Other web pages related to the [RESOURCE] can additionally be entered in the section 'Related resources'."
* Resource.webpage ^definition = "If existing, a link to the web page directly relevant to the [RESOURCE]."

* Resource.nonStudyDetails 0..1 BackboneElement "Further details"
* Resource.nonStudyDetails ^comment = "Cardinality: \n* 1..1, if Resource.classification.type != (\"Study\" OR \"Substudy\" OR \"Registry\" OR \"Secondary data source\")\n* 0..0, if Resource.classification.type == (\"Study\" OR \"Substudy\" OR \"Registry\" OR \"Secondary data source\")"
* Resource.nonStudyDetails ^definition = "Group of items providing further detailed information about the [RESOURCE]. It is applicable only to resource types other than a study, a substudy, a dataset, a registry, or a secondary data source."

* Resource.nonStudyDetails.version 0..1 string "Version"
* Resource.nonStudyDetails.version ^definition = "If applicable, the version number of the [RESOURCE]."

* Resource.nonStudyDetails.format 0..1 string "Format"
* Resource.nonStudyDetails.format ^definition = "If applicable, the file format of the [RESOURCE] (e.g., XML, PDF, XLSX, etc.)."
* Resource.nonStudyDetails.format ^example.label = "example"
* Resource.nonStudyDetails.format ^example.valueString = "PDF"

* Resource.nonStudyDetails.useRights 0..1 BackboneElement "Use rights"
* Resource.nonStudyDetails.useRights ^definition = "Group of items providing information about the rights to (re-)use the [RESOURCE]."

* Resource.nonStudyDetails.useRights.label 1..1 CodeableConcept "License"
* Resource.nonStudyDetails.useRights.label from NFDI4Health_VS_MDS_Use_Rights_Label_SPDX_SNOMED_Local (required)
* Resource.nonStudyDetails.useRights.label ^definition = "License defining the rights to (re-)use the [RESOURCE]."

* Resource.nonStudyDetails.useRights.link 0..1 string "URL of the license"
* Resource.nonStudyDetails.useRights.link ^comment = "Cardinality: \n* 0..1, if Resource.nonStudyDetails.useRights.label == \"Other\"\n* 0..0, if Resource.nonStudyDetails.useRights.label != \"Other\""
* Resource.nonStudyDetails.useRights.link ^definition = "Link to a web page that contains detailed information about the selected license."

* Resource.nonStudyDetails.useRights.confirmations 0..1 BackboneElement "Licensing confirmations"
* Resource.nonStudyDetails.useRights.confirmations ^comment = "Additional information: In order to successfully publish the [RESOURCE] under the respective license, all four questions ought to be confirmed.Cardinality: \n* 1..1, if Resource.nonStudyDetails.useRights.label != (\"CC0 1.0 (Creative Commons Zero v1.0 Universal)\" OR \"All rights reserved\" OR \"Other\" OR \"Not applicable\" OR \"Unknown\")\n* 0..0, if Resource.nonStudyDetails.useRights.label == (\"CC0 1.0 (Creative Commons Zero v1.0 Universal)\" OR \"All rights reserved\" OR \"Other\" OR \"Not applicable\" OR \"Unknown\")"
* Resource.nonStudyDetails.useRights.confirmations ^definition = "Group of items applicable only if a Creative Commons (CC) license is selected."

* Resource.nonStudyDetails.useRights.confirmations.authority 1..1 boolean "Do you confirm that the authors of the [RESOURCE] have authority to license it?"
* Resource.nonStudyDetails.useRights.confirmations.authority ^definition = "Confirmation that the authors of the [RESOURCE] have authority to license it."

* Resource.nonStudyDetails.useRights.confirmations.terms 1..1 boolean "Do you confirm that the authors of the [RESOURCE] have read and understood the terms of the chosen license?"
* Resource.nonStudyDetails.useRights.confirmations.terms ^definition = "Confirmation that the authors of the [RESOURCE] have read and understood the terms of the chosen license."

* Resource.nonStudyDetails.useRights.confirmations.irrevocability 1..1 boolean "Do you confirm that the authors of the [RESOURCE] understand that Creative Commons licensing is irrevocable?"
* Resource.nonStudyDetails.useRights.confirmations.irrevocability ^comment = "Additional information: The [RESOURCE] can be licensed using a CC-license only if it is free of the third-party rights."
* Resource.nonStudyDetails.useRights.confirmations.irrevocability ^definition = "Confirmation that the authors of the [RESOURCE] understand that Creative Commons (CC) licensing is not revocable."

* Resource.nonStudyDetails.useRights.confirmations.supportByLicensing 1..1 boolean "Do you confirm that the authors of the [RESOURCE] allow NFDI4Health to license the document?"
* Resource.nonStudyDetails.useRights.confirmations.supportByLicensing ^definition = "Confirmation that NFDI4Health is allowed to license the document, i.e. to add the license information such as a license button and a statement that your material is licensed under a Creative Commons license to the [RESOURCE]."

* Resource.nonStudyDetails.useRights.description 0..1 string "Additional information about use rights"
* Resource.nonStudyDetails.useRights.description ^comment = "Additional information: If 'Other' is selected in the field 'License', the preferred license or terms and conditions for (re-)use should be specified here."
* Resource.nonStudyDetails.useRights.description ^definition = "Any additional descriptive information explaining terms and conditions to (re-)use the [RESOURCE]."

* Resource.contributors 1..* BackboneElement "Contributors"
* Resource.contributors ^comment = "Additional information: For each [RESOURCE], there may be multiple contributors, but at least one person, group of persons or institution/organisation must be specified."
* Resource.contributors ^definition = "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the [RESOURCE]."
* Resource.contributors ^base.path = "Resource.contributors"

* Resource.contributors.nameType 1..1 CodeableConcept "Is it a personal or organisational contribution?"
* Resource.contributors.nameType from NFDI4Health_VS_MDS_Role_Name_Type_SNOMED (required)
* Resource.contributors.nameType ^definition = "Indication whether the contribution was made by person(s) or organisation(s)/institution(s)/group(s)."

* Resource.contributors.organisational 0..1 BackboneElement "Details about the contributing organisations/institutions/groups"
* Resource.contributors.organisational ^comment = "Additional information: Group of items applicable only when providing organisational, institutional or group names.\n* 1..1, if Resource.contributors.nameType == \"Organisational\"\n* 0..0, if Resource.contributors.nameType != \"Organisational\""
* Resource.contributors.organisational ^definition = "Group of items providing information about organisation(s), institution(s) or group(s) of persons contributing to the [RESOURCE]."

* Resource.contributors.organisational.type 1..1 CodeableConcept "Contributor type"
* Resource.contributors.organisational.type from NFDI4Health_VS_MDS_Organisational_Roles_NCI_Local (required)
* Resource.contributors.organisational.type ^definition = "The type of role that an organization, institution, or group of persons fulfills as a contributor. For example, this could include being a sponsor of the study or a group of authors of the document."

* Resource.contributors.organisational.fundingIds 0..* string "Funding identifiers"
* Resource.contributors.organisational.fundingIds ^comment = "Cardinality: \n* 0..*, if Resource.contributors.organisational.type == (\"Funder (public)\" OR \"Funder (private)\") \n* 0..0, if Resource.contributors.organisational.type != (\"Funder (public)\" OR \"Funder (private)\")"
* Resource.contributors.organisational.fundingIds ^definition = "Identifier(s) assigned by a funder to the [RESOURCE]."

* Resource.contributors.organisational.name 1..1 string "Name of the organisation/institution/group"
* Resource.contributors.organisational.name ^definition = "Name of the contributing organisation, institution or group."

* Resource.contributors.personal 0..1 BackboneElement "Details about the contributing persons"
* Resource.contributors.personal ^comment = "Additional information: Group of items applicable only when providing person names.\n* 1..1, if Resource.contributors.nameType == \"Personal\"\n* 0..0, if Resource.contributors.nameType != \"Personal\""
* Resource.contributors.personal ^definition = "Group of items providing information about person(s) contributing to the [RESOURCE]."

* Resource.contributors.personal.type 1..1 CodeableConcept "Contributor type"
* Resource.contributors.personal.type from NFDI4Health_VS_MDS_Personal_Roles_NCI_Local (required)
* Resource.contributors.personal.type ^comment = "(1) A person taking responsibility for and initiating a study; (2) An individual, organization, group or other legal person taking responsibility for securing the arrangements to initiate and/or manage a study (including arrangements to ensure that the study design meets appropriate standards and to ensure appropriate conduct and reporting). In commercial\n                                        trials, the primary sponsor is normally the main applicant for regulatory authorization to begin the study. It may or may not be the main funder [CT.gov (<a href=\"https://prsinfo.clinicaltrials.gov/definitions.html\" rel=\"noopener noreferrer nofollow\">https://prsinfo.clinicaltrials.gov/definitions.html</a>, <a href=\"https://www.clinicaltrials.gov/ct2/about-studies/glossary\" rel=\"noopener noreferrer nofollow\">https://www.clinicaltrials.gov/ct2/about-studies/glossary</a>), NCI (GitHub - NCI-Thesaurus/thesaurus-obo-edition: OBO Library edition of NCIt)]."
* Resource.contributors.personal.type ^definition = "The type of role that a person fulfills as a contributor. For example, this could include being a principal investigator of the study or an author of the document."

* Resource.contributors.personal.givenName 1..1 string "Given name"
* Resource.contributors.personal.givenName ^definition = "Given name of the person."

* Resource.contributors.personal.familyName 1..1 string "Family name"
* Resource.contributors.personal.familyName ^definition = "Family name(s) of the person."

* Resource.contributors.personal.identifiers 0..* BackboneElement "Digital identifiers"
* Resource.contributors.personal.identifiers ^definition = "Group of items providing information about digital identifiers of the person."

* Resource.contributors.personal.identifiers.identifier 1..1 string  "Identifier"
* Resource.contributors.personal.identifiers.identifier ^definition = "Digital identifier according to a specific scheme that uniquely identifies the person."
* Resource.contributors.personal.identifiers.identifier ^example.label = "example"
* Resource.contributors.personal.identifiers.identifier ^example.valueString = "0000-0003-1379-7023"

* Resource.contributors.personal.identifiers.scheme 1..1 CodeableConcept "Scheme"
* Resource.contributors.personal.identifiers.scheme from NFDI4Health_VS_MDS_Role_Name_Identifier_Scheme_Local (required)
* Resource.contributors.personal.identifiers.scheme ^definition = "Type of the identifier scheme."
* Resource.contributors.personal.identifiers.scheme ^example.label = "example"
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.1937.777.64.5.1"
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.coding.code = #080
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.coding.display = "ORCID"
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.text = "ORCID"

* Resource.contributors.email 0..1 string "Email address"
* Resource.contributors.email ^definition = "Email address of the person, organisation, institution or group of persons."

* Resource.contributors.phone 0..1 string "Phone number"
* Resource.contributors.phone ^definition = "Phone number of the person, organisation, institution or group of persons."
* Resource.contributors.phone ^example.label = "example"
* Resource.contributors.phone ^example.valueString = "+49 (0)153 1112233"

* Resource.contributors.affiliations 0..* BackboneElement "Organisations associated with the contributor"
* Resource.contributors.affiliations ^definition = "Group of items providing further information about the organisation(s) associated with the contributor."

* Resource.contributors.affiliations.name 1..1  string "Name"
* Resource.contributors.affiliations.name ^definition = "Name of the organisation associated with the contributor."

* Resource.contributors.affiliations.address 0..1 string "Address"
* Resource.contributors.affiliations.address ^definition = "Address of the organisation associated with the contributor."
* Resource.contributors.affiliations.address ^example.label = "example"
* Resource.contributors.affiliations.address ^example.valueString = "Gleueler Straße 60, 50931, Cologne, Germany"

* Resource.contributors.affiliations.webpage 0..1 string "Web page"
* Resource.contributors.affiliations.webpage ^definition = "Web page of the organisation associated with the contributor."

* Resource.contributors.affiliations.identifiers 0..* BackboneElement "Digital identifiers"
* Resource.contributors.affiliations.identifiers ^definition = "Group of items providing information about digital identifiers of the organisation associated with the contributor."

* Resource.contributors.affiliations.identifiers.identifier 1..1 string "Identifier"
* Resource.contributors.affiliations.identifiers.identifier ^definition = "Digital identifier according to a specific scheme that uniquely identifies the organisation."
* Resource.contributors.affiliations.identifiers.identifier ^example.label = "example"
* Resource.contributors.affiliations.identifiers.identifier ^example.valueString = "0259fwx54"

* Resource.contributors.affiliations.identifiers.scheme 1..1 CodeableConcept "Scheme"
* Resource.contributors.affiliations.identifiers.scheme from NFDI4Health_VS_MDS_Role_Affiliation_Identifier_Scheme_Local (required)
* Resource.contributors.affiliations.identifiers.scheme ^definition = "Type of the identifier scheme."

* Resource.idsAlternative 0..* BackboneElement "Alternative identifiers"
* Resource.idsAlternative ^definition = "Group of items providing information about identifiers (IDs) assigned to the given [RESOURCE] by another registering systems, e.g. a registry of clinical trials or a data repository."

* Resource.idsAlternative.schemes 1..1 CodeableConcept "Type of the registry"
* Resource.idsAlternative.schemes from NFDI4Health_VS_MDS_ID_TYPE_NCI_Local (required)
* Resource.idsAlternative.schemes ^definition = "Type/name of the system where the given [RESOURCE] is already registered."

* Resource.idsAlternative.identifier 1..1 string "Identifier"
* Resource.idsAlternative.identifier ^definition = "Identifier assigned to the given [RESOURCE] by another registering system, e.g. by a registry of clinical trials or a data repository."
* Resource.idsAlternative.identifier ^example.label = "example"
* Resource.idsAlternative.identifier ^example.valueString = "ISRCTN91495258"

* Resource.ids 0..* BackboneElement "Related resources"
* Resource.ids ^definition = "Group of items providing information about the resources related to the given [RESOURCE] and their identifiers (IDs), e.g. DOIs of publications, datasets, study documents or links to web pages."

* Resource.ids.identifier 1..1 string "Identifier of the related resource"
* Resource.ids.identifier ^comment = "Additional information: a) Publications like journal articles usually have a DOI, e.g. 10.3238/arztebl.2020.0861. b) A link (URL) starting with 'http(s)://' to a web page with any additional information can also be provided."
* Resource.ids.identifier ^definition = "Identifier related to, or associated with, the [RESOURCE] being registered. These can be identifiers of related publications, datasets, study documents, links to web pages, etc."
* Resource.ids.identifier ^example.label = "example"
* Resource.ids.identifier ^example.valueString = "10.4126/FRL01-006431467"

* Resource.ids.schemes 1..1 CodeableConcept "Type of the identifier"
* Resource.ids.schemes from NFDI4Health_VS_MDS_Identifier_Type_Related_Artifact_NCI_Local (required)
* Resource.ids.schemes ^definition = "Type of the identifier of the related resource."
* Resource.ids.schemes ^example.label = "example"
* Resource.ids.schemes ^example.valueCodeableConcept.text = "DOI"

* Resource.ids.relationType 1..1 CodeableConcept "Relationship between the resources"
* Resource.ids.relationType from NFDI4Health_VS_MDS_Relation_Type_Ids_Local (required)
* Resource.ids.relationType ^definition = "Relationship between the [RESOURCE] being registered (A) and the related resource (B)."
* Resource.ids.relationType ^example.label = "example"
* Resource.ids.relationType ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.1937.777.64.5.1"
* Resource.ids.relationType ^example.valueCodeableConcept.coding.code = #065
* Resource.ids.relationType ^example.valueCodeableConcept.coding.display = "A is part of B"
* Resource.ids.relationType ^example.valueCodeableConcept.text = "A is part of B"

* Resource.ids.typeGeneral 0..1 CodeableConcept "Type of the related resource"
* Resource.ids.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.ids.typeGeneral ^definition = "Type/form of the related resource, e.g. journal article, dataset, text, etc."

* Resource.idsNfdi4health 0..* BackboneElement "Related resources registered on this portal"
* Resource.idsNfdi4health ^comment = "Additional information: Does the [RESOURCE] have any related resources registered on this portal?"
* Resource.idsNfdi4health ^definition = "Group of items providing information about related resources (e.g. studies, study documents, etc.) registered on this portal."

* Resource.idsNfdi4health.identifiers 1..1 string "Identifier of the related resource"
* Resource.idsNfdi4health.identifiers ^definition = "Identifier of the related resource assigned on this portal."
* Resource.idsNfdi4health.identifiers ^example.label = "example"
* Resource.idsNfdi4health.identifiers ^example.valueString = "39"

* Resource.idsNfdi4health.date 0..1 date "Date of identifier assignment"
* Resource.idsNfdi4health.date ^comment = "Additional information: Preferred date format: DD.MM.YYYY."
* Resource.idsNfdi4health.date ^definition = "Date when the identifier of the related resource was assigned."
* Resource.idsNfdi4health.date ^base.path = "Resource.idsNfdi4health.date"

* Resource.idsNfdi4health.relationType 0..1 CodeableConcept "Relationship between the resources"
* Resource.idsNfdi4health.relationType from NFDI4Health_VS_MDS_Relation_Type_Ids_Local (required)
* Resource.idsNfdi4health.relationType ^definition = "Relationship between the [RESOURCE] being registered (A) and the related resource (B)."

* Resource.nutritionalData 0..1 boolean "Nutritional data collected?"
* Resource.nutritionalData ^comment = "Cardinality: \n* 1..1, if Resource.classification.type == (\"Study\" OR \"Substudy\") AND Resource.provenance.dataSource == \"Manually collected\"\n* 0..0, if Resource.classification.type != (\"Study\" OR \"Substudy\") OR Resource.provenance.dataSource != \"Manually collected\""
* Resource.nutritionalData ^definition = "Indication whether the [RESOURCE] collects nutritional data."

* Resource.chronicDiseases 0..1 boolean "Chronic diseases included?"
* Resource.chronicDiseases ^comment = "Cardinality: \n* 1..1, if Resource.provenance.dataSource == \"Manually collected\"\n* 0..0, if Resource.provenance.dataSource != \"Manually collected\""
* Resource.chronicDiseases ^definition = "Indication whether the [RESOURCE] addresses chronic diseases."

* Resource.provenance 1..1 BackboneElement "Provenance aspects of data entry"
* Resource.provenance ^definition = "Group of items providing information about provenance aspects of the data entry on this portal."

* Resource.provenance.dataSource 1..1 CodeableConcept "Source of information"
* Resource.provenance.dataSource from NFDI4Health_VS_MDS_Provenance_Data_Source_Local (required)
* Resource.provenance.dataSource ^definition = "Source of information about the [RESOURCE] and the way it was uploaded/collected."

* Resource.provenance.verificationDate 0..1 date "Last verified on"
* Resource.provenance.verificationDate ^definition = "Date on which the responsible party last verified the information about the [RESOURCE], even if no additional or updated information is being submitted."

* Resource.provenance.verificationUser 0..1 CodeableConcept "Last verified by"
* Resource.provenance.verificationUser ^definition = "User who last verified the information about the [RESOURCE]."
* Resource.provenance.verificationUser ^base.path = "Resource.provenance.verificationUser"

* Resource.provenance.firstSubmittedDate 0..1 date "First submitted on"
* Resource.provenance.firstSubmittedDate ^definition = "Date when the [RESOURCE] was first submitted for publication."

* Resource.provenance.firstSubmittedUser 0..1 CodeableConcept "First submitted by"
* Resource.provenance.firstSubmittedUser ^definition = "User who first submitted the [RESOURCE] for publication."

* Resource.provenance.firstPostedDate 0..1 date "First posted/published on"
* Resource.provenance.firstPostedDate ^definition = "Date when the [RESOURCE] was first posted/published."

* Resource.provenance.firstPostedUser 0..1 CodeableConcept "First posted/published by"
* Resource.provenance.firstPostedUser ^definition = "User who first posted/published the [RESOURCE]."

* Resource.provenance.lastUpdateSubmittedDate 0..1 date "Last update submitted on"
* Resource.provenance.lastUpdateSubmittedDate ^definition = "Date when the last update of the [RESOURCE] was submitted for publication."

* Resource.provenance.lastUpdateSubmittedUser 0..1 CodeableConcept "Last updated submitted by"
* Resource.provenance.lastUpdateSubmittedUser ^definition = "User who submitted the last update of the [RESOURCE]."

* Resource.provenance.lastUpdatePostedDate 0..1 date "Last update posted/published on"
* Resource.provenance.lastUpdatePostedDate ^definition = "Date when the last update of the [RESOURCE] was posted/published."

* Resource.provenance.lastUpdatePostedUser 0..1 CodeableConcept "Last update posted/published by"
* Resource.provenance.lastUpdatePostedUser ^definition = "User who posted/published the last update of the [RESOURCE]."

* Resource.provenance.resourceVersion 0..1 string "Version number"
* Resource.provenance.resourceVersion ^definition = "Version number of the [RESOURCE] within this portal."
