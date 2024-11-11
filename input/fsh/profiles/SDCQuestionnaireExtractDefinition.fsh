Profile: SDCQuestionnaireExtractDefinition
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-extr-defn
Title: "Extractable Questionnaire - Definition"
Description: "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* . ^short = "Extractable Questionnaire - Definition"
* . ^definition = "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism."
* extension contains
    $cqf-library named library 0..* and
    DefinitionExtractExtension named definitionExtract 0..1 MS and
    DefinitionExtractValueExtension named definitionExtractValue 0..* MS
* extension[library] ^definition = "A reference to a library containing cql used in this Questionnaire."
* extension[library] ^mustSupport = false
* item obeys sdc-defn-1
  * extension contains
      $questionnaire-unit named unit 0..1 MS and
      DefinitionExtractExtension named definitionExtract 0..* MS and
      DefinitionExtractValueExtension named definitionExtractValue 0..* MS and
      Variable named itemVariable 0..* and
      InitialExpressionExtension named initialExpression 0..1 and
      $questionnaire-hidden named itemHidden 0..1 and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the extraction process to leverage the fact that the subject for this group and descendants is distinct"
  * definition 0..1 MS