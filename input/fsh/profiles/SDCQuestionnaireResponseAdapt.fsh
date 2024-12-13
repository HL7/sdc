Profile: SDCQuestionnaireResponseAdapt
Parent: SDCQuestionnaireResponseCommon
Id: sdc-questionnaireresponse-adapt
Title: "Adaptive Questionnaire Response"
Description: "Defines how the questionnaire response resource is used to reflect form data within the ONC's Structured Data Capture standard."
* ^status = #active
* . ^short = "Adaptive Questionnaire Response"
* contained 1..* MS
  * ^comment = "The referenced Questionnaire SHALL be sent as a contained resource."
* questionnaire only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-adapt"
  * ^type.aggregation = #contained
