Invariant: que-14
Description: "Can only have answerConstraint if answerOption, answerValueset, or answerExpression are present."
Severity: #error
Expression: "answerConstraint.exists() implies answerOption.exists() or answerValueset.exists() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression').exists()"
XPath: "not(exists(f:answerConstraint)) or exists(f:answerOption) or exists(f:answerValueSet) or exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'])"