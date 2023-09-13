Extension: ChoiceColumnExtension
Id: sdc-questionnaire-choiceColumn
Title: "Choice column"
Description: "Provides guidelines for rendering multi-column choices.  I.e. when displaying a list of codes (for `choice` or `open-choice` items) or a list of resources (for `reference` items), this extension allows the drop-down to have multiple columns.  For codes, the author can pick additional code system properties to display - such as alternate display names strength or form for drug codes, etc.  For references, the author can choose particular columns from the resource (e.g. first name, last name, specialty, address)."
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "type='choice' or type='open-choice' or type='reference'"
* . 0..*
* . ^short = "Guide for rendering multi-column choices"
* . ^definition = "Provides guidelines for rendering multi-column choices.  I.e. when displaying a list of codes (for `choice` or `open-choice` items) or a list of resources (for `reference` items), this extension allows the drop-down to have multiple columns.  For codes, the author can pick additional code system properties to display - such as alternate display names strength or form for drug codes, etc.  For references, the author can choose particular columns from the resource (e.g. first name, last name, specialty, address)."
* . ^comment = "Each repetition represents a column to display."
* extension contains
    path 1..1 and
    label 0..1 and
    width 0..1 and
    forDisplay 0..1
* extension[path] only Extension
  * ^short = "Column path"
  * ^definition = "The element to display within the column (see notes)."
  * ^comment = "When the question has a type of choice or open-choice, the path will be interpreted as the 'code' of a property for the code that is available from the answerValueSet.  For code systems that have alternate designations, the path can also indicate the language or designation use, provided that the code system only has one designation for each language or use within the code system.  A path of 'display' will refer to the default displayname for the code as specified in CodeSystem.concept.display.\n\nWhen the question has a type of reference, the path will be interpreted as a FHIRPath evaluated against the candidate resources."
  * value[x] only string
* extension[label] only Extension
  * ^short = "Column label"
  * ^definition = "The label to appear at the top of the column."
  * value[x] only string
* extension[width] only Extension
  * ^short = "Width of column"
  * ^definition = "The size to allocate for the column within the table showing the choices."
  * ^comment = "code missing = pixels; code = % = percentage."
  * value[x] only Quantity
* extension[forDisplay] only Extension
  * ^short = "Use for display ?"
  * ^definition = "If true, indicates that this column should be used as (or as part of) the display value for the coding or reference once selected.  I.e. Coding.display or Reference.display as stored in the QuestionnaireResponse and displayed to the user as the selected answer."
  * ^comment = "For codes, only one column can be picked and it must be a column that corresponds to a legal display name for the code from the value set.  For references, multiple columns can be picked.  If more than one column is chosen, the Reference.display will contain concatenate the column values in the order defined separating them with a single space."
  * value[x] only boolean
* url only uri