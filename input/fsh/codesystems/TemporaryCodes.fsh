CodeSystem: TemporaryCodes
Id: temp
Title: "Temporary SDC Codes"
Description: "Defines codes defined within the SDC implementation guide that are expected to migrate elsewhere in future releases"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #complete-questionnaire "Complete Questionnaire" "Code indicating a request to complete the a questionnaire - e.g. by Task or ServiceRequest"
* #questionnaire "Questionnaire" "A canonical reference (possibly version-specific) to the Questionnaire to be completed"
* #questionnaire-response "Questionnaire Response" "A reference to the QuestionnaireResponse resulting from the requested action"
* #response-endpoint "Response Endpoint" "Identifies the base URL for FHIR servers to which the Questionnaire resulting from the Task should be POSTed"
* #question-library "Question Library" "Indicates that a Questionnaire is a library of reusable items to be referenced during modular form assembly."
* #behaviorExpressionLanguage "Behavior Expression Language" "Application feature code for declaring supported language for behavior-related Questionnaire extensions (as categorized in the [expressions.html#table](SDC Extensions page table)).  The feature value will be a supported expression mime type - `text/cql`, `text/fhirpath`, or `application/x-fhir-query`."
* #extractionExpressionLanguage "Extraction Expression Language" "Application feature code for declaring supported language for extraction-related Questionnaire extensions (as categorized in the [expressions.html#table](SDC Extensions page table)).  The feature value will be a supported expression mime type - `text/cql`, `text/fhirpath`, or `application/x-fhir-query`."
* #populationExpressionLanguage "Population Expression Language" "Application feature code for declaring supported language for population-related Questionnaire extensions (as categorized in the [expressions.html#table](SDC Extensions page table)).  The feature value will be a supported expression mime type - `text/cql`, `text/fhirpath`, or `application/x-fhir-query`."
