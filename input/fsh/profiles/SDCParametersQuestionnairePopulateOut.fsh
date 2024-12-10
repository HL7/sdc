Profile: SDCParametersQuestionnairePopulateOut
Parent: Parameters
Id: parameters-questionnaire-populate-out
Title: "Populate operation output parameters"
Description: "Profile used to validate the parameters that are the output of the [$populate](OperationDefinition-Questionnaire-populate.html) questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #open
* parameter contains response 1..1 and
  issues 0..1
* parameter[response]
  * name = "response" (exactly)
  * value[x] ..0
  * resource 1..1
  * resource only SDCQuestionnaireResponse
  * part ..0
* parameter[issues]
  * name = "issues" (exactly)
  * value[x] ..0
  * resource 1..1
  * resource only OperationOutcome
  * part ..0
