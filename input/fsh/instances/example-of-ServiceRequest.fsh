Instance: example-of-ServiceRequest
InstanceOf: SDCQuestionnaireServiceRequest
Title: "Request-based solicitation example - ServiceRequest"
Description: "Shows a ServiceRequest soliciting completion of a questionnaire"
Usage: #example
* id = "example"
* extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-servicerequest-questionnaire"
* extension.valueCanonical = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-PHQ9"
* status = #active
* intent = #order
* code = $temp#complete-questionnaire
* subject = Reference(http://hl7.org/fhir/Patient/proband) "Annie Proband"
* occurrenceTiming.repeat
  * frequency = 1
  * period = 1
  * periodUnit = #mo
* requester = Reference(http://hl7.org/fhir/PractitionerRole/example) "Dr. Adam Careful, Acme Hospital"
* performer = Reference(http://hl7.org/fhir/Patient/proband) "Annie Proband"
* reasonCode.text = "Monitor effects of new anti-depressant"