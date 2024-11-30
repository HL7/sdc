Profile: SDCParametersQuestionnaireAssembleOut
Parent: Parameters
Id: parameters-questionnaire-assemble-out
Title: "Questionnaire assemble output Parameters profile"
Description: "Profile used to validate the parameters that are the output of the 'assemble' questionnaire operation"
* ^status = #active
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter contains
    return 1..1 and
    outcome 0..1
* parameter[return]
  * name = "return" (exactly)
  * value[x] ..0
  * resource only SDCBaseQuestionnaire
  * part ..0
* parameter[outcome]
  * name = "outcome" (exactly)
  * value[x] ..0
  * resource only OperationOutcome
  * part ..0