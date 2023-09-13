CodeSystem: TemporaryCodes
Id: temp
Title: "Temporary SDC Codes"
Description: "Defines codes defined within the SDC implementation guide that are expected to migrate elsewhere in future releases"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #complete-questionnaire "Complete Questionnaire" "Code indicating a request to complete the a questionnaire - e.g. by Task or ServiceRequest"
* #questionnaire "Questionnaire" "A canonical reference (possibly version-specific) to the Questionnaire to be completed"
* #questionnaire-response "Questionnaire Response" "A reference to the QuestionnaireResponse resulting from the requested action"
* #response-endpoint "Response Endpoint" "Identifies the base URL for FHIR servers to which the Questionnaire resulting from the Task should be POSTed"