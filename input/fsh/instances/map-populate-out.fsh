Instance: map-populate-out
InstanceOf: SDCQuestionnaireResponse
Title: "SDC Map population StructureMap example output"
Description: "An example showing the result of a StructureMap-based population operation"
Usage: #example
* questionnaire = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-fhirpath-prepop-source-query"
* status = #in-progress
* subject = Reference(http://example.org/fhir/Patient/a0df9da6-3157-4b72-95f1-729853718c09)
* authored = "2022-01-03T13:50:53-07:00"
* item.linkId = "grp"
* item.item[0]
  * linkId = "part-details"
  * insert subItemAnswerString("participant-id","a0df9da6-3157-4b72-95f1-729853718c09")
  * insert subItemAnswerString("family-name","Doe")
  * insert subItemAnswerString("given-names","Jane")
  * insert subItemAnswerDate("dob","1951-02-19")
  * insert subItemAnswerInteger("condition-count", 1)
* item.item[+]
  * linkId = "meds"
  * insert subItemAnswerString("med-name","SomeMed")
  * insert subItemAnswerString("med-status","active")
* item.item[+]
  * linkId = "meds"
  * insert subItemAnswerString("med-name","Another med")
  * insert subItemAnswerString("med-status","active")
* item.item[+]
  * linkId = "meds"
  * insert subItemAnswerString("med-name","SomeMed")
  * insert subItemAnswerString("med-status","active")


