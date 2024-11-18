Extension: TemplateExtractValueExtension
Id: sdc-questionnaire-templateExtractValue
Title: "Extract Template - Set"
Description: "Provides an expression to evaluate any value(s) to replace in the given template extraction context. If no result is evaluated, the element in the templated resource will be removed, and futher processing of it's children is not required."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Element"
* . 0..1
* . ^short = "Calculate value for template extraction"
* . ^definition = "Provides an expression to evaluate any value(s) to replace in the given template extraction context. If no result is evaluated, the element in the templated resource will be removed, and futher processing of it's children is not required."
* url only uri
* value[x] only string
* . ^short = "FhirPath expression"
