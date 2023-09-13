Extension: AnswerOptionsToggleExpressionExtension
Id: sdc-questionnaire-answerOptionsToggleExpression
Title: "Answer Options Toggle Expression"
Description: "A complex expression that provides a list of the allowed options that should be enabled or disabled based on the evaluation of a provided expression.  It allows toggling of allowed answers based on context, including the answers provided to other expressions.  Any options not listed by one of the answerOptionsToggleExpression occurrences are presumed to be 'enabled'"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^purpose = "This is used when the set of options are fixed, but there is a need to toggle some of them on or off (as opposed to having the entire set of options dynamic, as is supported by answerExpression)."
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "type='choice' or type='open-choice'"
* . 0..*
* . ^short = "Expression constraining allowed answers"
* . ^definition = "A complex expression that provides a list of the allowed options that should be enabled or disabled based on the evaluation of a provided expression.  It allows toggling of allowed answers based on context, including the answers provided to other expressions."
* . ^comment = "For example, this allows a list of conditions to be modified based on the gender of the patient"
* extension contains
    option 1..* and
    expression 1..1
* extension[option] 
  * ^short = "Option(s) to toggle"
  * ^definition = "Each repetition is an option to toggle based on the expression"
  * value[x] 1..
    * ^short = "The option value to control"
* extension[expression] 
  * ^short = "The expression to toggle on"
  * ^definition = "If this expression evaluate's to 'true', then the specified options should be enabled, otherwise they should be disabled."
  * value[x] 1..
  * value[x] only Expression
    * ^short = "Expression value"
* url only uri