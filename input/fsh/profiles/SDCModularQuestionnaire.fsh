Profile: SDCModularQuestionnaire
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-modular
Title: "SDC Modular Questionnaire"
Description: "Indicates expectations for questionnaires that draw their item content (not just codes) from other resources"
* ^status = #active
* . ^definition = "Indicates expectations for questionnaires that draw their item content (not just codes) from other resources"
* extension[assemble-expectation] 1..
* extension[assemble-expectation] only AssembleExpectation
* extension contains AssembleContextExtension named assembleContext 0..* MS
* item MS
  * extension contains SubQuestionnaireExtension named subQuestionnaire 0..* MS