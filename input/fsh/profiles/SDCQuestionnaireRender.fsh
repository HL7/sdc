Profile: SDCQuestionnaireRender
Parent: SDCQuestionnaireCommon
Id: sdc-questionnaire-render
Title: "Advanced Rendering Questionnaire"
Description: "Defines additional capabilities for controlling the rendering of the questionnaire."
* ^status = #active
* . ^short = "Advanced Rendering Questionnaire"
* . ^definition = "Defines additional capabilities for controlling the rendering of the questionnaire."
* obeys sdc-rend-2
* modifierExtension contains RenderingCriticalExtension named rendering-criticalExtension 0..* MS
* title
  * extension contains
      $rendering-style named title-renderingStyle 0..1 and
      $rendering-xhtml named title-xhtml 0..1
* item
  * obeys sdc-rend-1
  * extension contains
      ItemMedia named itemMedia 0..1 and
      OptionalDisplayExtension named itemOptionalDisplay 0..1 and
      ShortTextExtension named itemShortText 0..1 and
      SDCOpenLabel named openLabel 0..1 and
      $questionnaire-itemControl named itemControl 0..1 MS and
      $questionnaire-choiceOrientation named choiceOrientation 0..1 and
      $questionnaire-displayCategory named displayCategory 0..1 MS and
      $questionnaire-supportLink named supportLink 0..* and
      ChoiceColumnExtension named choiceColumn 0..* and
      WidthExtension named width 0..1 and
      $questionnaire-sliderStepValue named sliderStepValue 0..1 and
      $entryFormat named entryFormat 0..1 MS and
      CollapsibleExtension named collapsible 0..1 and
      ColumnCountExtension named columnCount 0..1 and 
      Keyboard named keyboardType 0..1
  * prefix
    * extension contains
        $rendering-style named itemLabel-renderingStyle 0..1 and
        $rendering-xhtml named itemLabel-xhtml 0..1
  * text
    * extension contains
        $rendering-style named groupText-renderingStyle 0..1 and
        $rendering-xhtml named groupText-xhtml 0..1 and
        $cqf-expression named expression 0..1 MS
    * extension[expression] ^comment = "Note: The variation cannot change the meaning of the question. The extension can be used even if text is present; and if the extension is supported, the evaluation will replace the text provided (with 'smarter' text). "
  * answerOption
    * extension contains ItemAnswerMedia named itemAnswerMedia 0..1
    * extension contains QOptionPrefix named optionPrefix 0..1
    * valueString only string
    * valueString.extension contains
        $rendering-style named optionString-renderingStyle 0..1 and
        $rendering-xhtml named optionString-xhtml 0..1
    * valueCoding only Coding
      * display.extension contains
          $rendering-style named optionDisplay-renderingStyle 0..1 and
          $rendering-xhtml named optionDisplay-xhtml 0..1

Invariant: sdc-rend-1
Severity: #error
Description: "Items with a controlType of 'page' can only appear in root-level items."
Expression: "extension('http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl').value.coding.where(system='http://hl7.org/fhir/questionnaire-item-control' and code='page').exists() implies %resource.item.where(linkId=%context.linkId).exists()"
XPath: "not(exists(f:extension[@url='http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl']/f:valueCodeableConcept/f:coding[f:system/@value='' and f:code/@value='page'])) or not(exists(parent::f:item))"

Invariant: sdc-rend-2
Severity: #error
Description: "If a questionnaire has child items with a controlType of page, then all items must have a type of page, header or footer."
Expression: "item.where(extension('http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl').value.coding.where(system='http://hl7.org/fhir/questionnaire-item-control' and code='page').exists()).exists() implies item.all(extension('http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl').value.coding.where(system='http://hl7.org/fhir/questionnaire-item-control' and (code='page' or code='header' or code='footer')).exists())"
XPath: "not(exists(f:item[f:extension[@url='http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl' and f:valueCodeableConcept/f:coding[f:system/@value='' and f:code/@value='page']]])) or count(f:item) = count(f:item[f:extension[@url='http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl' and f:valueCodeableConcept/f:coding[f:system/@value='' and f:code[@value='page' or @value='header' or @value='footer']]]])"
