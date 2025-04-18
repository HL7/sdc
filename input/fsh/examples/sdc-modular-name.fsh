Instance: sdc-modular-name
InstanceOf: SDCModularQuestionnaire
Title: "Example sub-module Questionnaire for name"
Usage: #example
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
  * valueCode = #assemble-child
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
  * valueString = "linkIdPrefix"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
  * valueString = "person"
* extension[+]
  * extension[+]
    * url = "key"
    * valueId = "qcontact-1"
  * extension[+]
    * url = "severity"
    * valueCode = #error
  * extension[+]
    * url = "human"
    * valueString = "Must have either first or last name"
  * extension[+]
    * url = "expression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "item.where(linkId=%linkIdPrefix+'1').exists() or item.where(linkId=%linkIdPrefix+'2').exists()"
  * url = "http://hl7.org/fhir/StructureDefinition/targetConstraint"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "name"
    * language = #text/fhirpath
    * expression = "iif(%person.name.where(use='official').exists(),%person.name.where(use='official')[0],%person.name[0])"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-name"
* name = "QuestionnaireSDCModularName"
* title = "Example sub-module Questionnaire for name"
* status = #active
* experimental = true
* description = "Example questionnaire module - Used to represent a patient or other human name as an example of a Questionnaire that can be referenced by other Questionnaires.  It is itself modular in that it relies on external element definitions"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%name.prefix.where($this in ('Mr.'|'Miss'|'Mrs'|'Ms.'))[0]"
  * linkId = "1"
  * text = "Title"
  * type = #string
  * required = true
  * answerOption[+].valueString = "Mr."
  * answerOption[+].valueString = "Miss"
  * answerOption[+].valueString = "Mrs."
  * answerOption[+].valueString = "Ms."
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%name.given.first()"
  * linkId = "2"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name.first"
  * type = #string
  * required = true
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%name.family"
  * linkId = "3"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name.last"
  * type = #string
  * required = true