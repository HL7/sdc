Profile: SDCQuestionnaireAdapt
Parent: SDCQuestionnaireCommon
Id: sdc-questionnaire-adapt
Title: "Adaptive Questionnaire"
Description: "Defines the metadata that should be present when embedding a adaptive Questionnaire as part of a QuestionnaireResponse"
* ^status = #active
* . ^short = "Adaptive Questionnaire"
* . ^definition = "Defines the metadata that should be present when embedding a adaptive Questionnaire as part of a QuestionnaireResponse."
* obeys sdc-adapt-1
* extension contains QuestionnaireAdaptiveExtension named questionnaireAdaptive 0..* MS
  * ^comment = "This extension isn't essential because the fact the Questionnaire is adaptive can be inferred from the style, however it may still be useful to assert explicitly, and perhaps to know what servers are useable if amending the form is necessary"
* url ..0
* url ^requirements = "We prohibit URL because this Questionnaire is a one-off for a specific response and therefore does not have its own canonical URL.  The URL of the base questionnaire is captured using Questionnaire.derivedFrom"
* version ..0
* version ^requirements = "We prohibit version because this Questionnaire is a one-off for a specific response and therefore does not have its own canonical URL or version.  The version of the base questionnaire is captured using Questionnaire.derivedFrom"
* title ..1
* derivedFrom 1..1 MS
  * ^short = "Base Questionnaire this adaptive instance is derived from"
  * ^comment = "For this profile, there must be exactly one Questionnaire which is the base Questionnaire the 'adaptive' QuestionnaireResponse completion was executed against."
* item MS
  * text 1..1

Invariant: sdc-adapt-1
Description: "An adaptive questionnaire must be a contained resource within a QuestionnaireResponse."
Severity: #error
Expression: "%rootResource.ofType(QuestionnaireResponse).questionnaire='#' + $this.id or %rootResource.contained.ofType(QuestionnaireResponse).exists(questionnaire='#' + $this.id)"