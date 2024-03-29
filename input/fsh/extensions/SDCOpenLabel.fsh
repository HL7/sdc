Extension: SDCOpenLabel
Id: sdc-questionnaire-openLabel
Title: "Label for 'open' items"
Description: "The label text to display beside free-text and/or unrestricted type values for an 'open' choice element.  E.g. 'Other, please specify', or 'Additional condition', or 'More reason(s)', etc."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^purpose = "Gives control to the questionnaire designer rather than leaving it up to the Form Filler."
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "type='open-choice'"
* . 0..1
* . ^short = "Image to display"
* . ^definition = "The label text to display beside free-text and/or unrestricted type values for an 'open' choice element.  E.g. 'Other, please specify', or 'Additional condition', or 'More reason(s)', etc."
* url only uri
* value[x] only string