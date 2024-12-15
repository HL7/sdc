Extension: ItemExtractionContextExtension
Id: sdc-questionnaire-itemExtractionContext
Title: "Extract Definition - Resource (legacy)"
Description: "Specifies a query or other expression that identifies the resource (or set of resources for a repeating item) to be extracted from this item once the QuestionnaireResponse is complete. This extension is deprecated in favor of the `DefinitionExtractExtension` extension."
* ^extension[$standard-status].valueCode = #deprecated
* ^extension[$fmm].valueInteger = 0
* ^status = #retired
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Establishes mapping context for a Questionnaire item"
* . ^definition = "Specifies a query or other expression that identifies the resource (or set of resources for a repeating item)  to be extracted from this item once the QuestionnaireResponse is complete."
* url only uri
* value[x] only Expression or code
* value[x] from ResourceType (required)
  * ^binding.description = "If value is of type 'code', then the extraction is always the creation of a new resource of the specified type."
