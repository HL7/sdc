Profile: SDCParametersQuestionnairePopulateHtmlOut
Parent: Parameters
Id: parameters-questionnaire-populate-html-out
Title: "Populate-html operation output parameters"
Description: "Profile used to validate the parameters that are the output of the [$populate-link](OperationDefinition-Questionnaire-populatehtml.html) questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #open
* parameter contains form 1..1 and
  issues 0..1
* parameter[form]
  * name = "form" (exactly)
  * value[x] ..0
  * resource 1..1
  * resource only Binary
  * part ..0
* parameter[issues]
  * name = "issues" (exactly)
  * value[x] ..0
  * resource 1..1
  * resource only OperationOutcome
  * part ..0
