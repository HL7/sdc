This extension will only be processed while extracting a resource based on a parent item (or root) using either the [definitionExtract](StructureDefinition-sdc-questionnaire-definitionExtract.html) or [itemExtractionContext (legacy)](StructureDefinition-sdc-questionnaire-itemExtractionContext.html) extension.

It is used to define the value of a property on the resource being extracted, without requiring an item/answer in the questionnaire response (typically for fixed, or derived/calculated values).

The property is based on the value in the `definition` property, where the prefix (before the `#`) must exactly match the profile's canonical URL from the extraction context in a parent item/root.

Additional details on the use of this extension can be found on the [Data Extraction](extraction.html#definition-based-extraction) page.
