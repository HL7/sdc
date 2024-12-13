Profile: SDCQuestionnairePopulateStructureMap
Parent: SDCQuestionnaireCommon
Id: sdc-questionnaire-pop-smap
Title: "Populatable Questionnaire - StructureMap"
Description: "Defines elements that support auto-population and pre-population of questionnaires  using the StructureMap-based population mechanism"
* ^status = #active
* . ^short = "Populatable Questionnaire - StructureMap"
* . ^definition = "Defines elements that support auto-population and pre-population of questionnaires  using the StructureMap-based population mechanism."
* extension contains
    LaunchContextExtension named launchContext 0..* and
    SourceQueriesExtension named sourceQueries 0..1 and
    SourceStructureMapExtension named sourceStructureMap 0..*
* item.
  * extension contains
      $questionnaire-unit named unit 0..1 and
      $questionnaire-hidden named itemHidden 0..1 and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the population process to leverage the fact that the subject for this group and descendants is distinct"