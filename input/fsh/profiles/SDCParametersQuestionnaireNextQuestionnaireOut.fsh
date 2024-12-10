Profile: SDCParametersQuestionnaireNextQuestionnaireOut
Parent: Parameters
Id: parameters-questionnaire-next-question-out
Title: "Next question operation output parameters"
Description: "Profile used to validate the parameters that are the output of the 'next question' adaptive questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #open
* parameter contains out 0..*
* parameter[out]
  * name = "out" (exactly)
  * value[x] ..0
  * resource only SDCQuestionnaireResponseAdapt
  * part ..0