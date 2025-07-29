CodeSystem: ObservationExtractRelationshipCodes
Id: observation-extract-relationship
Title: "Observation Extract Relationship Codes"
Description: "Defines the codes used to specify the relationship type in the ObservationExtractExtension."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #component   "Component"   "The child item will be extracted as a component of the parent observation"
* #member      "Member"      "The child item will be extracted as a separate Observation and the parent Observation will point to it as a hasMember"
* #derived     "Derived"     "The child item will be extracted as a separate Observation and the child will have a derivedFrom relationship to the parent.  (Typically the child answer will be a calculated value in this case.)"
* #independent "Independent" "The child item will be extracted as a separate Observation and there will be no relationship asserted between parent and child"