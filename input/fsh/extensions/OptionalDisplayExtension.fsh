Extension: OptionalDisplayExtension
Id: sdc-questionnaire-optionalDisplay
Title: "Optional Display?"
Description: "This extension is used when defining high-level questionnaires that will then be used as a basis for 'derived' Questionnaires that are further refined for use in specific organizations or contexts.  If the extension is present and set to 'true', it means that this item should be considered to be 'optional' from an adaptation perspective and that the question can be removed (i.e. not displayed) in derived questionnaires without impacting the validity of the instrument.  Alternatively, the element can be marked as 'hidden' and 'readOnly' and have a value or descendant item values declared using initialValue or initialExpression.  If the element with 'optionalDisplay=true' is marked as 'required=true', then this second approach is the only means to exclude the element from display."
* ^version = "3.0.0"
* ^status = #active
* ^purpose = "This was introduced to satisfy requirements from the College of American Pathologists (CAP)"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* . 0..1
* . ^short = "Can suppress from display to user"
* . ^definition = "This extension is used when defining high-level questionnaires that will then be used as a basis for 'derived' Questionnaires that are further refined for use in specific organizations or contexts.  If the extension is present and set to 'true', it means that this item should be considered to be 'optional' from an adaptation perspective and that the question can be removed (i.e. not displayed) in derived questionnaires without impacting the validity of the instrument.  Alternatively, the element can be marked as 'hidden' and 'readOnly' and have a value or descendant item values declared using initialValue or initialExpression.  If the element with 'optionalDisplay=true' is marked as 'required=true', then this second approach is the only means to exclude the element from display."
* . ^comment = "If a group or question that contains other groups or questions is marked as \"optional\", all of its contents are automatically also treated as optional."
* url only uri
* value[x] only boolean