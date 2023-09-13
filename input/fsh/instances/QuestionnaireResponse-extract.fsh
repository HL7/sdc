Instance: QuestionnaireResponse-extract
InstanceOf: OperationDefinition
Title: "Questionnaire response extract to resource(s)"
Description: "Converts a QuestionnaireResponse to a clinical or administrative resource or a Transaction Bundle of them"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/OperationDefinition/QuestionnaireResponse-extract"
* version = "0.0.0"
* name = "SDCQuestionnaireResponseExtract"
* title = "Questionnaire response extract to resource(s)"
* status = #draft
* kind = #operation
* date = "2018-08-30"
* publisher = "HL7 International - FHIR Infrastructure"
* description = "The Extract operation takes a completed QuestionnaireResponse and converts it to a FHIR resource or Bundle of resources by using metadata embedded in the Questionnaire the QuestionnaireResponse is based on.  \r\n  The extracted resources might include Observations, MedicationStatements and other standard FHIR resources which can then be shared and manipulated.\r\n  When invoking the $extract operation, care should be taken that the submitted QuestionnaireResponse is itself valid.  If not, the extract operation could fail (with appropriate OperationOutcomes)\r\n  or, more problematic, might succeed but provide incorrect output."
* code = #extract
* comment = "The QuestionnaireResponse must identify a Questionnaire instance containing appropriate metadata to allow extraction.  (Refer to the [Data Extraction](extraction.html) page for more details.)"
* resource = #QuestionnaireResponse
* system = false
* type = true
* instance = true
* inputProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/parameters-questionnaireresponse-extract-in"
* parameter[0]
  * insert parameter(#questionnaire-response, #in, 0, "1", #Resource,"The QuestionnaireResponse to extract data from.  Used when the operation is invoked at the 'type' level." )
* parameter[+]
  * insert parameter(#return, #out, 0, "1", #Resource, "The resulting FHIR resource produced after extracting data.  This will either be a single resource or a Transaction Bundle that contains multiple resources.  The operations in the Bundle might be creates\, updates and/or conditional versions of both depending on the nature of the extraction mappings.")
* parameter[+]
  * insert parameter(#issues, #out, 0, "1",  #OperationOutcome, "A list of hints and warnings about problems encountered while extracting the resource(s\) from the QuestionnaireResponse. If there was nothing to extract\, a 'success' OperationOutcome is returned with a warning and/or information messages. In situations where the input is invalid or the operation otherwise fails to complete successfully\, a normal 'erroneous' OperationOutcome would be returned (as happens with all operations\) indicating what the issue was.")

