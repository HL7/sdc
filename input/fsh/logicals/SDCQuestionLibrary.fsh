Logical: SDCQuestionLibrary
Id: SdcQuestionLibrary
Title: "SDC Question Library"
Description: "An example library of questions showing how questions can be compiled into a library for use by modular questionnaires"
* ^version = "3.0.0"
* ^status = #active
* ^experimental = true
//* ^type = "Demographics"
* . ^short = "SDC Question Library"
  * ^definition = "A set of questions related to demographics"
* dob 0..1 date "n/a" "n/a"
  * ^extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
  * ^extension.valueExpression.name = "name"
  * ^extension.valueExpression.language = #text/fhirpath
  * ^extension.valueExpression.expression = "%patient.birthdate"
  * ^label = "What is this person's date of birth?"
  * ^minValueDate = "1900-01-01"
  * ^maxValueDate.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
  * ^maxValueDate.extension.valueExpression.language = #text/fhirpath
  * ^maxValueDate.extension.valueExpression.expression = "now() as date + 1 day"
* sex 0..1 code "n/a" "n/a"
* sex from http://hl7.org/fhir/ValueSet/administrative-gender (required)
  * ^extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
  * ^extension.valueExpression.name = "name"
  * ^extension.valueExpression.language = #text/fhirpath
  * ^extension.valueExpression.expression = "iif(%patient.gender='male','M', iif(%patient.gender='female','F'))"
  * ^label = "What is this person's gender?"
* address 0..1 Element "n/a" "n/a"
  * ^label = "What is this person's current mailing address?"
  * street 0..1 string "n/a" "n/a"
    * ^label = "Street address"
  * city 0..1 string "n/a" "n/a"
    * ^label = "City/Town"
  * state 0..1 code "n/a" "n/a"
  * state from http://hl7.org/fhir/uv/sdc/ValueSet/sdc-question-library-states (extensible)
    * ^label = "State"
  * postalCode 1..1 string "n/a" "n/a"
    * ^extension.url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
    * ^extension.valueString = "9999"
    * ^label = "Postal Code"
    * ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
    * ^type.extension.valueString = "[\\d]{4}"
* name 0..1 Element "n/a" "n/a"
  * ^label = "What is the person's official name?"
  * prefix 0..1 string "n/a" "n/a"
    * ^label = "Prefix"
  * first 0..1 string "n/a" "n/a"
    * ^label = "First"
    * ^maxLength = 100
  * last 0..1 string "n/a" "n/a"
    * ^label = "Last"
    * ^maxLength = 100