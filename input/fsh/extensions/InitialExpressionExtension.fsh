Extension: InitialExpressionExtension
Id: sdc-questionnaire-initialExpression
Title: "Initial Expression"
Description: "Initial value for a question answer as determined by an evaluated expression."
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Expression-determined initial value"
* . ^definition = "Initial value for a question answer as determined by an evaluated expression."
* . ^comment = "Initial value is only calculated at the time the QuestionnaireResponse is first generated."
* url only uri
* value[x] only Expression