Extension: ContextExpressionExtension
Id: sdc-questionnaire-contextExpression
Title: "Answer Context Expression"
Description: "A FHIR Query that resolves to one or more resources that can be displayed to the user to help provide context for answering a question. For example, if the question is \"Has the patient discussed this issue on any visits in the past year?\", the contextExpression might return the set of patient's encounters for the prior 12 month period to help jog the practitioner's memory. If there are multiple repetitions of this extension, then each is providing a distinct set of context.  For example, one repetition might expose 'potentially relevant procedures' while another might expose 'potentially relevant encounters'."
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..*
* . ^short = "Expression for information to guide answers"
* . ^definition = "A FHIR Query that resolves to one or more resources that can be displayed to the user to help provide context for answering a question. For example, if the question is \"Has the patient discussed this issue on any visits in the past year?\", the contextExpression might return the set of patient's encounters for the prior 12 month period to help jog the practitioner's memory."
* extension contains
    label 1..1 and
    expression 1..1
* extension[label]
  * ^short = "Context label"
  * ^definition = "The text to display in the form filler user interface that explains what the returned context information means"
  * url only uri
  * value[x] 1..
  * value[x] only string
* extension[expression] 
  * ^short = "Context expression"
  * ^definition = "The computable rules that identify the contextual information to display to the user"
  * url only uri
  * value[x] 1..
  * value[x] only Expression
* url only uri