Instance: InstanceOfPractitionerRoleMatthiasZerban
InstanceOf: NFDI4Health_PR_MDS_Practitioner_Role
Usage: #example
Title: "Instance Of NFDI4Health_PR_MDS_Practitioner_Role for Matthias Zerban"
Description: "Example data representing the practitioner role of Matthias Zerban"

* practitioner = Reference(InstanceOfPractitionerMatthiasZerban)
* organization = Reference(InstanceOfOrganizationContactNIC)
* telecom[email].value = "matthias.zerban@unimedizin-mainz.de"
* telecom[phone].value = "+49 (0)003 1178075"