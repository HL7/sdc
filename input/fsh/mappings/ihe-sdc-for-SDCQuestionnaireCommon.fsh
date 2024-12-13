// WARNING: The following Mapping may be incomplete since the original SDCQuestionnaireCommon
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnaireCommon
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnaireCommon
* -> "Form_Package"
* version -> "Not currently in schema"
* status -> "./administration_package/registration/state/registration_status"
* item -> "./form_design/*[self::header or self::footer or self::section]"
* item.linkId -> "./section_identifier"
* item.prefix -> "./section_number/label"
* item.text -> "Form Design/designation[context=\"primary?\"/definition/  ./section_instruction/label"
* item.type -> "./*/datatype"
* item.required -> "./cardinality/minimum!=0"
* item.repeats -> "./cardinality/maximum!=1"
* item.readOnly -> "./*_Field/default_value_read_only  ./default_element/read_only"
* item.maxLength -> "./*_Field/maximum_character_quantity | ./*_Field/datatype/string/maximum_characters"
* item.answerValueSet -> "./list_field | ./lookup_field/endpoint"
* item.initial.value[x] -> "./default_value  ./default_element/default/value  ./default_element/list_item_identifier (resolve)"
* item.item -> "./contained_section"