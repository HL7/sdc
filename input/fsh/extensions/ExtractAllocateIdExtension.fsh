Extension: ExtractAllocateIdExtension
Id: sdc-questionnaire-extractAllocateId
Title: "Allocate a new ID during extraction"
Description: "Allocate a new ID for a resource. This will be used as the ID for the resource in the output extraction bundle - in the fullUrl. And the value can be used by name as a variable in any extract expressions"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Indicates the resource type/profile to extract given this context in a response."
* . ^definition = "Indicates the resource type/profile to extract given this context once the QuestionnaireResponse is complete. This will produce multiple resources if the context is on a repeating group. All `Definition` properties relating to this resource must exactly the profile's canonical URL (of this profile, or the base resource if using the code type)"
* url only uri
* value[x] only string
