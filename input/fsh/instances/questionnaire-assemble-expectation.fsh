Instance: questionnaire-assemble-expectation
InstanceOf: SearchParameter
Title: "Questionnaire Is Modular Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-assemble-expectation"
* name = "SDCQuestionnaireIsModular"
* status = #draft
* description = "Allows searching by 'assemble-expectation' extension on a Questionnaire"
* code = #assemble-expectation
* base = #Questionnaire
* type = #token
* expression = "Questionnaire.extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation').value"
* xpath = "f:Questionnaire/f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation']/f:value"
* xpathUsage = #normal