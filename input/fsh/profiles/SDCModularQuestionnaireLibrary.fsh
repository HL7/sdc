Profile: SDCModularQuestionnaireLibrary
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-modular-library
Title: "SDC Modular Questionnaire Library"
Description: "Indicates expectations for questionnaires that serve as 'question libraries' for other Questionnaires"
* ^status = #active
* . ^definition = "Indicates expectations for questionnaires that draw their item content (not just codes) from other resources"
* useContext
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* useContext contains library 1..1
* useContext[library]
  * ^type.profile = Canonical(SDCQuestionnaireLibraryUsageContext)
