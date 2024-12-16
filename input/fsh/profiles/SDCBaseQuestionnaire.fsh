Profile: SDCBaseQuestionnaire
Parent: SDCQuestionnaireCommon
Id: sdc-questionnaire
Title: "SDC Base Questionnaire"
Description: "Sets minimum expectations for questionnaire support for SDC-conformant systems for 'standard' (non-adaptive) Questionnaires, regardless of which SDC capabilities they're making use of."
* ^status = #active
* extension contains
    $designNote named designNote 0..1 and
    PerformerTypeExtension named performerType 0..* MS and
    AssembleExpectation named assemble-expectation 0..1 MS
* extension[designNote] ^comment = "Allows capture of todos, rationale for design decisions, etc.  It can also be used to capture comments about the completion of the form in general. Allows commentary to be captured during the process of answering a questionnaire (if not already supported by the form design) as well as after the form is completed. Comments are not part of the \"data\" of the form. If a form prompts for a comment, this should be captured in an answer, not in this element. Formal assessments of the QuestionnaireResponse would use [[[Observation]]]."
* url 1..1 MS
* version MS
* subjectType MS
  * ^requirements = "A Questionnaire SHOULD specify the subject. However, it is optional to support legacy questionnaires."
* item MS
  * extension contains
      $designNote named designNote 0..1 and
      OptionalDisplayExtension named itemOptionalDisplay 0..1
  * extension[designNote] ^comment = "Allows capture of todos, rationale for design decisions, etc.  It can also be used to capture comments about specific groups or questions within it. Allows commentary to be captured during the process of answering a questionnaire (if not already supported by the form design) as well as after the form is completed. Comments are not part of the \"data\" of the form. If a form prompts for a comment, this should be captured in an answer, not in this element. Formal assessments of the QuestionnaireResponse would use [[[Observation]]]."
  * text ^comment = "...This is optional only to support form assembly situations where the text may be generated from another source.  In an assembled Questionnaire, it should always be present."
  * answerValueSet MS

