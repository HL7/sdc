Extension: SDCServiceRequestQuestionnaire
Id: sdc-servicerequest-questionnaire
Title: "ServiceRequest Questionnaire"
Description: "Identifies a Questionnaire that is being asked to be completed"
* ^status = #active
* ^context.type = #element
* ^context.expression = "ServiceRequest"
* . 0..*
* . ^short = "Questionnaire to be completed"
* . ^definition = "Identifies a Questionnaire that is being asked to be completed"
* url only uri
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"