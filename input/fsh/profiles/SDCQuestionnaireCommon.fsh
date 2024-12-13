Profile: SDCQuestionnaireCommon
Parent: Questionnaire
Id: sdc-questionnairecommon
Title: "SDC Questionnaire Common Elements"
Description: "Defines common elements for all SDC Questionnaires (regular or adaptive)."
* ^status = #active
* ^abstract = true
* extension contains
    PreferredTerminologyServer named terminologyServer 0..*
* status MS
* title MS
* item
  * obeys sdc-1
  * extension contains 
    $questionnaire-hidden named hidden 0..1 MS and
    PreferredTerminologyServer named terminologyServer 0..*
  * linkId MS
  * prefix MS
  * type MS
    * ^comment = "Time is handled using \"string\".  File is handled using Attachment.  (Content can be sent as a contained binary)."
  * required MS
  * repeats MS
    * ^definition = "An indication, if true, that a QuestionnaireResponse for this item may include multiple answers associated with a single instance of this item (for question-type items) or multiple repetitions of the item (for group-type items)"
  * readOnly MS
  * answerValueSet only canonical
    * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"
  * answerOption MS
    * value[x] MS
  * initial MS
    * value[x] MS
  * item MS

Invariant: sdc-1
Description: "An item cannot have an answerExpression if answerOption or answerValueSet is already present."
Severity: #error
Expression: "extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression').empty().not() implies (answerOption.empty() and answerValueSet.empty())"
XPath: "f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'] and (not(f:answerOption) and not(f:answerValueSet))"