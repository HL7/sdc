Extension: MinQuantityExtension
Id: sdc-questionnaire-minQuantity
Title: "Min quantity"
Description: "The inclusive lower bound on the range of allowed values for a 'quantity' type question.  Open Issue: Revisit whether this should be folded into the regular minValue extension once there are better capabilities around defining conformance expectations regarding extensions."
* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "type.exists(code='Quantity') or exists(type='quantity')"
* . 0..1
* . ^short = "Must be >= this value"
* . ^definition = "The inclusive lower bound on the range of allowed values for a 'quantity' type question.  Open Issue: Revisit whether this should be folded into the regular minValue extension once there are better capabilities around defining conformance expectations regarding extensions."
* . ^comment = "This  must only be used if the set of permitted units is constrained to UCUM codes and the minimum  checks will be performed by converting the answer.valueQuantity to the same units as the minQuantity unit prior to comparison."
* url only uri
* value[x] only Quantity