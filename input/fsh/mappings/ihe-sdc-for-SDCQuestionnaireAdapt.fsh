// WARNING: The following Mapping may be incomplete since the original SDCQuestionnaireAdapt
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnaireAdapt
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnaireAdapt
* -> "Form_Package"
* version -> "Not currently in schema"
* status -> "./administration_package/registration/state/registration_status"
* item -> "./form_design/*[self::header or self::footer or self::section]"