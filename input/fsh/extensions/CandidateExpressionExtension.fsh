Extension: CandidateExpressionExtension
Id: sdc-questionnaire-candidateExpression
Title: "Candidate Answers Expression"
Description: "A FHIRPath or CQL expression, or FHIR Query that resolves to a list of candidate answers for the question item or that establishes context for a group item.  The user may select from among the candidates to choose answers for the question."
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Expression for possible answers"
* . ^definition = "A FHIRPath or CQL expression, or FHIR Query that resolves to a list of candidate answers for the question item or that establishes context for a group item.  The user may select from among the candidates to choose answers for the question."
* . ^comment = "The results of the expression must correspond to the item type of the question the element appears on or must correspond to a resource, backbone element or complex data type for a group item.  Resources are considered a match for the Reference item type.  Quantity can be a match for decimal and integer items so long as a questionnaire-unit extension is present."
* url only uri
* value[x] only Expression