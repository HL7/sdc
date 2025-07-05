Extension: AssembleDefinitionRoot
Id: sdc-questionnaire-assembleDefinitionRoot
Title: "Assemble Definition Root"
Description: "Indicates that the assembly process SHALL only use definitions that have the specified URI as their root. Can also be set to false to disable assembly."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* value[x] only uri or boolean
* value[x] ^short = "URI root of definitions to use or false to disable"
* value[x] ^definition = "If present, indicates that the assembly process SHALL only use definitions that have the specified URI as their root. If false, disables assembly for the element and its descendants."
* ^purpose = "Supports modular assembly by filtering which definitions to consider during composition of the Questionnaire structure."
