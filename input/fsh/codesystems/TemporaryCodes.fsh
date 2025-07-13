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