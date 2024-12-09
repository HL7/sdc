Extension: AssembledFromExtension
Id: sdc-questionnaire-assembledFrom
Title: "Assembled From Questionnaire"
Description: "This extension will appear on the root of an assembled Questionnaire and identifies the subQuestionnaires (including version) that were used as part of the assembly process."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..1
* . ^short = "Identifies subQuestionnaires used in the assembly process"
* . ^definition = "This extension will appear on the root of an assembled Questionnaire and identifies the subQuestionnaires (including version) that were used as part of the assembly process."
* url only uri
* value[x] only canonical