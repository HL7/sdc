Invariant: sdc-behave-2
Description: "An item cannot have both enableWhen and enableWhenExpression"
Severity: #error
Expression: "enableWhen.empty() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression').empty()"
XPath: "not(exists(f:enableWhen) and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression']))"