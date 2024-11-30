Extension: IsSubjectResponseExtension
Id: sdc-questionnaireresponse-isSubject
Title: "Is subject (response)?"
Description: "If present and true, indicates that the item indicates a different subject for this group."
* ^status = #active
* ^context.type = #element
* ^context.expression = "QuestionnaireResponse.item"
* . 0..1
* . ^short = "Marks that this item identifies a different subject"
* . ^definition = "If present and true, indicates that the item indicates a different subject for this group."
* . ^comment = "The item type must be \"reference\" and there can only be one item with this extension in each group."
* url only uri
* value[x] only boolean