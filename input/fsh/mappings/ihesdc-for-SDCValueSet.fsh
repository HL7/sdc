// WARNING: The following Mapping may be incomplete since the original SDCValueSet
// StructureDefinition was missing the mapping entry for ihesdc.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: ihesdc-for-SDCValueSet
Id: ihesdc
Title: "IHE SDC"
Source: SDCValueSet
* -> "Form_Package//list_field"
* extension[styleSensitive] -> "N/A (new requirement)"
* compose.include.concept -> "list_item/value"
* compose.include.concept.extension[conceptLabel] -> "list_item/item_number/label"
* compose.include.concept.extension[conceptLabel].valueString.extension[code-renderingStyle] -> "list_item/item_number/style"
* compose.include.concept.extension[conceptLabel].valueString.extension[code-xhtml] -> "N/A"
* compose.include.concept.extension[conceptConceptOrder] -> "list_item/list_item_order"
* compose.include.concept.display.extension[codeDisplay-xhtml] -> "list_item/item_prompt_html"
* compose.include.concept.designation.extension[designation-xhtml] -> "list_item/item_prompt_html"
* expansion.contains -> "list_item"
* expansion.contains.extension[expansionLabel] -> "item_number/label"
* expansion.contains.extension[expansionLabel].valueString.extension[expansion-renderingStyle] -> "item_number/style"
* expansion.contains.extension[expansionLabel].valueString.extension[expansion-xhtml] -> "N/A"
* expansion.contains.extension[conceptConceptOrder] -> "list_item_order"
* expansion.contains.code -> "value"
* expansion.contains.display -> "item_prompt"
* expansion.contains.display.extension[expansionDisplay-xhtml] -> "item_prompt_html"
* expansion.contains.designation.extension[expansionDesignation-xhtml] -> "list_item/item_prompt_html"