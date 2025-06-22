Profile: SDCParametersQuestionnaireResponseExtractIn
Parent: Parameters
Id: parameters-questionnaireresponse-extract-in
Title: "Questionnaire extract operation input parameters"
Description: "Profile used to validate the parameters that are the input of the 'extract' questionnaire response operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains
    questionnaire-response 0..1 and
    questionnaire 0..1
* parameter[questionnaire-response]
  * name = "questionnaire-response" (exactly)
  * value[x] ..0
  * resource only SDCQuestionnaireResponse
  * part ..0
  * ^short = "QuestionnarieResponse to extract from"
* parameter[questionnaire]
  * name = "questionnaire" (exactly)
  * value[x] ..0
  * resource only SDCQuestionnaireExtractObservation or SDCQuestionnaireExtractDefinition or SDCQuestionnaireExtractTemplate or SDCQuestionnaireExtractStructureMap
  * part ..0
  * ^short = "Questionnaire reference for extraction"
