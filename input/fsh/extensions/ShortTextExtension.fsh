Extension: ShortTextExtension
Id: sdc-questionnaire-shortText
Title: "Short Text"
Description: "The short text for the item."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Short text for the item."
* . ^definition = "The short text for the item."
* . ^comment = "This element is useful for an item that require a shorter text when rendered  (e.g. when displaying the item on a mobile phone)."
* url only uri
* value[x] only string