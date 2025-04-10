Logical: NFDI4Health_LM_MDS_Core
Parent: Element
Id: nfdi4health-lm-mds-core
Title: "NFDI4Health Core Metadataschema"
Description: "NFDI4Health Logical Model of Core V3.3.1"
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/LogicalModel/nfdi4health-lm-mds-core"
* ^publisher = "NFDI4Health"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.nfdi4health.de"


* Resource 1..1 BackboneElement "Resource" "Group of items providing information about a resource. Resources can be, for example, files or parts of them (e.g. datasets or study documents such as study protocols or questionnaires) or also studies or substudies."

* Resource.identifier 1..1 string "identifier" "Unique identifier of the resource used for identification within the NFDI4Health."
* Resource.identifier ^comment = "Additional information: The identifier is assigned automatically."

* Resource.classification 1..1 BackboneElement "classification" "Group of items providing information about the classification of the resource within the predefined categories."
* Resource.classification ^comment = "Cardinality: 1..1"

* Resource.classification.type 1..1 CodeableConcept "type" "A term describing the resource."
* Resource.classification.type from NFDI4Health_VS_MDS_Resource_Type_NCI_Local (required)
* Resource.classification.type ^comment = "Additional information: The selected resource type determines which information will be asked next."

* Resource.classification.typeGeneral 0..1 CodeableConcept "typeGeneral" "Specific information about the form in which the resource is available."
* Resource.classification.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.classification.typeGeneral ^comment = "Additional information: If the resource consists primarily of words for reading and is not covered by another textual resource type in this list, 'Text' should be used instead of 'Other'."

* Resource.titles 1..* BackboneElement "titles" "Group of items providing information about title(s)/name(s) of the resource."
* Resource.titles ^comment = "Cardinality: 1..*"

* Resource.titles.text 1..1 string "text" "Scientific unabbreviated title or name of the resource."
* Resource.titles.text ^comment = "Additional information: If no official title/name has been defined yet, a title/name that is suitable for public display should be used."

* Resource.titles.language 1..1 CodeableConcept "language" "Language in which the title/name is provided."
* Resource.titles.language from NFDI4Health_VS_MDS_Languages_ISO (required)

* Resource.acronyms 0..* BackboneElement "acronyms" "Group of items providing information about acronym(s) or alternative short title(s)/name(s) of the resource."
* Resource.acronyms ^comment = "Cardinality: 0..*"
* Resource.acronyms.text 1..1 string "text" "If existing, acronym(s) of the resource."
* Resource.acronyms.text ^comment = "Additional information: The field refers primarily to resources which have an acronym."
* Resource.acronyms.language 1..1 CodeableConcept "language" "Language in which the acronym is provided."
* Resource.acronyms.language from NFDI4Health_VS_MDS_Languages_ISO (required)

* Resource.descriptions 1..* BackboneElement "descriptions" "Group of items providing information about the description(s) of the resource."
* Resource.descriptions ^comment = "Cardinality: 1..*"
* Resource.descriptions.text 1..1 string "text" "Short plain text summary of the resource."
* Resource.descriptions.text ^comment = "Cardinality: 1..1"
* Resource.descriptions.language 1..1 CodeableConcept "language" "Language in which the description text is provided."
* Resource.descriptions.language from NFDI4Health_VS_MDS_Languages_ISO (required)

* Resource.keywords 0..* BackboneElement "keywords" "Group of items providing information about keywords describing the resource."
* Resource.keywords ^comment = "Additional information: The findability of the resource can be significantly increased if proper keywords are stated."
* Resource.keywords.label 1..1 string "label" "Keyword(s) describing the resource."
* Resource.keywords.label ^comment = "Additional information: The use of terms from established classifications/vocabularies (e.g. SNOMED CT, MeSH, UMLS) is preferred. However, also self-assigned keywords are allowed."
* Resource.keywords.code 0..1 string "code" "If known, the code of the keyword in the classification/vocabulary used."

* Resource.languages 0..* CodeableConcept "languages" "Language(s) in which the resource is conducted/provided."
* Resource.languages from NFDI4Health_VS_MDS_Languages_ISO (required)

* Resource.webpage 0..1 string "If existing, a link to the web page directly relevant to the [RESOURCE]." "Web page"
* Resource.webpage ^comment = "Additional information: Other web pages related to the [RESOURCE] can additionally be entered in the section 'Related resources'."

* Resource.nonStudyDetails 0..1 BackboneElement "Group of items providing further detailed information about the [RESOURCE]. It is applicable only to resource types other than a study, a substudy, a dataset, a registry, or a secondary data source." "Further details"
* Resource.nonStudyDetails ^comment = "Cardinality: 1..1, if Resource.classification.type != ('Study' OR 'Substudy' OR 'Registry' OR 'Secondary data source'); otherwise 0..0"

* Resource.nonStudyDetails.version 0..1 string "If applicable, the version number of the [RESOURCE]." "Version"
* Resource.nonStudyDetails.version ^comment = "Cardinality: 0..1"

* Resource.nonStudyDetails.format 0..1 string "If applicable, the file format of the [RESOURCE] (e.g., XML, PDF, XLSX, etc.)." "Format"
* Resource.nonStudyDetails.format ^comment = "Cardinality: 0..1"
* Resource.nonStudyDetails.format ^example.label = "example 1"
* Resource.nonStudyDetails.format ^example.valueString = "PDF"

* Resource.nonStudyDetails.useRights 0..1 BackboneElement "Group of items providing information about the rights to (re-)use the [RESOURCE]." "Use rights"
* Resource.nonStudyDetails.useRights ^comment = "Cardinality: 0..1"

* Resource.nonStudyDetails.useRights.label 1..1 CodeableConcept "License defining the rights to (re-)use the [RESOURCE]." "License"
* Resource.nonStudyDetails.useRights.label from NFDI4Health_VS_MDS_Use_Rights_Label_SPDX_SNOMED_Local (required)
* Resource.nonStudyDetails.useRights.label ^comment = "Cardinality: 1..1"

* Resource.nonStudyDetails.useRights.link 0..1 string "Link to a web page that contains detailed information about the selected license." "URL of the license"
* Resource.nonStudyDetails.useRights.link ^comment = "Cardinality: 0..1, if Resource.nonStudyDetails.useRights.label == 'Other'; otherwise 0..0"

* Resource.nonStudyDetails.useRights.confirmations 0..1 BackboneElement "Group of items applicable only if a Creative Commons (CC) license is selected." "Licensing confirmations"
* Resource.nonStudyDetails.useRights.confirmations ^comment = "Additional information: In order to successfully publish the [RESOURCE] under the respective license, all four questions ought to be confirmed."

* Resource.nonStudyDetails.useRights.confirmations.authority 1..1 boolean "Confirmation that the authors of the [RESOURCE] have authority to license it." "Do you confirm that the authors of the [RESOURCE] have authority to license it?"
* Resource.nonStudyDetails.useRights.confirmations.authority ^comment = "Cardinality: 1..1"

* Resource.nonStudyDetails.useRights.confirmations.terms 1..1 boolean "Confirmation that the authors of the [RESOURCE] have read and understood the terms of the chosen license." "Do you confirm that the authors of the [RESOURCE] have read and understood the terms of the chosen license?"
* Resource.nonStudyDetails.useRights.confirmations.terms ^comment = "Cardinality: 1..1"

* Resource.nonStudyDetails.useRights.confirmations.irrevocability 1..1 boolean "Confirmation that the authors of the [RESOURCE] understand that Creative Commons (CC) licensing is not revocable." "Do you confirm that the authors of the [RESOURCE] understand that Creative Commons licensing is irrevocable?"
* Resource.nonStudyDetails.useRights.confirmations.irrevocability ^comment = "Additional information: The [RESOURCE] can be licensed using a CC-license only if it is free of third-party rights."

* Resource.nonStudyDetails.useRights.confirmations.supportByLicensing 1..1 boolean "Confirmation that NFDI4Health is allowed to license the document, i.e. to add the license information such as a license button and a statement that your material is licensed under a Creative Commons license to the [RESOURCE]." "Do you confirm that the authors of the [RESOURCE] allow NFDI4Health to license the document?"
* Resource.nonStudyDetails.useRights.confirmations.supportByLicensing ^comment = "Cardinality: 1..1"

* Resource.nonStudyDetails.useRights.description 0..1 string "Any additional descriptive information explaining terms and conditions to (re-)use the [RESOURCE]." "Additional information about use rights"
* Resource.nonStudyDetails.useRights.description ^comment = "Additional information: If 'Other' is selected in the field 'License', the preferred license or terms and conditions for (re-)use should be specified here."

* Resource.contributors 1..* BackboneElement "Group of items providing information about person(s), group(s) of persons or institution(s)/organisation(s) contributing to the [RESOURCE]." "Contributors"
* Resource.contributors ^comment = "Additional information: For each [RESOURCE], there may be multiple contributors, but at least one person, group of persons, or institution/organisation must be specified."

* Resource.contributors.nameType 1..1 CodeableConcept "Indication whether the contribution was made by person(s) or organisation(s)/institution(s)/group(s)." "Is it a personal or organisational contribution?"
* Resource.contributors.nameType from NFDI4Health_VS_MDS_Role_Name_Type_SNOMEDCT (required)
* Resource.contributors.nameType ^comment = "Cardinality: 1..1"

* Resource.contributors.organisational 0..1 BackboneElement "Group of items providing information about organisation(s), institution(s) or group(s) of persons contributing to the [RESOURCE]." "Details about the contributing organisations/institutions/groups"
* Resource.contributors.organisational ^comment = "Additional information: Group of items applicable only when providing organisational, institutional, or group names."

* Resource.contributors.organisational.type 1..1 CodeableConcept "The type of role that an organization, institution, or group of persons fulfills as a contributor. For example, this could include being a sponsor of the study or a group of authors of the document." "Contributor type"
* Resource.contributors.organisational.type from NFDI4Health_VS_MDS_Organisational_Roles_NCI_Local (required)
* Resource.contributors.organisational.type ^comment = "Cardinality: 1..1"

* Resource.contributors.organisational.fundingIds 0..* string "Funding identifiers" "Identifier(s) assigned by a funder to the [RESOURCE]."
* Resource.contributors.organisational.fundingIds ^comment = "Cardinality: 0..*, if Resource.contributors.organisational.type == ('Funder (public)' OR 'Funder (private)'); otherwise 0..0" 
* Resource.contributors.organisational.fundingIds ^requirements = "If available, you can enter funding identifiers."

* Resource.contributors.organisational.name 1..1 string "Name of the organisation/institution/group" "Name of the contributing organisation, institution or group."
* Resource.contributors.organisational.name ^requirements = "An organisational name can be used to denote an organisation, institution or research group."

* Resource.contributors.personal 0..1 BackboneElement "Group of items providing information about person(s) contributing to the [RESOURCE]." "Details about the contributing persons"
* Resource.contributors.personal ^comment = "Additional information: Group of items applicable only when providing person names."

* Resource.contributors.personal.type 1..1 CodeableConcept "The type of role that a person fulfills as a contributor. For example, this could include being a principal investigator of the study or an author of the document." "Contributor type"
* Resource.contributors.personal.type from NFDI4Health_VS_MDS_Personal_Roles_NCI_Local (required)
* Resource.contributors.personal.type ^comment = "Cardinality: 1..1"

* Resource.contributors.personal.givenName 1..1 string "Given name of the person." "Given name"
* Resource.contributors.personal.givenName ^comment = "Cardinality: 1..1"

* Resource.contributors.personal.familyName 1..1 string "Family name(s) of the person." "Family name"
* Resource.contributors.personal.familyName ^comment = "Cardinality: 1..1"


* Resource.contributors.personal.identifiers 0..* BackboneElement "Group of items providing information about digital identifiers of the person." "Digital identifiers"
* Resource.contributors.personal.identifiers ^comment = "Cardinality: 0..*"

* Resource.contributors.personal.identifiers.identifier 1..1 string "Digital identifier according to a specific scheme that uniquely identifies the person." "Identifier"
* Resource.contributors.personal.identifiers.identifier ^comment = "Cardinality: 1..1"
* Resource.contributors.personal.identifiers.identifier ^example.label = "example 1"
* Resource.contributors.personal.identifiers.identifier ^example.valueString = "0000-0003-1379-7023"

* Resource.contributors.personal.identifiers.scheme 1..1 CodeableConcept "Type of the identifier scheme." "Scheme"
* Resource.contributors.personal.identifiers.scheme from NFDI4Health_VS_MDS_Role_Name_Identifier_Scheme_Local (required)
* Resource.contributors.personal.identifiers.scheme ^comment = "Cardinality: 1..1"
* Resource.contributors.personal.identifiers.scheme ^example.label = "example 1"
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.1937.777.64.5.1"
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.coding.code = #080
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.coding.display = "ORCID"
* Resource.contributors.personal.identifiers.scheme ^example.valueCodeableConcept.text = "ORCID"

* Resource.contributors.email 0..1 string "Email address of the person, organisation, institution or group of persons." "Email address"
* Resource.contributors.email ^comment = "Cardinality: 0..1"

* Resource.contributors.phone 0..1 string "Phone number of the person, organisation, institution or group of persons." "Phone number"
* Resource.contributors.phone ^comment = "Cardinality: 0..1"
* Resource.contributors.phone ^example.label = "example 1"
* Resource.contributors.phone ^example.valueString = "+49 (0)153 1112233"

* Resource.contributors.affiliations 0..* BackboneElement "Group of items providing further information about the organisation(s) associated with the contributor." "Organisations associated with the contributor"
* Resource.contributors.affiliations ^comment = "Cardinality: 0..*"

* Resource.contributors.affiliations.name 1..1 string "Name of the organisation associated with the contributor." "Name"
* Resource.contributors.affiliations.name ^comment = "Cardinality: 1..1"

* Resource.contributors.affiliations.address 0..1 string "Address of the organisation associated with the contributor." "Address"
* Resource.contributors.affiliations.address ^comment = "Cardinality: 0..1"
* Resource.contributors.affiliations.address ^example.label = "example 1"
* Resource.contributors.affiliations.address ^example.valueString = "Gleueler Straße 60, 50931, Cologne, Germany"

* Resource.contributors.affiliations.webpage 0..1 string "Web page of the organisation associated with the contributor." "Web page"
* Resource.contributors.affiliations.webpage ^comment = "Cardinality: 0..1"

* Resource.contributors.affiliations.identifiers 0..* BackboneElement "Group of items providing information about digital identifiers of the organisation associated with the contributor." "Digital identifiers"
* Resource.contributors.affiliations.identifiers ^comment = "Cardinality: 0..*"

* Resource.contributors.affiliations.identifiers.identifier 1..1 string "Digital identifier according to a specific scheme that uniquely identifies the organisation." "Identifier"
* Resource.contributors.affiliations.identifiers.identifier ^comment = "Cardinality: 1..1"
* Resource.contributors.affiliations.identifiers.identifier ^example.label = "example 1"
* Resource.contributors.affiliations.identifiers.identifier ^example.valueString = "0259fwx54"

* Resource.contributors.affiliations.identifiers.scheme 1..1 CodeableConcept "Type of the identifier scheme." "Scheme"
* Resource.contributors.affiliations.identifiers.scheme from NFDI4Health_VS_MDS_Role_Affiliation_Identifier_Scheme_Local (required)
* Resource.contributors.affiliations.identifiers.scheme ^comment = "Cardinality: 1..1"
* Resource.contributors.affiliations.identifiers.scheme ^example.label = "example 1"
* Resource.contributors.affiliations.identifiers.scheme ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.1937.777.64.5.1"
* Resource.contributors.affiliations.identifiers.scheme ^example.valueCodeableConcept.coding.code = #081
* Resource.contributors.affiliations.identifiers.scheme ^example.valueCodeableConcept.coding.display = "ROR"
* Resource.contributors.affiliations.identifiers.scheme ^example.valueCodeableConcept.text = "ROR"


* Resource.idsAlternative 0..* BackboneElement "Alternative identifiers" "Group of items providing information about identifiers (IDs) assigned to the given [RESOURCE] by another registering systems, e.g. a registry of clinical trials or a data repository."
* Resource.idsAlternative ^comment = "Cardinality: 0..*"

* Resource.idsAlternative.scheme 1..1 CodeableConcept "Type of the registry" "Type/name of the system where the given [RESOURCE] is already registered."
* Resource.idsAlternative.scheme from NFDI4Health_VS_MDS_ID_TYPE_NCI_Local (required)
* Resource.idsAlternative.scheme ^comment = "Cardinality: 1..1"
* Resource.idsAlternative.scheme ^example.label = "example 1"
* Resource.idsAlternative.scheme ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.1937.777.64.5.1"
* Resource.idsAlternative.scheme ^example.valueCodeableConcept.coding.code = #098
* Resource.idsAlternative.scheme ^example.valueCodeableConcept.coding.display = "DRKS"
* Resource.idsAlternative.scheme ^example.valueCodeableConcept.text = "DRKS"

* Resource.idsAlternative.identifier 1..1 string "Identifier" "Identifier assigned to the given [RESOURCE] by another registering system, e.g. by a registry of clinical trials or a data repository."
* Resource.idsAlternative.identifier ^comment = "Cardinality: 1..1"
* Resource.idsAlternative.identifier ^example.label = "example 1"
* Resource.idsAlternative.identifier ^example.valueString = "ISRCTN91495258"

* Resource.ids 0..* BackboneElement "Related resources" "Group of items providing information about the resources related to the given [RESOURCE] and their identifiers (IDs), e.g. DOIs of publications, datasets, study documents or links to web pages."
* Resource.ids ^comment = "Cardinality: 0..*"

* Resource.ids.identifier 1..1 string "Identifier of the related resource" "Identifier related to, or associated with, the [RESOURCE] being registered. These can be identifiers of related publications, datasets, study documents, links to web pages, etc."
* Resource.ids.identifier ^comment = "Additional information: a) Publications like journal articles usually have a DOI, e.g. 10.3238/arztebl.2020.0861. b) A link (URL) starting with 'http(s)://' to a web page with any additional information can also be provided."
* Resource.ids.identifier ^example.label = "example 1"
* Resource.ids.identifier ^example.valueString = "10.4126/FRL01-006431467"

* Resource.ids.scheme 1..1 CodeableConcept "Type of the identifier" "Type of the identifier of the related resource."
* Resource.ids.scheme from NFDI4Health_VS_MDS_Identifier_Type_Related_Artifact_NCI_Local (required)
* Resource.ids.scheme ^comment = "Cardinality: 1..1"
* Resource.ids.scheme ^example.label = "example 1"
* Resource.ids.scheme ^example.valueCodeableConcept.text = "DOI"

* Resource.ids.relationType 1..1 CodeableConcept "Relationship between the resources" "Relationship between the [RESOURCE] being registered (A) and the related resource (B)."
* Resource.ids.relationType from NFDI4Health_VS_MDS_Relation_Type_Ids_Local (required)
* Resource.ids.relationType ^comment = "Cardinality: 1..1"
* Resource.ids.relationType ^example.label = "example 1"
* Resource.ids.relationType ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.1937.777.64.5.1"
* Resource.ids.relationType ^example.valueCodeableConcept.coding.code = #065
* Resource.ids.relationType ^example.valueCodeableConcept.coding.display = "A is part of B"
* Resource.ids.relationType ^example.valueCodeableConcept.text = "A is part of B"

* Resource.ids.typeGeneral 0..1 CodeableConcept "Type of the related resource" "Type/form of the related resource, e.g. journal article, dataset, text, etc."
* Resource.ids.typeGeneral from NFDI4Health_VS_MDS_Resource_Type_General_NCI_MSH_Local (required)
* Resource.ids.typeGeneral ^comment = "Cardinality: 0..1"
* Resource.ids.typeGeneral ^example.label = "example 1"
* Resource.ids.typeGeneral ^example.valueCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.3.26.1.1"
* Resource.ids.typeGeneral ^example.valueCodeableConcept.coding.code = #C25704
* Resource.ids.typeGeneral ^example.valueCodeableConcept.coding.display = "Text"
* Resource.ids.typeGeneral ^example.valueCodeableConcept.text = "Text"

* Resource.idsNfdi4health 0..* BackboneElement "Related resources registered on this portal"
* Resource.idsNfdi4health ^comment = "Additional information: Does the [RESOURCE] have any related resources registered on this portal?"
* Resource.idsNfdi4health ^base.path = "Resource.idsNfdi4health"

* Resource.idsNfdi4health.identifier 1..1 string "Identifier of the related resource"
* Resource.idsNfdi4health.identifier ^comment = "Cardinality: 1..1"
* Resource.idsNfdi4health.identifier ^example.label = "example 1"
* Resource.idsNfdi4health.identifier ^example.valueString = "39"

* Resource.idsNfdi4health.date 0..1 date "Date of identifier assignment"
* Resource.idsNfdi4health.date ^comment = "Additional information: Preferred date format: DD.MM.YYYY."

* Resource.idsNfdi4health.relationType 0..1 CodeableConcept "Relationship between the resources"
* Resource.idsNfdi4health.relationType from NFDI4Health_VS_MDS_Relation_Type_Ids_Local (required)
* Resource.idsNfdi4health.relationType ^comment = "Cardinality: 0..1"

* Resource.nutritionalData 0..1 boolean "Nutritional data collected?"
* Resource.nutritionalData ^comment = "Cardinality: 1..1, if Resource.classification.type == ('Study' OR 'Substudy') AND Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0"

* Resource.chronicDiseases 0..1 boolean "Chronic diseases included?"
* Resource.chronicDiseases ^comment = "Cardinality: 1..1, if Resource.provenance.dataSource == 'Manually collected'; otherwise 0..0"

* Resource.provenance 1..1 BackboneElement "Provenance aspects of data entry"
* Resource.provenance ^comment = "Cardinality: 1..1"

* Resource.provenance.dataSource 0..1 CodeableConcept "Source of information"
* Resource.provenance.dataSource from NFDI4Health_VS_MDS_Provenance_Data_Source_Local (required)
* Resource.provenance.dataSource ^comment = "1..1, if Resource.classification.type == ('C63536' OR 'C198230' OR 'C61393' OR '178'); otherwise 0..0"

* Resource.provenance.verificationDate 0..1 date "Last verified on"
* Resource.provenance.verificationDate ^comment = "Cardinality: 0..1"

* Resource.provenance.verificationUser 0..1 CodeableConcept "Last verified by"
* Resource.provenance.verificationUser ^comment = "Cardinality: 0..1"

* Resource.provenance.firstSubmittedDate 0..1 date "First submitted on"
* Resource.provenance.firstSubmittedDate ^comment = "Cardinality: 0..1"

* Resource.provenance.firstSubmittedUser 0..1 CodeableConcept "First submitted by"
* Resource.provenance.firstSubmittedUser ^comment = "Cardinality: 0..1"

* Resource.provenance.firstPostedDate 0..1 date "First posted/published on"
* Resource.provenance.firstPostedDate ^comment = "Cardinality: 0..1"

* Resource.provenance.firstPostedUser 0..1 CodeableConcept "First posted/published by"
* Resource.provenance.firstPostedUser ^comment = "Cardinality: 0..1"

* Resource.provenance.lastUpdateSubmittedDate 0..1 date "Last update submitted on"
* Resource.provenance.lastUpdateSubmittedDate ^comment = "Cardinality: 0..1"

* Resource.provenance.lastUpdateSubmittedUser 0..1 CodeableConcept "Last updated submitted by"
* Resource.provenance.lastUpdateSubmittedUser ^comment = "Cardinality: 0..1"

* Resource.provenance.lastUpdatePostedDate 0..1 date "Last update posted/published on"
* Resource.provenance.lastUpdatePostedDate ^comment = "Cardinality: 0..1"

* Resource.provenance.lastUpdatePostedUser 0..1 CodeableConcept "Last update posted/published by"
* Resource.provenance.lastUpdatePostedUser ^comment = "Cardinality: 0..1"

* Resource.provenance.resourceVersion 0..1 string "Version number"
* Resource.provenance.resourceVersion ^comment = "Cardinality: 0..1"

