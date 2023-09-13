Extension: IsSubjectExtension
Id: sdc-questionnaire-isSubject
Title: "Is subject?"
Description: "If present and true, indicates that the item establishes a different subject for the group in a response."
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Marks that this item identifies a different subject"
* . ^definition = "If present and true, indicates that the item establishes a different subject for the group in a response."
* . ^comment = "The item type must be \"reference\" and there can only be one item with this extension in each group."
* url only uri
* value[x] only boolean