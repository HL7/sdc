Extension: ItemPopulationContextExtension
Id: sdc-questionnaire-itemPopulationContext
Title: "Item population context"
Description: "Specifies a query or other expression that identifies the resource (or set of resources for a repeating item) that should be used to support the population of this Questionnaire or Questionnaire.item on initial population.  When populating the questionnaire, it will set the specified variable name to that resource repetition for use in processing items within the group."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Establishes mapping context for a Questionnaire item"
* . ^definition = "Specifies a query or other expression that identifies the resource (or set of resources for a repeating item) that should be used to support the population of this Questionnaire or Questionnaire.item on initial population.  When populating the questionnaire, it will set the specified variable name to that resource repetition for use in processing items within the group."
* url only uri
* value[x] only Expression