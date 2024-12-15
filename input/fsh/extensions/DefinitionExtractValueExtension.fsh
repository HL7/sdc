Extension: DefinitionExtractValueExtension
Id: sdc-questionnaire-definitionExtractValue
Title: "Extract Definition - Extract value"
Description: "Provide either a fixed value, or an expression to evaluate, to be used as the value for the extracted resource's property based on the `definition` value."
* obeys dev-1
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..*
* . ^short = "Fixed or calculated value to extract"
* . ^definition = "Provide either a fixed value, or an expression to evaluate, to be used as the value for the extracted resource's property based on the `definition` value."
* extension contains
    definition 1..1 and
    expression 0..1 and
    fixed-value 0..1
* extension[definition] 
  * ^short = "ElementDefintion to extract value into"
  * ^definition = "This is the profile canonical Url, followed by `#` and the element id, that the value should be extracted into."
  * value[x] 1..1
  * value[x] only uri
    * ^short = "Profile canonical URL and element id"
* extension[expression] 
  * ^short = "An expression to evaluate"
  * ^definition = "An expression to evaluate to extract the value into the specified element definition. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only Expression
    * ^short = "Expression value"
* extension[fixed-value] 
  * ^short = "A fixed value to extract"
  * ^definition = "A fixed value to extract into the specified element definition."
  * value[x] 1..1
    * ^short = "Fixed value"
* url only uri
