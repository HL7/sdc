Extension: AssembleContextExtension
Id: sdc-questionnaire-assembleContext
Title: "Assemble Context extension"
Description: "This extension, used on a subQuestionnaire, indicates a FHIRPath variable that must be present in context when the subQuestionnaire is referenced."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..*
* . ^short = "Variable name to be available from referencing Questionnaire"
* . ^definition = "This extension, used on a subQuestionnaire, indicates a FHIRPath variable that must be present in context when the subQuestionnaire is referenced."
* url only uri
* value[x] only string