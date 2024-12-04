Extension: QuestionnaireAdaptiveExtension
Id: sdc-questionnaire-questionnaireAdaptive
Title: "Questionnaire Adaptive"
Description: "Marks a questionnaire as being adaptive.  Value can either be a boolean (if true, indicates adaptive) or a URL for the base URL of a server that can perform the nextQuestion operation for this particular questionnaire."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..*
* . ^short = "Marks a questionnaire as being adaptive."
* . ^definition = "Marks a questionnaire as being adaptive.  Value can either be a boolean (if true, indicates adaptive) or a URL for the base URL of a server that can perform the nextQuestion operation for this particular questionnaire."
* . ^comment = "There can only be one in a questionnaire if the value used is boolean."
* url only uri
* value[x] only boolean or url