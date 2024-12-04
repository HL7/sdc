Profile: SDCBaseQuestionnaire
Parent: Questionnaire
Id: sdc-questionnaire
Title: "SDC Base Questionnaire"
Description: "Sets minimum expectations for questionnaire support for SDC-conformant systems, regardless of which SDC capabilities they're making use of."
* ^status = #active
* . ^definition = "Sets minimum expectations for questionnaire support for SDC-conformant systems, regardless of which SDC capabilities they're making use of."
* extension contains
    $designNote named designNote 0..1 and
    PreferredTerminologyServer named terminologyServer 0..* and
    PerformerTypeExtension named performerType 0..* MS and
    AssembleExpectation named assemble-expectation 0..1 MS
* extension[designNote] ^comment = "Allows capture of todos, rationale for design decisions, etc.  It can also be used to capture comments about the completion of the form in general. Allows commentary to be captured during the process of answering a questionnaire (if not already supported by the form design) as well as after the form is completed. Comments are not part of the \"data\" of the form. If a form prompts for a comment, this should be captured in an answer, not in this element. Formal assessments of the QuestionnareResponse would use [[[Observation]]]."
* url 1..1 MS
* version MS
* title MS
* status MS
* subjectType MS
  * ^requirements = "A Questionnaire SHOULD specify the subject. However, it is optional to support legacy questionnaires."
* item MS
  * obeys sdc-1
// WARNING: The constraint index in the following rule (e.g., constraint[0]) may be incorrect.
// Please compare with the constraint array in the original definition's snapshot and adjust as necessary.
//  * ^constraint.source = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
  * extension contains
      $designNote named designNote 0..1 and
      PreferredTerminologyServer named terminologyServer 0..*
  * extension[designNote] ^comment = "Allows capture of todos, rationale for design decisions, etc.  It can also be used to capture comments about specific groups or questions within it. Allows commentary to be captured during the process of answering a questionnaire (if not already supported by the form design) as well as after the form is completed. Comments are not part of the \"data\" of the form. If a form prompts for a comment, this should be captured in an answer, not in this element. Formal assessments of the QuestionnareResponse would use [[[Observation]]]."
  * linkId 1..1 MS
  * prefix 0..1 MS
  * text MS
  * type 1..1 MS
    * ^comment = "Time is handled using \"string\".  File is handled using Attachment.  (Content can be sent as a contained binary)."
  * required MS
  * repeats MS
  * repeats ^definition = "An indication, if true, that a QuestionnaireResponse for this item may include multiple answers associated with a single instance of this item (for question-type items) or multiple repetitions of the item (for group-type items)"
  * readOnly MS
  * maxLength MS
  * answerValueSet only canonical
  * answerValueSet MS
    * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"
  * answerOption MS
  * initial 0..* MS
    * value[x] MS
  * item MS

Invariant: sdc-1
Description: "An item cannot have an answerExpression if answerOption or answerValueSet is already present."
Severity: #error
Expression: "extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression').empty().not() implies (answerOption.empty() and answerValueSet.empty())"
XPath: "f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'] and (not(f:answerOption) and not(f:answerValueSet))"