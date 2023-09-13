// WARNING: The following Mapping may be incomplete since the original SDCQuestionnaireRender
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnaireRender
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnaireRender
* -> "Form_Package"
* extension[styleSensitive] -> "N/A (new requirement)"
* title.extension[title-renderingStyle] -> "../style"
* title.extension[title-xhtml] -> "(strings can contain xhtml)"
* item.extension[itemOptionalDisplay] -> "N/A (new requirement)"
* item.extension[itemShortText] -> "N/A (new requirement)"
* item.extension[itemHidden] -> "Any element with @initial_state=\"hidden\" and no rule that unhides the element"
* item.extension[displayCategory] -> "/form_package/mapping_package/mdr_mapping/question_element_data_element_association[question_element_identifier=current()/question_identifier]/data_element_scoped_identifier"
* item.extension[entryFormat] -> "./*_Field/format | ./*_Field/datatype/string/pattern"
* item.extension[collapsible] -> "./*_Field/format | ./*_Field/datatype/string/pattern"
* item.prefix.extension[itemLabel-renderingStyle] -> "../style"
* item.prefix.extension[itemLabel-xhtml] -> "(strings can contain xhtml)"
* item.text.extension[groupText-renderingStyle] -> "../style"
* item.text.extension[groupText-xhtml] -> "(strings can contain xhtml)"
* item.answerOption.valueString.extension[optionString-renderingStyle] -> "../style"
* item.answerOption.valueString.extension[optionString-xhtml] -> "(strings can contain xhtml)"
* item.answerOption.valueCoding.display.extension[optionDisplay-renderingStyle] -> "../style"
* item.answerOption.valueCoding.display.extension[optionDisplay-xhtml] -> "(strings can contain xhtml)"