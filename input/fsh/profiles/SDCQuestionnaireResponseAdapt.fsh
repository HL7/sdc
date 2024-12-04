Profile: SDCQuestionnaireResponseAdapt
Parent: QuestionnaireResponse
Id: sdc-questionnaireresponse-adapt
Title: "Adaptive Questionnaire Response"
Description: "Defines how the questionnaire response resource is used to reflect form data within the ONC's Structured Data Capture standard."
* ^status = #active
* . ^short = "Adaptive Questionnaire Response"
* . ^definition = "Represents a response to a questionnaire that is dynamically built as each question is answered."
* . ^alias = "Form Data"
* contained 1..* MS
  * ^comment = "The referenced Questionnaire SHALL be sent as a contained resource."
* questionnaire 1..1 MS
* questionnaire only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-adapt"
* status MS
* subject 1..1 MS
* subject only Reference(Patient)
* authored 1..1 MS
  * ^definition = "Identifies when this version of the answer set was created.  Changes whenever the answers are updated."
* author MS
* item MS
  * linkId 1..1 MS
  * answer 0..* MS
    * value[x] 0..1 MS
    * value[x] only boolean or date or dateTime or time or decimal or integer or string or Coding or uri or Quantity or Attachment or Reference
    * item 0..* MS
      * ^contentReference = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse#QuestionnaireResponse.item"
  * item MS
    * ^contentReference = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse#QuestionnaireResponse.item"