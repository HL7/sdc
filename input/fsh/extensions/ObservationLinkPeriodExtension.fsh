Extension: ObservationLinkPeriodExtension
Id: sdc-questionnaire-observationLinkPeriod
Title: "Obervation link period"
Description: "Indicates the time-period (from 'now') to search for observations that match the Questionnaire.item.code and Questionnaire.subject when pre-populating the QuestionnaireResponse."
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Relevant time to pre-pop observation"
* . ^definition = "Indicates the time-period (from 'now') to search for observations that match the Questionnaire.item.code and Questionnaire.subject when pre-populating the QuestionnaireResponse."
* . ^comment = "If multiple Observations are found, the most recent is used."
* url only uri
* value[x] only Duration