Profile: SDCQuestionnaireExtractDefinition
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-extr-defn
Title: "Extractable Questionnaire - Definition"
Description: "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism"
* ^status = #active
* . ^short = "Extractable Questionnaire - Definition"
* . ^definition = "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism."
* extension contains
    $cqf-library named library 0..* and
    ItemExtractionContextExtension named itemExtractionContext 0..1 MS
* extension[library] ^definition = "A reference to a library containing cql used in this Questionnaire."
* extension[library] ^mustSupport = false
* item obeys sdc-defn-1
  * extension contains
      $questionnaire-unit named unit 0..1 MS and
      ItemExtractionContextExtension named itemExtractionContext 0..1 MS and
      Variable named itemVariable 0..* and
      InitialExpressionExtension named initialExpression 0..1 and
      $questionnaire-hidden named itemHidden 0..1 and
      IsSubjectExtension named isSubject 0..1
  * extension[isSubject] ^requirements = "Allows the extraction process to leverage the fact that the subject for this group and descendants is distinct"
  * definition 0..1 MS

Invariant: sdc-defn-1
Description: "An item cannot have both initial.value and initialExpression"
Severity: #error
Expression: "initial.empty() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression').empty()"
XPath: "not(exists(f:initial) and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']))"