Instance: questionnaire-assembledFrom
InstanceOf: SearchParameter
Title: "Questionnaire Assembled From Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-assembledFrom"
* name = "SDCQuestionnaireAssembledFrom"
* status = #draft
* date = "2016-03-31T08:01:25+11:00"
* publisher = "Health Level Seven"
* description = "Allows searching by 'assembledFrom' extension on a Questionnaire"
* code = #assembled-from
* base = #Questionnaire
* type = #token
* expression = "Questionnaire.extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom')"
* xpath = "f:Questionnaire/f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom']"
* xpathUsage = #normal