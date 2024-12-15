Extension: EnableWhenExpressionExtension
Id: sdc-questionnaire-enableWhenExpression
Title: "Enable when expression"
Description: "An expression that returns a boolean value for whether to enable the item. If the expression does not resolve to a boolean, it is considered an error in the design of the Questionnaire.  Form renderer behavior is undefined.  Some tools may attempt to force the value to be a boolean (e.g. is it a non-empty collection, non-null, non-zero - if so, then true).  Systems SHOULD present a warning to the user if a non-boolean valued expression result does not trigger an all-out error."
* ^version = "3.0.0"
* ^status = #active
* ^experimental = false
* ^jurisdiction = $m49.htm#001
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Expression for when to enable the item"
* . ^definition = "An expression that returns a boolean value for whether to enable the item."
* . ^comment = "This is only permitted when the containing item does NOT have any enableWhen elements.\r\n\r\nIf the expression involves comparisons between elements that have different precisions but are otherwise equal, FHIRPath will resolve the expression to an empty set, which will in turn evaluate to false (meaning the item won't be enabled).  If this is not the desired behavior, the author should add a `.allTrue()` to the end of the expression, which will result in an indeterminate outcome because of precision differences being handled as 'true' and the item being enabled.  Questionnaires SHOULD be designed to take into account challenges around varying precision to minimize non-deterministic situations by setting constraints around expected precision, etc.\r\n\r\nIf the expression evaluates to something other than a boolean true or false, the Form Filler SHOULD still display the form, and if it does so, SHOULD treat the element as 'enabled' and display a warning to the user that the questionnaire logic was faulty and it's possible that the item shouldn't be enabled."
* url only uri
* value[x] only Expression
* value[x] obeys sdc-inv1
//To do: Fix the hard-coding of the indexes 
//* value[x] ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Element"

Invariant: sdc-inv1
Description: "FHIR query language not allowed."
Severity: #error
Expression: "language!='application/x-fhir-query'"
XPath: "not(f:language/@value='application/x-fhir-query')"