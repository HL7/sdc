CodeSystem: ObservationExtractRelationshipCodes
Id: observation-extract-relationship
Title: "Observation Extract Relationship Codes"
Description: "Defines the codes used to specify the relationship type in the ObservationExtractExtension."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #member "Member" "Indicates that the extracted Observation is a member of a grouped parent Observation."
* #component "Component" "Indicates that the extracted Observation is a component of a parent Observation."
