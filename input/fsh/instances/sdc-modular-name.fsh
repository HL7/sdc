Instance: sdc-modular-name
InstanceOf: SDCModularQuestionnaire
Title: "Example sub-module Questionnaire for name"
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
  * valueCode = #assemble-child
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
  * valueString = "linkIdPrefix"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembleContext"
  * valueString = "person"
* extension[+]
  * extension[0]
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
    * valueString = "item.where(linkId=%linkIdPrefix+'1').exists() or item.where(linkId=%linkIdPrefix+'2').exists()"
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "name"
    * language = #text/fhirpath
    * expression = "iif(%person.name.where(use='official').exists(),%person.name.where(use='official')[0],%person.name[0])"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-name"
* name = "QuestionnaireSDCModularName"
* title = "Example sub-module Questionnaire for name"
* status = #draft
* experimental = true
* description = "Example questionnaire module - Used to represent a patient or other human name as an example of a Questionnaire that can be referenced by other Questionnaires.  It is itself modular in that it relies on external element definitions"
* item[0]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%name.prefix.where($this in ('Mr.'|'Miss'|'Mrs'|'Ms.'))[0]"
  * linkId = "1"
  * text = "Title"
  * type = #string
  * required = true
  * answerOption[0].valueString = "Mr."
  * answerOption[+].valueString = "Miss"
  * answerOption[+].valueString = "Mrs."
  * answerOption[+].valueString = "Ms."
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%name.given[0]"
  * linkId = "2"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-question-library#Demographics.name.first"
  * type = #string
  * required = true
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%name.given[0]"
  * linkId = "3"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-question-library#Demographics.name.last"
  * type = #string
  * required = true