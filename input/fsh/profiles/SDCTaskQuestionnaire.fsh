Profile: SDCTaskQuestionnaire
Parent: Task
Id: sdc-task
Title: "Task Questionnaire"
Description: "Defines how Task is used to ask for a Questionnaire to be completed"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* obeys sdc-t1
* . ^mustSupport = false
* status 1..1 MS
* status only code
* intent MS
* code 1..1 MS
* code only CodeableConcept
* code from TaskCode (required)
* focus only Reference(SDCQuestionnaireServiceRequest)
* focus MS
  * ^condition = "sdc-t1"
* for 0..1 MS
* for ^short = "Patient or other Questionnaire is for"
* authoredOn 1..1 MS
* requester 1..1 MS
* owner 0..1 MS
  * ^short = "Who should complete questionnaire"
* reasonCode MS
* input MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains
    questionnaire 0..1 MS and
    responseEndpoint 0..* MS
* input[questionnaire]
  * ^definition = "Indicates the questionnaire to be completed."
  * ^condition = "sdc-t1"
  * type 1..1 MS
  * type only CodeableConcept
  * type = $temp#questionnaire
  * value[x] 1..1 MS
  * value[x] only canonical
  * value[x] ^short = "url"
* input[responseEndpoint] 
  * ^definition = "Indicates an endpoint the form should be posted to on completion."
  * type 1..1 MS
  * type only CodeableConcept
  * type = $temp#response-endpoint
  * value[x] 1..1 MS
  * value[x] only url
  * value[x] ^short = "url"
* output MS
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains response 0..1 MS
* output[response] 
  * ^definition = "Indicates the questionnaire response resulting from the request."
  * type 1..1 MS
  * type only CodeableConcept
  * type = $temp#questionnaire-response
  * value[x] 1..1 MS
  * value[x] only Reference(QuestionnaireResponse)
  * value[x] ^short = "url"