Extension: UnitSupplementalSystem
Id: sdc-questionnaire-unitSupplementalSystem
Title: "Code system for other units"
Description: "If the questionnaire-unit-open extension indicates that additional units other than the set of options provided for the question are allowed, this indicates the code system those units are expected to be drawn from.  This extension SHOULD be present on any question where questionnaire-unit-open allows additional coded values."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "This extension indicates the code system the additional units are drawn from"
* . ^definition = "If the questionnaire-unit-open extension indicates that additional units other than the set of options provided for the question are allowed, this indicates the code system those units are expected to be drawn from.  This extension SHOULD be present on any question where questionare-unit-open allows additional coded values."
* url only uri
* value[x] 1..1
* value[x] only canonical