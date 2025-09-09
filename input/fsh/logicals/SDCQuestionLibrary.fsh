Logical: SDCQuestionLibrary
Id: SdcQuestionLibrary
Title: "SDC Question Library"
Description: "An example library of questions showing how questions can be compiled into a library for use by modular questionnaires"
* ^version = "3.0.0"
* ^status = #active
* ^experimental = true
//* ^type = "Demographics"
* . ^short = "SDC Logical Question Library"
  * ^definition = "A set of questions related to demographics"
* dob 0..1 date "n/a" "n/a"
  * ^extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
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
    * obeys sdc-ex-pcode
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

Invariant:   sdc-ex-pcode
Description: "Postal code must be 4 digits"
Severity:    #error
Expression:  "value.matches('^[0-9]{4}$')"

Instance: questionnaire-modular-library
InstanceOf: SDCModularQuestionnaireLibrary
Title: "SDC Questionnaire Library"
Description: "An example Questionnaire serving as a library of questions showing how questions can be compiled into a library for use by modular questionnaires"
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-modular-library"
* name = "SDCModularQuestionnaireLibrary"
* status = #active
* experimental = true
* version = "3.0.0"
* status = #active
* experimental = true
* useContext[library]
  * code = $usage-context-type#workflow
  * valueCodeableConcept = TemporaryCodes#question-library
* item[+]
  * extension[$questionnaire-initialExpression].valueExpression
    * language = #text/fhirpath
    * expression = "%patient.birthdate"
  * extension[$minValue].valueDate = "1900-01-01"
  * extension[$cqf-expression].valueExpression
    * language = #text/fhirpath
    * expression = "now() as date + 1 day"
  * linkId = "dob"
  * text = "What is this person's date of birth?"
  * type = #date
* item[+]
  * linkId = "sex"
  * text = "What is this person's gender?"
  * type = #choice
  * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
  * extension[$questionnaire-initialExpression].valueExpression
    * language = #text/fhirpath
    * expression = "iif(%patient.gender='male','M', iif(%patient.gender='female','F'))"
* item[+]
  * linkId = "address"
  * text = "What is this person's current mailing address?"
  * type = #group
  * item[+]
    * linkId = "street"
    * text = "Street address"
    * type = #string
  * item[+]
    * linkId = "city"
    * text = "City/Town"
    * type = #string
  * item[+]
    * linkId = "state"
    * text = "State"
    * type = #open-choice
    * answerValueSet = "http://hl7.org/fhir/uv/sdc/ValueSet/sdc-question-library-states"
  * item[+]
    * extension[$entryFormat].valueString = "9999"
    * extension[$targetConstraint]
      * extension[key].valueId = "sdc-ex-pcode"
      * extension[human].valueString = "Postal code must be 4 digits"
      * extension[severity].valueCode = #error
      * extension[expression].valueExpression
        * language = #text/fhirpath
        * expression = "value.matches('^[0-9]{4}$')"
    * linkId = "postalCode"
    * text = "Postal Code"
    * type = #string
* item[+]
  * linkId = "name"
  * text = "What is the person's official name?"
  * type = #group
  * item[+]
    * linkId = "prefix"
    * text = "Prefix"
    * type = #string
  * item[+]
    * linkId = "first"
    * text = "First"
    * type = #string
    * maxLength = 100
  * item[+]
    * linkId = "last"
    * text = "Last"
    * type = #string
    * maxLength = 100
