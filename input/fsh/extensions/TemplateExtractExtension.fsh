Extension: TemplateExtractExtension
Id: sdc-questionnaire-templateExtract
Title: "Template based extraction?"
Description: "Specifies a reference to a contained resource template (or set of resources for a repeating item) to be extracted from this item once the QuestionnaireResponse is complete. The template will be cloned into the output extraction bundle, and any template values will be replaced with the values from the QuestionnaireResponse."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* . 0..*
* . ^short = "Establishes extract context for a Questionnaire/item"
* . ^definition = "Specifies a reference to a contained resource template (or set of resources for a repeating item) to be extracted from this item once the QuestionnaireResponse is complete."
* url only uri
* value[x] only Reference
