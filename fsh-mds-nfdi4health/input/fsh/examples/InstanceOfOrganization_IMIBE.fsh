Instance: InstanceOfOrganizationIMIBE
InstanceOf: NFDI4Health_PR_MDS_Affiliation
Usage: #example
Title: "Instance Of Organization Institut für Medizinische Informatik, Biometrie und Epidemiologie of Universitätsklinikum Essen"
Description: "Example data representing the Institut für Medizinische Informatik, Biometrie und Epidemiologie of Universitätsklinikum Essen"
* name = "Institut für Medizinische Informatik, Biometrie und Epidemiologie"
* telecom[webpage].value = "https://imibe.uk-essen.de/"
* telecom[phone].value = "+49 (0)201 72377201"
* address.text = "Hufelandstr. 55, 45147, Essen, Germany"
* partOf = Reference(InstanceOfOrganizationUniklinikumEssen)
* identifier[+].value = "02na8dn90" //ROR id of Uniklinikum Essen
* identifier[=].type = $Remaining#081 "ROR"
* identifier[+].value = "grid.491891.c"
* identifier[=].type = $Remaining#082 "GRID"
* type =  $Remaining#037 "Primary Sponsor"