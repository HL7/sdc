// WARNING: The following Mapping may be incomplete since the original SDCQuestionnaireSearch
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnaireSearch
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnaireSearch
* -> "Form_Package"
* identifier -> "./form_design/@form_design_identifier {maps to value; system=\"urn:ietf:rfc:3986\"}"
* date -> "./administration_package/registration/creation_date"
* publisher -> "./administration_package/registration/organization"
* useContext -> "./form_design/classifier"