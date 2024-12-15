Instance: Questionnaire-process-response
InstanceOf: OperationDefinition
Title: "Questionnaire process response"
Description: "Allows submission of a QuestionnaireRespone for 'processing' by the target server"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-process-response"
* name = "SDCQuestionnaireProcessResponse"
* title = "Questionnaire Process Response"
* status = #active
* kind = #operation
* date = "2017-03-19"
* publisher = "Health Level Seven"
* contact.telecom
  * system = #other
  * value = "http://hl7.org"
* description = "This operation allows a system to 'receive' a QuestionnaireResponse for a particular Questionnaire.  It is intended to be used by systems that expect to receive completed questionnaires but which do not necessarily want to host a RESTful endpoint where those responses are subsequently queryable.  The receiver may choose to perform validation of the received response or against local business rules.  There no response beyond an HTTP 200 OK if the response is consumed successfully, though an OperationOutcome can optionally be returned identifying warnings.  If there are validation or other issues, the operation will fail with details in an OperationOutcome.  The specific action that occurs on receipt of a form will depend on both the type of form and the submitter.  It could trigger admission to a clinical trial, the beginning of an product investigation, the consideration of a patient's eligibility for coverage, etc.  Alternatively, the data may simply be consumed and aggregated with other information for analysis or other use."
* code = #process-response
* comment = "Some receivers may accept responses that are still 'in progress', but others may reject instances with a status other than 'final' or possibly 'amended'.  If the operation is invoked on a particular Questionnaire, the submitted QuestionnaireResponse must be a response to the specified Questionnaire.  Otherwise, the QuestionnaireResponse will be validated against whatever Questionnaire the QuestionnaireResponse references.  It is an error for a QuestionnaireResponse that does not declare a questionnaire to be invoked directly on the Questionnaire endpoint."
* resource = #Questionnaire
* system = false
* type = true
* instance = true
* inputProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/parameters-questionnaire-process-response-in"
* parameter[+]
  * insert parameter(#response, #in, 1, "1", #QuestionnaireResponse, "The questionnaire response to be accepted/processed")
* parameter[+]
  * insert parameter(#warnings, #out, 0, "1",  #OperationOutcome, "If the response is successfully procssed\, an OperationOutcome may still be returned indicating warnings.  For example\, identifying questions that were incomplete\, answers that were defaulted\, etc.  It may also convey 'information' messages about the processing of the questionnaire response.")
