Invariant: sdc-obsn-1
Description: "Display items cannot be extracted to Observations."
Severity: #error
Expression: "type!='display' or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract').empty()"
XPath: "not(f:type/@value= 'display'  and exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract']))"