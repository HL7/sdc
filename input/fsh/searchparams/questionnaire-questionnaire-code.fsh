Instance: Questionnaire-questionnaire-code
InstanceOf: SearchParameter
Title: "Questionnaire Code Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/Questionnaire-questionnaire-code"
* name = "SDCQuestionnaireCode"
* status = #active
* description = "Allows searching by the questionnaire.code element.  (Official search param appears in R5 core)"
* code = #questionnaire-code
* base[+] = #Questionnaire
* type = #token
* expression = "code"
* xpath = "f:code"
* xpathUsage = #normal