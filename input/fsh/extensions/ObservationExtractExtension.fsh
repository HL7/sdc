Extension: ObservationExtractExtension
Id: sdc-questionnaire-observationExtract
Title: "Extract Observation"
Description: "Indicates how the observation-based extraction approach should be applied to an item or all items in a questionnaire. When set to `true`, the item is extracted as an independent Observation with no relationship to a parent Observation (If true, indicates that the observation-based approach should be used to extract either the particular item (if extension is defined on an individual question or group based on the code present) or all items in the questionnaire (if defined at the questionnaire root and if they have a code present)). When set to a `code` value (e.g., `member` or `component`), the extracted Observation is related to a parent Observation according to the specified relationship. Mixing `boolean` and `code` values within the same item is invalid and will result in an error."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item.code"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Marks an item (or all items in a questionnaire) to be extracted using the observation-based approach"
* . ^definition = "Indicates how the observation-based extraction approach should be applied to an item or all items in a questionnaire. When set to `true`, the item is extracted as an independent Observation with no relationship to a parent Observation (If true, indicates that the observation-based approach should be used to extract either the particular item (if extension is defined on an individual question or group based on the code present) or all items in the questionnaire (if defined at the questionnaire root and if they have a code present)). When set to a `code` value (e.g., `member` or `component`), the extracted Observation is related to a parent Observation according to the specified relationship. Mixing `boolean` and `code` values within the same item is invalid and will result in an error."
* . ^comment = "This extension canot be specified on \"display\" items."
* url only uri
* value[x] only boolean or code
* value[x] from ObservationExtractRelationship (required)