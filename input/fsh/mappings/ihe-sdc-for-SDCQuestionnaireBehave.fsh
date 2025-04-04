// WARNING: The following Mapping may be incomplete since the original SDCQuestionnaireBehave
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnaireBehave
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnaireBehave
* -> "Form_Package"
* extension[submissionEndpoint] -> "administrative_package/submissionRule/destination/endpoint"
* item.extension[itemMinOccurs] -> "./cardinality/minimum"
* item.extension[itemMaxOccurs] -> "./cardinality/maximum"
* item.extension[minLength] -> "./*_Field/datatype/string/maximum_characters"
* item.extension[itemConstraint] -> "./*_Field/datatype/string/reg_ex"
* item.extension[minValue] -> "./*_Field/datatype/[integer|decimal]/minimum_value"
* item.extension[maxValue] -> "./*_Field/datatype/[integer|decimal]/maximum_value"
* item.extension[maxDecimalPlaces] -> "./*_Field/datatype/decimal/fractionDigits"
* item.extension[allowedResource] -> "/form_package/mapping_package/mdr_mapping/question_element_data_element_association[question_element_identifier=current()/question_identifier]/data_element_scoped_identifier"
* item.enableWhen.question -> "parent::list_item/parent::list_field/parent::question"
* item.enableWhen.answer[x] -> "parent::list_item"
* item.required -> "./cardinality/minimum!=0"