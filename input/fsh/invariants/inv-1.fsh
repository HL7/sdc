Invariant: inv-1
Description: "FHIR query language not allowed."
Severity: #error
Expression: "language!='application/x-fhir-query'"
XPath: "not(f:language/@value='application/x-fhir-query')"