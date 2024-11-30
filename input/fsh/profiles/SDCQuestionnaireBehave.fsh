Profile: SDCQuestionnaireBehave
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-behave
Title: "Advanced Behavior Questionnaire"
Description: "Defines additional capabilities for controlling data entry and calculating values within the questionnaire."
* ^status = #draft
* . ^short = "Advanced Behavior Questionnaire"
  * ^definition = "Defines additional capabilities for controlling data entry and calculating values within the questionnaire."
* extension contains
    EntryMode named entryMode 0..* MS and
    EndpointExtension named submissionEndpoint 0..* MS and
    $questionnaire-signatureRequired named signatureRequired 0..* and
    $questionnaire-constraint named constraint 0..* and
    $cqf-library named library 0..* and
    LaunchContextExtension named launchContext 0..* and
    Variable named variable 0..*
* extension[library] ^definition = "A reference to a library containing cql used in this Questionnaire."
* extension[variable] ^requirements = "Allows variables to be calculated higher in the context of a QuestionnaireResponse for use with enableWhen-expression."
* item obeys sdc-behave-2 and sdc-behave-1 and sdc-behave-3
//To do: Fix the hard-coding of the indexes on the constraints to apply the best-practice extension.
  * ^constraint[15].extension[$best-practice].valueBoolean = true
  * extension contains
      AnswerExpressionExtension named answerExpression 0..1 MS and
      $questionnaire-usageMode named usageMode 0..1 MS and
      $questionnaire-signatureRequired named itemSignatureRequired 0..* and
      $questionnaire-minOccurs named itemMinOccurs 0..1 MS and
      $questionnaire-maxOccurs named itemMaxOccurs 0..1 MS and
      $minLength named minLength 0..1 MS and
      $regex named regex 0..1 MS and
      $minValue named minValue 0..1 MS and
      $maxValue named maxValue 0..1 MS and
      MinQuantityExtension named minQuantity 0..1 and
      MaxQuantityExtension named maxQuantity 0..1 and
      $maxDecimalPlaces named maxDecimalPlaces 0..1 MS and
      $mimeType named mimeType 0..* MS and
      $maxSize named maxSize 0..1 and
      AnswerOptionsToggleExpressionExtension named answerOptionsToggleExpression 0..* MS and
      $questionnaire-unitOption named unitOption 0..* MS and
      $questionnaire-unitValueSet named unitValueSet 0..1 MS and
      UnitOpen named unitOpen 0..1 and
      UnitSupplementalSystem named unitSupplementalSystem 0..1 and
      $questionnaire-referenceResource named allowedResource 0..* MS and
      $questionnaire-referenceProfile named allowedProfile 0..* and
      CandidateExpressionExtension named candidateExpression 0..1 and
      LookupQuestionnaireExtension named lookupQuestionnaire 0..1 and
      $questionnaire-constraint named itemConstraint 0..* and
      InitialExpressionExtension named initialExpression 0..1 and
      CalculatedExpressionExtension named calculatedExpression 0..1 and
      EnableWhenExpressionExtension named enableWhenExpression 0..1 MS
  * extension[itemMinOccurs].value[x] ^mustSupport = false
    * extension contains
        $cqf-calculatedValue named itemMinOccursCalculated 0..1 and
        $cqf-expression named itemMinOccursExpression 0..1 MS
  * extension[itemMaxOccurs].value[x] ^mustSupport = false
    * extension contains
        $cqf-calculatedValue named itemMaxOccursCalculated 0..1 and
        $cqf-expression named itemMaxOccursExpression 0..1 MS
  * extension[minValue].value[x] ^mustSupport = false
    * extension contains $cqf-calculatedValue named minValueCalculated 0..1
  * extension[maxValue].value[x] ^mustSupport = false
    * extension contains $cqf-calculatedValue named maxValueCalculated 0..1
  * extension[minQuantity] ^mustSupport = false
    * value[x] ^mustSupport = false
      * extension contains $cqf-calculatedValue named minQuantityCalculated 0..1
  * extension[maxQuantity] ^mustSupport = false
    * value[x] ^mustSupport = false
      * extension contains $cqf-calculatedValue named maxQuantityCalculated 0..1
  * enableWhen
    * question MS
    * operator MS
    * answer[x] MS
  * enableBehavior MS
  * required.value.extension contains $cqf-expression named requiredExpression 0..1 MS
  * repeats.value.extension contains $cqf-expression named repeatsExpression 0..1 MS
  * readOnly.value.extension contains $cqf-expression named readOnlyExpression 0..1 MS
  * answerValueSet.value.extension contains $cqf-expression named answerValueSetExpression 0..1 MS
  * answerOption
    * extension contains
        $questionnaire-optionExclusive named optionExclusive 0..1 MS and
        $ordinalValue named ordinalValue 0..1 MS
    * value[x] 1..1 MS