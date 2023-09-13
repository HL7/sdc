Extension: PerformerTypeExtension
Id: sdc-questionnaire-performerType
Title: "Performer type"
Description: "Indicates the types of resources that can record answers to a Questionnaire. Open Issue: Should this extension be moved to core?"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^version = "3.0.0"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . ^short = "Resource that can record answers to this Questionnaire"
* . ^definition = "Indicates the types of resources that can record answers to a Questionnaire. Open Issue: Should this extension be moved to core?"
* url only uri
* value[x] only code
* value[x] from QuestionnairePerformerType (required)
  * ^binding.description = "Resources that can record answers to a questionnaire."