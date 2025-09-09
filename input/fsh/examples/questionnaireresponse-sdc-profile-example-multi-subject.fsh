Instance: questionnaireresponse-sdc-profile-example-multi-subject
InstanceOf: SDCQuestionnaireResponse
Title: "Multi-subject QuestionnaireResponse example"
Description: "Example of a QuestionnaireResponse for a multi-subject Questionnaire"
Usage: #example
* questionnaire = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-multi-subject"
* status = #completed
* subject = Reference(http://example.org/fhir/Patient/12345)
* authored = "2021-12-01"
* item[+]
  * linkId = "1"
  * text = "Mother's name"
  * answer.valueString = "Chioma Abubakar"
* item[+]
  * linkId = "2"
  * text = "Mother's id"
  * answer.valueString = "12345"
* item[+]
  * linkId = "3"
  * text = "Height"
  * answer.valueQuantity = 141 'cm'
* item[+]
  * linkId = "4"
  * text = "Weight"
  * answer.valueQuantity = 42.3 'kg'
* item[+]
  * linkId = "5"
  * text = "Children"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse-isSubject"
      * valueBoolean = true
    * linkId = "5.1"
    * text = "Record"
    * answer.valueReference = Reference(http://example.org/fhir/Patient/123456)
  * item[+]
    * linkId = "5.2"
    * text = "Name"
    * answer.valueString = "Bolade"
  * item[+]
    * linkId = "5.3"
    * text = "Birth date"
    * answer.valueDate = "2020-05-17"
  * item[+]
    * linkId = "5.4"
    * text = "Height"
    * answer.valueQuantity = 47 'cm'
  * item[+]
    * linkId = "5.5"
    * text = "Weight"
    * answer.valueQuantity = 8.7 'kg'
* item[+]
  * linkId = "5"
  * text = "Children"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse-isSubject"
      * valueBoolean = true
    * linkId = "5.1"
    * text = "Record"
    * answer.valueReference = Reference(http://example.org/fhir/Patient/123456)
  * item[+]
    * linkId = "5.2"
    * text = "Name"
    * answer.valueString = "Obinna"
  * item[+]
    * linkId = "5.3"
    * text = "Birth date"
    * answer.valueDate = "2015-11-20"
  * item[+]
    * linkId = "5.4"
    * text = "Height"
    * answer.valueQuantity = 109 'cm'
  * item[+]
    * linkId = "5.5"
    * text = "Weight"
    * answer.valueQuantity = 27.3 'kg'
* item[+]
  * linkId = "6"
  * text = "Report text"
  * answer.valueString = "Birth was normal"
