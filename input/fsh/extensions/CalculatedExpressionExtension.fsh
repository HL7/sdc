Extension: CalculatedExpressionExtension
Id: sdc-questionnaire-calculatedExpression
Title: "Calculated Expression"
Description: "Calculated value for a question answer as determined by an evaluated expression."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "initial.exists().not()"
* . 0..1
* . ^short = "Expression-determined initial value"
* . ^definition = "Calculated value for a question answer as determined by an evaluated expression."
* . ^comment = "Calculated value is updated  as other answers in the QuestionnaireResponse are filled in."
* url only uri
* value[x] 1..1
* value[x] only Expression