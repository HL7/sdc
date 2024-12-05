Instance: questionnaire-sdc-profile-example-multi-subject
InstanceOf: SDCQuestionnaireExtractObservation
Title: "Example multi-subject Questionnaire"
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
  * valueBoolean = true
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = $observation-category#vital-signs
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-multi-subject"
* name = "MultiSubject"
* title = "Example multi-subject Questionnaire"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "A sample Questionnaire that shows the use of the isSubject extension to flag a subject change within a Questionnaire."
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item[0]
  * linkId = "1"
  * text = "Mother's name"
  * type = #string
  * required = true
* item[+]
  * linkId = "2"
  * text = "Mother's id"
  * type = #string
  * required = true
* item[+]
  * linkId = "3"
  * code = $loinc#8302-2
  * text = "Height"
  * type = #quantity
  * required = true
* item[+]
  * linkId = "4"
  * code = $loinc#29463-7
  * text = "Weight"
  * type = #quantity
  * required = true
* item[+]
  * linkId = "5"
  * text = "Children"
  * type = #group
  * required = true
  * repeats = true
  * item[0]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
      * valueCode = #Patient
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-isSubject"
      * valueBoolean = true
    * linkId = "5.1"
    * text = "Record"
    * type = #reference
    * required = true
  * item[+]
    * linkId = "5.2"
    * text = "Name"
    * type = #string
    * required = true
  * item[+]
    * linkId = "5.3"
    * text = "Birth date"
    * type = #date
    * required = true
  * item[+]
    * linkId = "5.4"
    * code = $loinc#8302-2
    * text = "Height"
    * type = #quantity
    * required = true
  * item[+]
    * linkId = "5.5"
    * code = $loinc#29463-7
    * text = "Weight"
    * type = #quantity
    * required = true