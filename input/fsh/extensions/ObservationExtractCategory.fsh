Extension: ObservationExtractCategory
Id: sdc-questionnaire-observation-extract-category
Title: "Extract Observation - Category"
Description: "Indicates the Observation.category value(s) that should appear on extracted Observations for the entire Questionnaire or for the current item and descendant items.  If this extension appears at multiple levels in the Questionnaire, those defined on lower-level items override those declared on higher-level items."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..*
* . ^short = "Extract the Observation.category value(s) from Questionnaire"
* . ^definition = "Indicates the Observation.category value(s) that should appear on extracted Observations for the entire Questionnaire or for the current item and descendant items.  If this extension appears at multiple levels in the Questionnaire, those defined on lower-level items override those declared on higher-level items."
* . ^comment = "This extension canot be specified on \"display\" items."
* url only uri
* value[x] only CodeableConcept