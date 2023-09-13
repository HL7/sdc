Invariant: sdc-t1
Description: "Either code is 'fulfill', focus is ServiceRequest and no 'questionnaire' input; or code is 'complete-questionnaire', focus is omitted and 'questionnaire' input is present"
Severity: #error
Expression: "(code.coding.where(code='fulfill' and system='http://hl7.org/fhir/CodeSystem/task-code').exists() and \r\n                            (focus.resolve() is ServiceRequest) and \r\n                            input.where(type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire')).exists().not())\r\n                        or (code.coding.where(code='complete-questionnaire' and system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp').exists() and \r\n                            focus.exists().not() and \r\n                            input.where(type.coding.where(system='http://hl7.org/fhir/uv/sdc/CodeSystem/temp' and code='questionnaire')).exists())"