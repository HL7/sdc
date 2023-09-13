Profile: SDCQuestionnaireExtractObservation
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-extr-obsn
Title: "Extractable Questionnaire - Observation"
Description: "Defines elements that allow conversion of a QuestionnaireResponse to an Observation resource or Bundle of Observation resources using the Observation-based extraction mechanism"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* . ^short = "Extractable Questionnaire - Observation"
* . ^definition = "Defines elements that allow conversion of a QuestionnaireResponse to an Observation resource or Bundle of Observation resources using the Observation-based extraction mechanism."
* item obeys sdc-obsn-1
  * extension contains
      $questionnaire-unit named unit 0..1 MS and
      ObservationExtractExtension named observationExtract 0..1 MS and
      ObservationExtractCategory named observationExtractCategory 0..* and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the extraction process to leverage the fact that the subject for this group and descendants is distinct"
  * code MS
    * extension contains ObservationExtractExtension named observationExtract 0..1 MS