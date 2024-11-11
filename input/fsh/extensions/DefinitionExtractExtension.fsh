Extension: DefinitionExtractExtension
Id: sdc-questionnaire-definitionExtract
Title: "Definition based extraction?"
Description: "Indicates the resource type/profile to extract given this context once the QuestionnaireResponse is complete. This will produce multiple resources if the context is on a repeating group. All `Definition` properties relating to this resource must exactly the profile's canonical URL (of this profile, or the base resource if using the code type)."
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
* value[x] only code or canonical
* value[x] from ResourceType (required)
  * ^binding.description = "If value is of type 'code', then the extraction is always the creation of a new resource of the specified type. If a profile is specified, then it would be a resource of that profiles base resource type (and includes the value in the meta.profile)"
