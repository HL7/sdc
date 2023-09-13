Extension: UnitOpen
Id: sdc-questionnaire-unitOpen
Title: "Units open?"
Description: "Indicates whether the list of supported units (conveyed in other extensions) are the exhaustive list from which the user must choose or whether they're able to select alternate codes or specify a string."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Used to denote if user can specify alternate codes"
* . ^definition = "Indicates whether the list of supported units (conveyed in other extensions) are the exhaustive list from which the user must choose or whether they're able to select alternate codes or specify a string."
* url only uri
* value[x] 1..1
* value[x] only code
* value[x] from QuestionnaireAnswerConstraint (required)
  * ^binding.description = "The types of constraints possible on a question item that has a list of permitted answers"