Extension: WidthExtension
Id: sdc-questionnaire-width
Title: "Width of column"
Description: "When used with an item control that causes the question to appear as a column in a table, indicates the width to give to the column for this question."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Width of column for question"
* . ^definition = "When used with an item control that causes the question to appear as a column in a table, indicates the width to give to the column for this question."
* . ^comment = "code missing = pixels; code = % = percentage."
* url only uri
* value[x] only Quantity