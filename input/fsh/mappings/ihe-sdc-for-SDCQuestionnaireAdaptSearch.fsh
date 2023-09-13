// WARNING: The following Mapping may be incomplete since the original SDCQuestionnaireAdaptSearch
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnaireAdaptSearch
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnaireAdaptSearch
* -> "Form_Package"
* extension[submissionEndpoint] -> "administrative_package/submissionRule/destination/endpoint"