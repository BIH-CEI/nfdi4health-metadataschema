Logical: Example_LM_Temperature_as_Kelvin
Parent: Element
Id: example-lm-temperature-as-kelvin
Title: "Example LM Temperature as Kelvin"
Description: "Example LogicalModel defining that the temperature is measured in Kelvin"
* ^url = "https://www.nfdi4health.de/fhir/StructureDefinition/LogicalModel/example-lm-temperature-as-kelvin"
* PatientTemperature 0..1 BackboneElement "Patient temperature in Kelvin" "Group of items used to store a measured patient temperature in Kelvin."
* PatientTemperature.code 1..1 CodeableConcept "Type of temperature observation"
* PatientTemperature.code from $LNC
* PatientTemperature.code ^fixedCode = #8310-5 //body temperature
* PatientTemperature.value 0..1 Quantity "Actual temperature"
* PatientTemperature.value.value 1..1 decimal "Numerical temperature value"
* PatientTemperature.value.unit 1..1 string "Unit"
* PatientTemperature.value.unit ^fixedString = "kelvin"
* PatientTemperature.value.system 0..1 uri "System that defines coded unit form"
* PatientTemperature.value.system ^fixedUri = $UCUM
* PatientTemperature.value.code 0..1 code "Coded form of the unit"
* PatientTemperature.value.code ^fixedCode = #K
* PatientTemperature.dataAbsentReason 0..1 CodeableConcept "Reason why the result is missing"
* PatientTemperature.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (required)
* PatientTemperature.dataAbsentReason ^comment = "A smaller value set might need to be created to only ask for the values 'asked-declined' (-9) and 'error' (-99)."

Mapping: Example_LM_Temperature_as_Kelvin_Internal_Numbering
Id: example-lm-temperature-as-kelvin-internal-numbering
Title: "Example Temperature as Kelvin mapped to internal numbering"
Source: Example_LM_Temperature_as_Kelvin
* PatientTemperature -> "t_d"

Instance: ExampleTemperatureAsKelvinToInternalMapping
InstanceOf: ConceptMap 
* status = #draft
* group.source = "http://hl7.org/fhir/ValueSet/data-absent-reason"
* group.element[0].code = #unknown
* group.element[0].display = "Unknown"
* group.element[0].target.code = #-9
* group.element[0].target.display = "Teilnahme verweigert"
* group.element[0].target.equivalence = #equivalent
* group.element[1].code = #error
* group.element[1].display = "Error"
* group.element[1].target.code = #-99
* group.element[1].target.display = "Messfehler"
* group.element[1].target.equivalence = #equivalent


