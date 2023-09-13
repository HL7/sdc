Extension: AssembleContextExtension
Id: sdc-questionnaire-assembleContext
Title: "Assemble Context extension"
Description: "Indicates a variable that must be available on any node that is referencing the Questionnaire as a sub-questionnaire"
* ^status = #draft
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..*
* . ^short = "Variable name to be available from referencing Questionnaire"
* . ^definition = "Indicates a variable that must be available on any node that is referencing the Questionnaire as a sub-questionnaire"
* url only uri
* value[x] only string