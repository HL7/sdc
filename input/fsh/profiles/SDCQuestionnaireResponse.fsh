Profile: SDCQuestionnaireResponse
Parent: SDCQuestionnaireResponseCommon
Id: sdc-questionnaireresponse
Title: "SDC Standard Questionnaire Response"
Description: "Defines how the questionnaire response resource is used to reflect form data within SDC for 'standard' (i.e. non-adaptive) forms."
* ^status = #active
* . ^short = "Standard Questionnaire Response"
* questionnaire only canonical
  * ^comment = "For SDC, this SHALL be the version-specific URL of the form as hosted on the Form Manager."
  * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
  * extension contains $display named questionnaireDisplay 0..1 MS
  * extension[questionnaireDisplay] ^comment = "This SHALL be the title of the Questionnaire at the time the QuestionnaireResponse was originally authored."
