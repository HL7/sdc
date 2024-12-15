Extension: CollapsibleExtension
Id: sdc-questionnaire-collapsible
Title: "Collapsible"
Description: "Indicates whether the child items of a group or question item is displayed in collapsible form."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Indicates whether the child items of a group or question item is displayed in collapsible form."
* . ^definition = "Indicates whether the child items of a group or question item is displayed in collapsible form."
* url only uri
* value[x] only code
* value[x] from QuestionnaireItemCollapsible (required)
  * ^binding.description = "Defines mechanism of displaying child items."