Profile: SDCQuestionnaireAdapt
Parent: Questionnaire
Id: sdc-questionnaire-adapt
Title: "Adaptive Questionnaire"
Description: "Defines the metadata that should be present when embedding a adaptive Questionnaire as part of a QuestionnaireResponse"
* ^status = #active
* . ^short = "Adaptive Questionnaire"
* . ^definition = "Defines the metadata that should be present when embedding a adaptive Questionnaire as part of a QuestionnaireResponse."
* obeys sdc-adapt-1
* extension contains QuestionnaireAdaptiveExtension named questionnaireAdaptive 1..1 MS
* url ..0
* url ^requirements = "We prohibit URL because this Questionnaire is a one-off for a specific response and therefore does not have its own canonical URL.  The URL of the base questionnaire is captured using Questionnaire.derivedFrom"
* version MS
* title 1..1 MS
* derivedFrom 1..1 MS
  * ^short = "Base Questionnaire this adaptive instance is drivenen from"
  * ^comment = "For this profile, there must be exactly one Questionnaire which is the base Questionnaire the 'adaptive' QuestionnaireResponse completion was executed against."
* status MS
* item MS
  * extension contains $questionnaire-hidden named hidden 0..1 MS
  * linkId MS
  * prefix MS
  * text 1..1 MS
  * type MS
  * required MS
  * repeats MS
  * readOnly MS
  * answerOption MS
    * value[x] MS
  * initial MS
    * value[x] MS
  * item MS

Invariant: sdc-adapt-1
Description: "An adaptive questionnaire must be a contained resource within a QuestionnaireResponse."
Severity: #error
Expression: "%rootResource.ofType(QuestionnaireResponse).questionnaire='#' + $this.id or %rootResource.contained.ofType(QuestionnaireResponse).exists(questionnaire='#' + $this.id)"