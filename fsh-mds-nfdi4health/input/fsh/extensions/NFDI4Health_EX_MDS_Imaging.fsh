Extension: NFDI4Health_EX_MDS_Imaging
Id: nfdi4health-ex-mds-imaging
Title: "NFDI4Health EX MDS Imaging"
Description: "Information about imaging data (modalities and body parts examined) in studies that use imaging as a data source."
* ^url = "https://www.nfdi4health.de/fhir/metadataschema/StructureDefinition/nfdi4health-ex-mds-imaging"
* ^status = #draft
* ^version = "0.1"
* ^context[0].type = #element
* ^context[0].expression = "ResearchStudy"
* ^description = "Group of items providing information on imaging data in studies."

* extension contains
    modality 1..* and
    bodyPart 1..*

* extension[modality] ^short = "Imaging modalities (DICOM)"
* extension[modality] ^definition = "Modalities used in the study, using DICOM modality codes."
* extension[modality].value[x] only Coding
* extension[modality].valueCoding from NFDI4Health_VS_MDS_Study_Modality (required)

* extension[bodyPart] ^short = "Body parts examined"
* extension[bodyPart] ^definition = "Information which body parts are imaged within the [RESOURCE]."
* extension[bodyPart].value[x] only Coding
* extension[bodyPart].valueCoding from NFDI4Health_VS_MDS_Study_Body_Structures (required)

Mapping: NFDI4Health-Imaging-to-FHIR
Id: NFDI4Health
Title: "NFDI4Health to FHIR Mapping"
Source: NFDI4Health_EX_MDS_Imaging
* -> "Design.imaging"
* extension[modality] -> "Design.imaging.modality"
* extension[bodyPart] -> "Design.imaging.bodyPart"