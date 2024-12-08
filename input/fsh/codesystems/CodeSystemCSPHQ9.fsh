CodeSystem: CodeSystemCSPHQ9
Id: CSPHQ9
Title: "SDC-CodeSystem PHQ9"
Description: "The answer list for questions 1 through 9 on the Patient Health Questionnaire (9 item) form"
* ^meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-codesystem"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^property[0].code = #itemWeight
* ^property[0].uri = "http://hl7.org/fhir/concept-properties#itemWeight"
* ^property[0].type = #decimal
* #Not-at-all "Not at all"
  * ^property[0].code = #itemWeight
  * ^property[0].valueDecimal = 0.0
* #Several-days "Several days"
  * ^property[0].code = #itemWeight
  * ^property[0].valueDecimal = 1.0
* #"More than half the days" "More than half the days"
  * ^property[0].code = #itemWeight
  * ^property[0].valueDecimal = 2.0
* #"Nearly every day" "Nearly every day"
  * ^property[0].code = #itemWeight
  * ^property[0].valueDecimal = 4.0
