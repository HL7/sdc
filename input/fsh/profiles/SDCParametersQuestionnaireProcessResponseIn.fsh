Profile: SDCParametersQuestionnaireProcessResponseIn
Parent: Parameters
Id: parameters-questionnaire-process-response-in
Title: "Questionnaire process response operation input parameters"
Description: "Profile used to validate the parameters that are the input of the 'process response' questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains in 0..*
* parameter[in]
  * name = "in" (exactly)
  * value[x] ..0
  * resource only SDCQuestionnaireResponse
  * part ..0