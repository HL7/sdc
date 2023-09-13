Profile: SDCQuestionnaireAdaptSearch
Parent: SDCQuestionnaireSearch
Id: sdc-questionnaire-adapt-srch
Title: "Adaptive Questionnaire - search"
Description: "Describes the elements that should be exposed in a response to a search for adaptive questionnaires."
* ^status = #draft
* . ^short = "Adaptive Questionnaire - search"
* . ^definition = "Describes the elements that should be exposed in a response to a search for adaptive questionnaires."
* extension contains
    QuestionnaireAdaptiveExtension named questionnaireAdaptive 0..* and
    EndpointExtension named submissionEndpoint 0..* MS