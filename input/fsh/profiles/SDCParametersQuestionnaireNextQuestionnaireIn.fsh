Profile: SDCParametersQuestionnaireNextQuestionnaireIn
Parent: Parameters
Id: parameters-questionnaire-next-question-in
Title: "Next question operation input parameters"
Description: "Profile used to validate the parameters that are the input of the 'next question' adaptive questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #open
* parameter contains in 0..*
* parameter[in]
  * name = "in" (exactly)
  * value[x] ..0
  * resource only SDCQuestionnaireResponseAdapt
  * part ..0