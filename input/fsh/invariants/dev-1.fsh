Invariant: dev-1
Description: "Either `expression` or a `fixed-value` must be provided."
Severity: #error
Expression: "extension('expression').value.exists() xor extension('fixed-value').value.exists()"
