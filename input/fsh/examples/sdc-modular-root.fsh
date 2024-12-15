Instance: sdc-modular-root
InstanceOf: SDCModularQuestionnaire
Title: "Example modular Questionnaire"
Usage: #example
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assemble-expectation"
  * valueCode = #assemble-root
* extension[+]
  * extension[+]
    * url = "name"
    * valueCoding = $launchContext#patient
  * extension[+]
    * url = "type"
    * valueCode = #Patient
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "person"
    * language = #text/fhirpath
    * expression = "%patient"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-root"
* name = "QuestionnaireSDCModularRoot"
* title = "Example modular Questionnaire"
* status = #active
* experimental = true
* description = "Example modular questionnaire - root of a questionnaire that references other questionnaires and element definitions"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/variable"
    * valueExpression
      * name = "linkIdPrefix"
      * language = #text/fhirpath
      * expression = "'patientname.'"
  * linkId = "1"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name"
  * type = #group
  * item
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
      * valueCanonical = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-name|3.0.0"
    * linkId = "1.1"
    * text = "Unable to resolve 'name' sub-questionnaire"
    * type = #display
* item[+]
  * linkId = "2"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.dob"
  * type = #date
  * required = true
* item[+]
  * linkId = "3"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.sex"
  * type = #choice
  * required = true
* item[+]
  * linkId = "4"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.address"
  * type = #group
  * required = true
  * item
    * linkId = "4.1"
    * type = #display
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
    * valueExpression
      * name = "person"
      * language = #text/fhirpath
      * expression = "%patient.contact"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/variable"
    * valueExpression
      * name = "linkIdPrefix"
      * language = #text/fhirpath
      * expression = "'patientname.'"
  * linkId = "5"
  * type = #group
  * required = true
  * repeats = true
  * item
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-subQuestionnaire"
      * valueCanonical = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-contact|3.0.0"
    * linkId = "5.1"
    * text = "Unable to resolve 'contact' sub-questionnaire"
    * type = #display