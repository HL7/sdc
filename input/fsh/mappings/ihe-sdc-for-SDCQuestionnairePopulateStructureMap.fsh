// WARNING: The following Mapping may be incomplete since the original SDCQuestionnairePopulateStructureMap
// StructureDefinition was missing the mapping entry for ihe-sdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihe-sdc-for-SDCQuestionnairePopulateStructureMap
Id: ihe-sdc
Title: "IHE SDC"
Source: SDCQuestionnairePopulateStructureMap
* -> "Form_Package"
* item.extension[itemHidden] -> "Any element with @initial_state=\"hidden\" and no rule that unhides the element"