Profile: SDCQuestionnaireExtractDefinition
Parent: SDCQuestionnaireCommon
Id: sdc-questionnaire-extr-defn
Title: "Extractable Questionnaire - Definition"
Description: "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism"
* ^status = #active
* . ^short = "Extractable Questionnaire - Definition"
* . ^definition = "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Definition-based extraction mechanism."
* extension contains
    DefinitionExtractExtension named definitionExtract 0..1 MS and
    DefinitionExtractValueExtension named definitionExtractValue 0..* MS and
    ExtractAllocateIdExtension named extractAllocateId 0..* MS and
    $cqf-library named library 0..*
* extension[library] ^definition = "A reference to a library containing cql used in this Questionnaire."
* extension[library] ^mustSupport = false
* item
  * extension contains
      DefinitionExtractExtension named definitionExtract 0..* MS and
      DefinitionExtractValueExtension named definitionExtractValue 0..* MS and
      ExtractAllocateIdExtension named extractAllocateId 0..* MS and
      $questionnaire-unit named unit 0..1 MS
  * definition 0..1 MS

Invariant: sdc-defn-1
Description: "An item cannot have both initial.value and initialExpression"
Severity: #error
Expression: "initial.empty() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression').empty()"
XPath: "not(exists(f:initial) and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression']))"