Profile: SDCQuestionnairePopulateObservation
Parent: SDCQuestionnaireCommon
Id: sdc-questionnaire-pop-obsn
Title: "Populatable Questionnaire - Observation"
Description: "Defines elements that support auto-population and pre-population of questionnaires using the Observation-based population mechanism"
* ^status = #active
* . ^short = "Populatable Questionnaire - Observation"
* . ^definition = "Defines elements that support auto-population and pre-population of questionnaires using the Observation-based population mechanism."
* extension contains
    ObservationLinkPeriodExtension named observationLinkPeriod 0..1
* obeys sdc-pop-2 // New invariant on the Questionnaire root level
* item.
  * extension contains
      ObservationLinkPeriodExtension named observationLinkPeriod 0..1 MS and
      $questionnaire-unit named unit 0..1 MS and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the population process to leverage the fact that the subject for this group and descendants is distinct"
  * code MS

Invariant: sdc-pop-2
Description: "The observationLinkPeriod extension must appear at least once in the Questionnaire"
Severity: #error
Expression: "descendants().extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod').exists() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod').exists()"