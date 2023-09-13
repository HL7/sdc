Profile: SDCQuestionnaireServiceRequest
Parent: ServiceRequest
Id: sdc-servicerequest
Title: "Questionnaire Service Request"
Description: "Defines how ServiceRequest is used to ask for a Questionnaire to be completed"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* extension contains SDCServiceRequestQuestionnaire named questionnaire 1..*
* status MS
* intent MS
* doNotPerform = false (exactly)
  * ^comment = "If the element is present, the value must be 'false'"
* code 1.. MS
* code = $temp#complete-questionnaire
* subject 1..1 MS
  * ^short = "Patient or other Questionnaire is for"
* occurrence[x] MS
  * ^short = "When (and possibly how often) the Questionnaire needs to be completed"
* requester 1..1 MS
* performer 0..1 MS
  * ^short = "Who should complete questionnaire"
* reasonCode MS