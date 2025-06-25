Profile: SDCQuestionnairePopulateExpression
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-pop-exp
Title: "Populatable Questionnaire - Expression"
Description: "Defines elements that support auto-population and pre-population of questionnaires using the Expression-based population mechanism"
* ^status = #active
* . ^short = "Populatable Questionnaire - Expression"
* . ^definition = "Defines elements that support auto-population and pre-population of questionnaires using the Expression-based population mechanism."
* extension contains
    $cqf-library named library 0..* and
    LaunchContextExtension named launchContext 0..* MS and
    ItemPopulationContextExtension named itemPopulationContext 0..1 MS and
    Variable named variable 0..* MS
* extension[library] ^definition = "A reference to a library containing cql used in this Questionnaire."
* extension[library] ^mustSupport = false
* item obeys sdc-pop-1
  * extension contains
      $questionnaire-unit named unit 0..1 MS and
      ItemPopulationContextExtension named itemPopulationContext 0..1 MS and
      Variable named itemVariable 0..* and
      InitialExpressionExtension named initialExpression 0..1 and
      CandidateExpressionExtension named candidateExpression 0..1 and
      ContextExpressionExtension named contextExpression 0..* and
      $questionnaire-hidden named itemHidden 0..1 and
      ChoiceColumnExtension named choiceColumn 0..* and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the population process to leverage the fact that the subject for this group and descendants is distinct"

Invariant: sdc-pop-1
Description: "An item cannot have both initial.value and initialExpression"
Severity: #error
Expression: "initial.empty() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression').empty()"
XPath: "not(exists(f:initial) and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']))"