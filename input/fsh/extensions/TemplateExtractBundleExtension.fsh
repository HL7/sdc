Extension: TemplateExtractBundleExtension
Id: sdc-questionnaire-templateExtractBundle
Title: "Extract Template - Bundle"
Description: "Specifies a reference to a contained transaction bundle resource template to be extracted from this item once the QuestionnaireResponse is complete. The template will be cloned into the output extraction bundle, and any template values will be replaced with the values from the QuestionnaireResponse."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* . 0..1
* . ^short = "Establishes extract context for a Questionnaire to a Transaction Bundle using an extraction template"
* . ^definition = "Specifies a reference to a contained resource template to be extracted from this item once the QuestionnaireResponse is complete."
* url only uri
* value[x] only Reference
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/Bundle"
  * ^short = "Contained reference to the bundle resource template"