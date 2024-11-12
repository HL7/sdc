Invariant: sdc-pop-2
Description: "The observationLinkPeriod extension must appear at least once in the Questionnaire"
Severity: #error
Expression: "descendants().extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod').exists() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod').exists()"