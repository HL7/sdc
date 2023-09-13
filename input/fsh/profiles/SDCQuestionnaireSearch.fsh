Profile: SDCQuestionnaireSearch
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-search
Title: "Search Questionnaire"
Description: "Describes the elements that should be exposed in a response to a search for questionnaires."
* ^status = #draft
* . ^definition = "Describes the elements that should be exposed in a response to a search for questionnaires."
* extension[assemble-expectation] only AssembleExpectation
* extension contains AssembledFromExtension named assembledFrom 0..*
* identifier MS
* title 1..1 MS
* experimental MS
* date 1..1 MS
  * ^definition = "Identifies when this version of the form was created.  Changes whenever the form is updated."
* publisher MS
* description MS
* useContext only SDCUsageContext
* useContext MS
* jurisdiction 0..1
  * ^comment = "Relevant for systems that support forms from multiple countries/provinces/states."
* purpose MS
* copyright MS
* approvalDate ^comment = "Relevant for systems that have strict curation requirements that govern when a form/instrument is permitted for use."
* lastReviewDate ^comment = "Relevant for systems that have strict curation requirements that govern when a form/instrument is permitted for use."
* effectivePeriod ^comment = "Relevant for systems that have strict curation requirements that govern when a form/instrument is permitted for use."
* code 0..1 MS
* item
  * definition ^comment = "Systems that support searching by the 'definition' parameter SHALL support returning item.definition."
  * code ^comment = "Systems that support searching by the 'code' parameter SHALL support returning item.code."