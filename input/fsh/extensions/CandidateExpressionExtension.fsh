Extension: CandidateExpressionExtension
Id: sdc-questionnaire-candidateExpression
Title: "Candidate Answers Expression"
Description: "A FHIRPath or CQL expression, or FHIR Query that resolves to a list of candidate answers for the question item or that establishes context for a group item.  The user may select from among the candidates to choose answers for the question."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Expression for possible answers"
* . ^definition = "A FHIRPath or CQL expression, or FHIR Query that resolves to a list of candidate answers for the question item or that establishes context for a group item.  The user may select from among the candidates to choose answers for the question."
* . ^comment = "The results of the expression must correspond to the item type of the question the element appears on or must correspond to a resource, backbone element or complex data type for a group item.  Resources are considered a match for the Reference item type.  Quantity can be a match for decimal and integer items so long as a questionnaire-unit extension is present.  If the expression returns coded data, it **SHALL* return the information as either code or Coding, not CodeableConcept.  If the expression returns elements of type 'code', when the user selects one or more candidates, the code will be matched against the allowed Codings (from answerValueSet, answerOptions, or answerExpresssion).  In this case, it is an error if there is more than one Coding with the same code."
* url only uri
* value[x] only Expression