Extension: LookupQuestionnaireExtension
Id: sdc-questionnaire-lookupQuestionnaire
Title: "Lookup questionnaire"
Description: "For items of type reference, the reference can be populated either by picking an existing entity or by creating a new one.  In the latter case, this Questionnaire allows specifying the Questionnaire to use in creating the target instance.  Typically this will result in a QuestionnaireResponse that can be [extracted](extraction.html) to produce the desired resource.  However, if the target resource for the reference is a QuestionnaireResponse, then the QuestionnaireResponse resulting from the Questionnaire can be referenced directly."
* ^status = #active
* ^purpose = "Allows creation of references to be Questionnaire-based."
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* ^contextInvariant = "type.exists(code='Reference') or exists(type='reference')"
* . 0..1
* . ^short = "Questionnaire to populate a reference"
* . ^definition = "For items of type reference, the reference can be populated either by picking an existing entity or by creating a new one.  In the latter case, this Questionnaire allows specifying the Questionnaire to use in creating the target instance.  Typically this will result in a QuestionnaireResponse that can be [extracted](extraction.html) to produce the desired resource.  However, if the target resource for the reference is a QuestionnaireResponse, then the QuestionnaireResponse resulting from the Questionnaire can be referenced directly."
* url only uri
* value[x] only canonical