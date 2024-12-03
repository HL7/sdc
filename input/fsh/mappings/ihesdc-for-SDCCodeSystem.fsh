// WARNING: The following Mapping may be incomplete since the original SDCCodeSystem
// StructureDefinition was missing the mapping entry for ihesdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihesdc-for-SDCCodeSystem
Id: ihesdc
Title: "IHE SDC"
Source: SDCCodeSystem
* -> "Form_Package//list_field"
* name -> "IHE SDC"
* modifierExtension[RenderingCriticalExtension] -> "N/A (new requirement)"
* concept -> "list_item"
* concept.code -> "value"
* concept.display -> "item_prompt"
* concept.display.extension[conceptDisplayLabel-xhtml] -> "item_prompt_html"
* concept.definition -> "value_meaning/label"
* concept.designation.value.extension[conceptDisplayLabel-xhtml] -> "item_prompt_html"