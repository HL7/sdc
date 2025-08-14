Instance: Questionnaire-subject-type
InstanceOf: SearchParameter
Title: "Questionnaire Subject Type Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/Questionnaire-subject-type"
* name = "SDCQuestionnaireCode"
* status = #active
* description = "Allows searching by the questionnaire.subjectType element.  (Official search param appears in R5 core)"
* code = #subject-type
* base[+] = #Questionnaire
* type = #token
* expression = "subjectType"
* xpath = "f:subjectType"
* xpathUsage = #normal