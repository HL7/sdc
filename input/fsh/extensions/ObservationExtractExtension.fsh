Extension: ObservationExtractExtension
Id: sdc-questionnaire-observationExtract
Title: "Extract Observation"
Description: "If true, indicates that the observation-based approach should be used to extract either the particular item (if extension is defined on an individual question or group based on the code present) or all items in the questionnaire (if defined at the questionnaire root and if they have a code present)."
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item.code"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Marks an item (or all items in a questionnaire) to be extracted using the observation-based approach"
* . ^definition = "If true, indicates that the observation-based approach should be used to extract either the particular item (if extension is defined on an individual question or group based on the code present) or all items in the questionnaire (if defined at the questionnaire root and if they have a code present)."
* . ^comment = "This extension canot be specified on \"display\" items."
* url only uri
* value[x] only boolean