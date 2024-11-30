Profile: SDCQuestionnaireExtractStructureMap
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-extr-smap
Title: "Extractable Questionnaire - StructureMap"
Description: "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the StructureMap-based extraction mechanism"
* ^status = #active
* . ^short = "Extractable Questionnaire - StructureMap"
* . ^definition = "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the StructureMap-based extraction mechanism."
* extension contains TargetStructureMapExtension named targetStructureMap 0..* MS
* item
  * extension contains
      $questionnaire-unit named unit 0..1 MS and
      $questionnaire-hidden named itemHidden 0..1 and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the extraction process to leverage the fact that the subject for this group and descendants is distinct"