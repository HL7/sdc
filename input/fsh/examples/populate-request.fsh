Instance: populate-request
InstanceOf: SDCParametersQuestionnairePopulateIn
Title: "Example $populate operation request"
Description: "Shows the request payload when invoking a populate operation"
Usage: #example
* parameter[0]
  * name = "questionnaire"
  * valueUri = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-ussg-fht"
* parameter[+]
  * name = "subject"
  * valueReference = Reference(http://hl7.org/fhir/Patient/proband)
* parameter[+]
  * name = "local"
  * valueBoolean = true
