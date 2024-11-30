Invariant: sdc-adaptive-1
Description: "If multiple types are present, all must have a value of type 'url'. If no URL is specified, the location to hit the $next-question operation is undefined but typically assumed to be the server hosting the Questionnaire."
Severity: #error
Expression: "extension('http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-questionnaireAdaptive').count()=1 or extension('http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-questionnaireAdaptive').all(value = 'url')"
XPath: "count(f:extension[@url='http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-questionnaireAdaptive'])=1 or not(f:extension[!url='http://hl7.org/fhir/StructureDefinition/sdc-questionnaire-questionnaireAdaptive' and f:value/@value!='url'])"
