Profile: SDCQuestionnaireAdaptSearch
Parent: SDCQuestionnaireSearch
Id: sdc-questionnaire-adapt-srch
Title: "Adaptive Questionnaire - search"
Description: "Describes the elements that should be exposed in a response to a search for adaptive questionnaires."
* ^status = #active
* . ^short = "Adaptive Questionnaire - search"
* . ^definition = "Describes the elements that should be exposed in a response to a search for adaptive questionnaires."
* extension contains
    QuestionnaireAdaptiveExtension named questionnaireAdaptive 1..* and
    EndpointExtension named submissionEndpoint 0..* MS
* obeys sdc-adaptive-1
* item 0..0

Invariant: sdc-adaptive-1
Description: "If multiple types are present, all must have a value of type 'url'. If no URL is specified, the location to hit the $next-question operation is undefined but typically assumed to be the server hosting the Questionnaire."
Severity: #error
Expression: "extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-questionnaireAdaptive').count()>1 implies extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-questionnaireAdaptive').all(value = 'url')"
XPath: "count(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-questionnaireAdaptive'])<=1 or not(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-questionnaireAdaptive' and f:value/@value!='url'])"