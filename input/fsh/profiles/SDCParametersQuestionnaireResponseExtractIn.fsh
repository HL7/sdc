Profile: SDCParametersQuestionnaireResponseExtractIn
Parent: Parameters
Id: parameters-questionnaireresponse-extract-in
Title: "Questionnaire extract operation input parameters"
Description: "Profile used to validate the parameters that are the input of the 'extract' questionnaire response operation"
* ^status = #draft
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains
    in 0..* and
    questionnaire 0..1
* parameter[in]
  * name = "in" (exactly)
  * value[x] ..0
  * resource only SDCQuestionnaireExtractObservation or SDCQuestionnaireExtractDefinition or SDCQuestionnaireExtractStructureMap
  * part ..0
* parameter[questionnaire]
  * name = "questionnaire" (exactly)
  * value[x] ..0
  * resource only Questionnaire
  * part ..0
  * ^short = "Questionnaire reference for extraction"
