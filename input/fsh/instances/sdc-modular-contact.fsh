Instance: sdc-modular-contact
InstanceOf: SDCModularQuestionnaire
Title: "Example sub-module Questionnaire for contact"
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
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-contact"
* name = "QuestionnaireSDCModularContact"
* title = "Example sub-module Questionnaire for contact"
* status = #draft
* experimental = true
* description = "Example questionnaire module - represents a patient's contacts and is itself a modular questionnaire that references other questionnaires and element definitions"
* item[0]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/variable"
    * valueExpression
      * name = "linkIdPrefix"
      * language = #text/fhirpath
      * expression = "%linkIdPrefix + 'name.'"
  * linkId = "1"
  * type = #group
  * item
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
      * valueCanonical = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-name|3.0.0"
    * linkId = "1.1"
    * text = "Unable to resolve 'name' sub-questionnaire"
    * type = #display
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * valueExpression
      * language = #text/fhirpath
      * expression = "%person.telecom[use='phone'][0]"
  * linkId = "2"
  * definition = "http://example.org/StructureDefinition/non-existent-library#Stuff.phone"
  * text = "Phone number"
  * type = #string
  * required = true