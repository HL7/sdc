Invariant: sdc-pop-1
Description: "An item cannot have both initial.value and initialExpression"
Severity: #error
Expression: "initial.empty() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression').empty()"
XPath: "not(exists(f:initial) and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']))"