Profile: SDCQuestionnairePopulateObservation
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-pop-obsn
Title: "Populatable Questionnaire - Observation"
Description: "Defines elements that support auto-population and pre-population of questionnaires using the Observation-based population mechanism"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* . ^short = "Populatable Questionnaire - Observation"
* . ^definition = "Defines elements that support auto-population and pre-population of questionnaires using the Observation-based population mechanism."
* item.
  * extension contains
      ObservationLinkPeriodExtension named observationLinkPeriod 0..1 MS and
      $questionnaire-unit named unit 0..1 MS and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the population process to leverage the fact that the subject for this group and descendants is distinct"
  * code MS