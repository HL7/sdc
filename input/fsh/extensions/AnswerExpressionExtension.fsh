Extension: AnswerExpressionExtension
Id: sdc-questionnaire-answerExpression
Title: "Answer Expression"
Description: "An expression (FHIRPath, CQL or FHIR Query) that resolves to a list of permitted answers for the question item or that establishes context for a group item.  The user may select from among the list to choose answers for the question."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Expression for possible answers"
* . ^definition = "An expression (FHIRPath, CQL or FHIR Query) that resolves to a list of permitted answers for the question item or that establishes context for a group item.  The user may select from among the list to choose answers for the question."
* . ^comment = "This is only permitted when the containing item does NOT have any answerOption or answerValueSet elements. The results of the expression must correspond to the item type of the question the element appears on or must correspond to a resource, backbone element or complex data type for a group item.  Resources are considered a match for the Reference item type.  Quantity can be a match for decimal and integer items so long as a questionnaire-unit extension is present.  If the result of an expression returns a code or codes, it **SHALL** return the results as Coding, not code or CodeableConcept."
* url only uri
* value[x] only Expression