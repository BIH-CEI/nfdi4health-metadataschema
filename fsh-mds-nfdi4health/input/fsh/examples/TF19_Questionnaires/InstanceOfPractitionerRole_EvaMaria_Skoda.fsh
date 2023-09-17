Instance: InstanceOfPractitionerRoleEvaMariaSkoda
InstanceOf: NFDI4Health_PR_MDS_Practitioner_Role
Usage: #example
Title: "Instance Of NFDI4Health_PR_MDS_Practitioner_Role for Eva-Maria Skoda"
Description: "Example data representing the practitioner role of Eva-Maria Skoda"

* practitioner = Reference(InstanceOfPractitionerEvaMariaSkoda)
* organization = Reference(InstanceOfOrganizationContactKlinikPsychoSomatik)
* telecom[email].value = "eva-maria.skoda@lvr.de"
* telecom[phone].value = "+49 (0)201 438755226"
