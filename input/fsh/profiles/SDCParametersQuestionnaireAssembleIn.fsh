Profile: SDCParametersQuestionnaireAssembleIn
Parent: Parameters
Id: parameters-questionnaire-assemble-in
Title: "Questionnaire assemble input Parameters profile"
Description: "Profile used to validate the parameters that are the input of the 'assemble' questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains
    questionnaire 1..1
* parameter[questionnaire]
  * name = "questionnaire" (exactly)
  * value[x] only uri or Reference(SDCModularQuestionnaire)
  * resource only SDCModularQuestionnaire
  * part ..0
