Instance: example-of-Task
InstanceOf: SDCTaskQuestionnaire
Title: "Task-based solicitation example"
Description: "Shows how completion of a questionnaire can be solicited with Task alone"
Usage: #example
* id = "example"
* status = #completed
* intent = #order
* code = $temp#complete-questionnaire
* for = Reference(http://hl7.org/fhir/Patient/proband) "Annie Proband"
* authoredOn = "2021-09-06"
* requester = Reference(http://hl7.org/fhir/PractitionerRole/example) "Dr. Adam Careful, Acme Hospital"
* owner = Reference(http://hl7.org/fhir/Patient/proband) "Annie Proband"
* reasonCode.text = "Pre-genomic analysis family history"
* insert taskInputCanonical($temp#questionnaire, http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-ussg-fht)
* insert taskInputUrl($temp#response-endpoint, http://example.org/someplace/QuestionnaireResponse)
* insert taskInputUrl($temp#response-endpoint, http://example.org/some-other-place/Questionnaire/$process-response)
* insert taskOutput($temp#questionnaire-response,questionnaireresponse-sdc-example-ussg-fht-answers)