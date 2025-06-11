Extension: NFDI4Health_EX_MDS_Imaging
Id: nfdi4health-ex-mds-imaging
Title: "NFDI4Health EX MDS Radiomics"
Description: "Information about imaging data (modalities and body parts examined) in studies that use imaging as a data source."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-radiomics"
* ^status = #draft
* ^version = "0.1"
* ^context[0].type = #element
* ^context[0].expression = "ResearchStudy"
* . ^short = "Information about imaging data for the [RESOURCE]"
* . ^definition = "Group of items providing information on imaging data."
* . ^comment = "1..1, if Design.dataSource.general == 'Imaging data'; otherwise 0..0"

* extension contains
    modality 1..* and
    bodyPart 1..*

* extension[modality].valueCodeableConcept from NFDI4Health_VS_MDS__Study_Modality (required)
* extension[modality].valueCodeableConcept ^short = "Imaging modalities (e.g. CT, MR, SR)"
* extension[modality].valueCodeableConcept ^definition = "Modalities used in the study, using DICOM modality codes."

* extension[bodyPart].valueCodeableConcept from NFDI4Health_VS_MDS_Study_Body_Structures (required)
* extension[bodyPart].valueCodeableConcept ^short = "Body parts examined"
* extension[bodyPart].valueCodeableConcept ^definition = "Body parts examined in the imaging data, coded with SNOMED CT body structure codes."

Mapping: NFDI4Health-Imaging-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Imaging
* -> "Design.imaging"
* extension[modality] -> "Design.imaging.modalities"
* extension[bodyPart] -> "Design.imaging.bodyPart"