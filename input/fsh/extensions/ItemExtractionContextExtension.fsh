Extension: ItemExtractionContextExtension
Id: sdc-questionnaire-itemExtractionContext
Title: "Item extraction context"
Description: "Specifies a query or other expression that identifies the resource (or set of resources for a repeating item) to be extracted from this item once the QuestionnaireResponse is complete."
* ^status = #active
* ^context[0].type = #element
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