Instance: sdc-form-receiver
InstanceOf: CapabilityStatement
Title: "SDC Form Receiver"
Description: "SDC Repository for completed forms"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-receiver"
* name = "SDCFormReceiver"
* title = "SDC Form Receiver"
* status = #draft
* date = "2014-07-06"
* publisher = "HL7 International - FHIR Infrastructure"
* contact.telecom
  * system = #other
  * value = "http://wiki.siframework.org/Structured+Data+Capture+Initiative"
* description = "This profile defines the expected capabilities of the ''SDC Form Receiver'' role when conforming to the S&I Framework's [[index.html|Structured Data Capture FHIR implementation guide]].  This role is responsible for accepting and processing completed and partially-completed forms.  It only exposes a single operation endpoint - the one needed to 'process' a completed QuestionnaireResponse"
* kind = #requirements
* fhirVersion = #1.0.0
* format[0] = #xml
* format[+] = #json
* rest
  * mode = #server
  * security.description = "Implementations must meet the general security requirements documented in the [[security.html|SDC implementation guide]]."
  * operation
    * name = "process-response"
    * definition = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-process-response"