Extension: TemplateExtractContextExtension
Id: sdc-questionnaire-templateExtractContext
Title: "Template extract context fhirpath expression"
Description: "Establishes mapping context for replacing template content based on a fhirpath expression. This will be used by any child properties as the context for any other templateExtractContext or templateExtractValue extensions. If the name property on an expression is included, it will be also available to child extension evaluation. If the expression evaluates to no results, then this element in the templated resource will be removed, and futher processing of it's children is not required."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Element"
* . 0..1
* . ^short = "Establishes mapping context for replacing template content based on a fhirpath expression"
* . ^definition = "Establishes mapping context for replacing template content based on a fhirpath expression. This will be used by any child properties as the context for any other templateExtractContext or templateExtractValue extensions. If the name property on an expression is included, it will be also available to child extension evaluation."
* url only uri
* value[x] only Expression or string
* . ^short = "FhirPath expression"
* . ^definition = "If value is of type 'string', then it is to be evaluated as a fhirpath expression. If a value of type 'Expression' is provided, only fhirpath expressions are supported, and the language MAY be omitted."
