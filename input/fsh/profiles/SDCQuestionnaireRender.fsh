Profile: SDCQuestionnaireRender
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-render
Title: "Advanced Rendering Questionnaire"
Description: "Defines additional capabilities for controlling the rendering of the questionnaire."
* ^status = #draft
* . ^short = "Advanced Rendering Questionnaire"
* . ^definition = "Defines additional capabilities for controlling the rendering of the questionnaire."
* extension contains $rendering-styleSensitive named styleSensitive 0..1 MS
* title.
  * extension contains
      $rendering-style named title-renderingStyle 0..1 and
      $rendering-xhtml named title-xhtml 0..1
* item.
  * extension contains
      ItemMedia named itemMedia 0..1 and
      OptionalDisplayExtension named itemOptionalDisplay 0..1 and
      ShortTextExtension named itemShortText 0..1 and
      $questionnaire-hidden named itemHidden 0..1 MS and
      SDCOpenLabel named openLabel 0..1 and
      $questionnaire-itemControl named itemControl 0..1 MS and
      $questionnaire-choiceOrientation named choiceOrientation 0..1 and
      $questionnaire-displayCategory named displayCategory 0..1 MS and
      $questionnaire-supportLink named supportLink 0..* and
      ChoiceColumnExtension named choiceColumn 0..* and
      WidthExtension named width 0..1 and
      $questionnaire-sliderStepValue named sliderStepValue 0..1 and
      $entryFormat named entryFormat 0..1 MS and
      CollapsibleExtension named collapsible 0..1
  * prefix
    * extension contains
        $rendering-style named itemLabel-renderingStyle 0..1 and
        $rendering-xhtml named itemLabel-xhtml 0..1
  * text.
    * extension contains
        $rendering-style named groupText-renderingStyle 0..1 and
        $rendering-xhtml named groupText-xhtml 0..1 and
        $cqf-expression named expression 0..1 MS
    * extension[expression] ^comment = "Note: The variation cannot change the meaning of the question. The extension can be used even if text is present; and if the extension is supported, the evaluation will replace the text provided (with 'smarter' text). "
  * answerOption
    * extension contains ItemAnswerMedia named itemAnswerMedia 0..1
    * valueString only string
    * valueString.extension contains
        $rendering-style named optionString-renderingStyle 0..1 and
        $rendering-xhtml named optionString-xhtml 0..1
    * valueCoding only Coding
      * display.extension contains
          $rendering-style named optionDisplay-renderingStyle 0..1 and
          $rendering-xhtml named optionDisplay-xhtml 0..1