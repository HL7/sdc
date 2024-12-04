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
* . ^comment = "Initial value is only calculated at the time the QuestionnaireResponse is first generated.  If the expression returns coded data, it **SHALL* return the information as either code or Coding, not CodeableConcept.  If the expression returns elements of type 'code', when the user selects one or more candidates, the code will be matched against the allowed Codings (from answerValueSet, answerOptions, or answerExpresssion).  In this case, it is an error if there is more than one Coding with the same code."
* url only uri
* value[x] only Expression