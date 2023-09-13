Invariant: sdc-1
Description: "An item cannot have an answerExpression if answerOption or answerValueSet is already present."
Severity: #error
Expression: "extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression').empty().not() implies (answerOption.empty() and answerValueSet.empty())"
XPath: "f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'] and (not(f:answerOption) and not(f:answerValueSet))"