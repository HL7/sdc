Extension: SubQuestionnaireExtension
Id: sdc-questionnaire-subQuestionnaire
Title: "Sub-questionnaire"
Description: "Indicates that the display item on which this extension appears should be replaced with the referenced Questionnaire"
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "exists(type='display')"
* . 0..1
* . ^short = "Questionnaire to substitute here"
* . ^definition = "Indicates that the display item on which this extension appears should be replaced with the referenced Questionnaire"
* url only uri
* value[x] only canonical