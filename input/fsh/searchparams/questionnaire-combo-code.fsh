Instance: Questionnaire-combo-code
InstanceOf: SearchParameter
Title: "Questionnaire Combined Code and Item Code Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/Questionnaire-combo-code"
* name = "SDCQuestionnaireComboCode"
* status = #active
* description = "Allows searching by the questionnaire.code and questionnaire.item.code element simultaneously.  (Official search param appears in R5 core)"
* code = #combo-code
* base[+] = #Questionnaire
* type = #token
* expression = "code|item.code"
* xpath = "f:code|f:item/f:code"
* xpathUsage = #normal