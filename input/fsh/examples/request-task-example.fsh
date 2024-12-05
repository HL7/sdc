Instance: request-task-example
InstanceOf: SDCTaskQuestionnaire
Title: "Request-based solicitation example - Task"
Description: "Shows how completion of a questionnaire can be solicited with Task pointing to a ServiceRequest"
Usage: #example
* status = #rejected
* statusReason.text = "Unable to recall"
* intent = #order
* code = $task-code#fulfill
* focus = Reference(ServiceRequest/example)
* for = Reference(http://hl7.org/fhir/Patient/proband) "Annie Proband"
* authoredOn = "2021-09-06"
* requester = Reference(http://hl7.org/fhir/PractitionerRole/example) "Dr. Adam Careful, Acme Hospital"
* owner = Reference(http://hl7.org/fhir/Patient/proband) "Annie Proband"