Extension: Keyboard
Id: sdc-questionnaire-keyboard
Title: "Keyboard Type Extension"
Description: "For string or text items, indicates the 'keyboard type' that should be used by the user interface to guide entry. It does not dictate any specific functionality, it is only used as a hint to input devices that may have special keyboard modes available."
* ^extension[$fmm].valueInteger = 1
* ^status = #active
* ^purpose = "This may affect what characters are accessible or most easily available as well as what prediction algorithm is used.  It is most typically used by mobile devices."
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Keyboard Type"
* . ^definition = "For string or text items, indicates the 'keyboard type' that should be used by the user interface to guide entry."
* . ^comment = "The assertion applies on a per item basis and is not inherited.  If the item is 'text', only 'chat' should be declared if this extension is present."
* url only uri
* value[x] only Coding
* value[x] from QuestionnaireItemKeyboardType (extensible)
  * ^binding.description = "Keyboard types that can be used for text entry."