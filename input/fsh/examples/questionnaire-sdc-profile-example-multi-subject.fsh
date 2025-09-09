Instance: questionnaire-sdc-profile-example-multi-subject
InstanceOf: SDCQuestionnaireExtractObservation
Title: "Example multi-subject Questionnaire"
Usage: #example
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
  * valueBoolean = true
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
  * valueCodeableConcept = $observation-category#vital-signs
* insert definitionExtract(http://hl7.org/fhir/StructureDefinition/DiagnosticReport)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * extension[+]
    * url = "definition"
    * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.status"
  * extension[+]
    * url = "fixed-value"
    * valueCode = #preliminary
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * extension[+]
    * url = "definition"
    * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.code"
  * extension[+]
    * url = "fixed-value"
    * valueCodeableConcept = $loinc#84064-5 "Annual evaluation note"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * extension[+]
    * url = "definition"
    * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.subject"
  * extension[+]
    * url = "expression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%resource.subject"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * extension[+]
    * url = "definition"
    * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.issued"
  * extension[+]
    * url = "expression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%resource.authored"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
  * extension[+]
    * url = "definition"
    * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.performer"
  * extension[+]
    * url = "expression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%resource.author"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-multi-subject"
* name = "MultiSubject"
* title = "Example multi-subject Questionnaire"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "A sample Questionnaire that shows the use of the isSubject extension to flag a subject change within a Questionnaire."
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item[+]
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
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId"
    * valueString = "momWeightId"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtractEntry"
    * extension[+]
      * url = "fullUrl"
      * valueString = "%momWeightId"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    * extension[+]
      * url = "definition"
      * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result.reference"
    * extension[+]
      * url = "expression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%momWeightId"
  * linkId = "3"
  * code = $loinc#8302-2
  * text = "Height"
  * type = #quantity
  * required = true
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId"
    * valueString = "momHeightId"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtractEntry"
    * extension[+]
      * url = "fullUrl"
      * valueString = "%momHeightId"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
    * extension[+]
      * url = "definition"
      * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result.reference"
    * extension[+]
      * url = "expression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%momHeightId"
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
  * item[+]
    * extension[+]
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
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId"
      * valueString = "childHeightId"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtractEntry"
      * extension[+]
        * url = "fullUrl"
        * valueString = "%childHeightId"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      * extension[+]
        * url = "definition"
        * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result.reference"
      * extension[+]
        * url = "expression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%childHeightId"
  * item[+]
    * linkId = "5.5"
    * code = $loinc#29463-7
    * text = "Weight"
    * type = #quantity
    * required = true
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-extractAllocateId"
      * valueString = "childWeightId"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtractEntry"
      * extension[+]
        * url = "fullUrl"
        * valueString = "%childWeightId"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-definitionExtractValue"
      * extension[+]
        * url = "definition"
        * valueUri = "http://hl7.org/fhir/StructureDefinition/DiagnosticReport#DiagnosticReport.result.reference"
      * extension[+]
        * url = "expression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%childWeightId"
* item[+]
  * linkId = "6"
  * text = "Report text"
  * type = #text
  * required = true
    