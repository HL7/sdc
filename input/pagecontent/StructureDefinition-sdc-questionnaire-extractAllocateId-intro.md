<a name="scope"></a>
## Scope and Usage
This extension currently only applies to either the [definition](extraction.html#definition-extract) or [template](extraction.html#template-extract) extraction processing.

The `value` will be made available as a named variable in extract fhirpath expressions, and only within the scope of the item that contains the extension, and any child items of that collection.

When defined on a repeating item, the value will be new for each iteration of the item in the QuestionnaireResponse answers.

When defined at the root of a questionnaire, the value will be available for all items in the questionnaire (and only allocated once).
