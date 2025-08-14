Instance: questionnaire-assembled-from
InstanceOf: SearchParameter
Title: "Questionnaire Assembled From Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-assembled-from"
* name = "SDCQuestionnaireAssembledFrom"
* status = #active
* date = "2016-03-31T08:01:25+11:00"
* publisher = "Health Level Seven"
* description = "Allows searching by 'assembledFrom' extension on a Questionnaire"
* code = #assembled-from
* base = #Questionnaire
* type = #reference
* expression = "Questionnaire.extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom').value"
* xpath = "f:Questionnaire/f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom']/f:value"
* xpathUsage = #normal