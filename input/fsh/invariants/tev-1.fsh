Invariant: tev-1
Description: "Either the `templateExtract` or a `templateExtractBundle` extension must be provided (or both)."
Severity: #error
Expression: "extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtract').exists() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtractBundle').exists() or repeat(item).extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-templateExtract').exists()"
