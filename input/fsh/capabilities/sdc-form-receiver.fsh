Instance: sdc-form-receiver
InstanceOf: CapabilityStatement
Title: "SDC Form Receiver"
Description: "SDC Repository for completed forms"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-receiver"
* name = "SDCFormReceiver"
* title = "SDC Form Receiver"
* status = #active
* date = "2014-07-06"
* description = "This profile defines the expected capabilities of the *SDC Form Receiver* role when conforming to implementation guide.  This role is responsible for accepting and processing completed and partially-completed forms.  It only exposes a single operation endpoint - the one needed to 'process' a completed [[[QuestionnaireResponse]]]"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest[+]
  * mode = #server
  * security.description = "Implementations must meet the [general security requirements](security.html) documented in this implementation guide.html."
  * insert RootOperation(#SHALL, "process-response", $process-response, [[Allows submitting a completed form]])
* rest[+]
  * mode = #client
  * insert SDCResource(QuestionnaireResponse, #MAY, sdc-questionnaireresponse, [[Perform operations based on the received response]])
    * insert Operation(#MAY, "extract", $extract, [[Convert completed form to resources]])
