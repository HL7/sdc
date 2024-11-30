Extension: EndpointExtension
Id: sdc-questionnaire-endpoint
Title: "Endpoint"
Description: "The base URL for the server(s) to which questionnaire response associated with this questionnaire should be submitted. If multiple repetitions are present, the completed form should be sent to all listed endpoints."
* ^status = #active
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..*
* . ^short = "Where to send answers"
* . ^definition = "The base URL for the server to which questionnaire response associated with this questionnaire should be submitted. If multiple repetitions are present, the completed form should be sent to all listed endpoints."
* . ^comment = "Indicates that the form has been designed with an expectation that it will be submitted to the specified URI.  If multiple endpoints are specified, expectation is that answers are submitted to all endpoints.\n\nIf no end-point is specified, then the form is not exclusively designed to be submitted to a specific site.  If and where the form needs to be submitted or how the form should be internally processed must be inferred from external context or system business rules.\n\nEndpoints may have expectations around authorization, etc.  Some of this may be learned by consulting the CapabilityStatement associated with the endpoint."
* url only uri
* value[x] only uri