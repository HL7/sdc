Instance: sdc-modular-root-assembled
InstanceOf: SDCParametersQuestionnaireAssembleOut
Title: "Example $assemble operation response"
Description: "Shows the result of performing a $assemble operation on the [modular-root](Questionnaire-sdc-modular-root.html) questionnaire"
Usage: #example
* parameter[return].resource = sdc-modular-root-assembled-questionnaire
* parameter[outcome].resource = sdc-modular-root-assembled-outcome


Instance: sdc-modular-root-assembled-questionnaire
InstanceOf: SDCModularQuestionnaire
Usage: #inline
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
  * valueCanonical = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-contact|3.0"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-assembledFrom"
  * valueCanonical = "http://hl7.org/fhir/uv/sdc/Questionnaire/sdc-modular-name|3.0"
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
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/variable"
    * valueExpression
      * name = "linkIdPrefix"
      * language = #text/fhirpath
      * expression = "'patientname.'"
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
      * expression = "iif(%person.name.where(use='official').exists(),%person.name.where(use='official').first(),%person.name.first())"
  * linkId = "1"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name"
  * text = "What is the person's official name?"
  * type = #group
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%name.prefix.where($this in ('Mr.'|'Miss'|'Mrs'|'Ms.'))first()"
    * linkId = "patientname.1"
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
    * linkId = "patientname.2"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name.first"
    * text = "First"
    * type = #string
    * required = true
    * maxLength = 100
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%name.family"
    * linkId = "patientname.3"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name.last"
    * text = "Last"
    * type = #string
    * required = true
    * maxLength = 100
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/minValue"
    * valueDate = "1900-01-01"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
    * valueDate.extension
      * url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "now() as date + 1 day"
  * linkId = "2"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.dob"
  * text = "What is this person's date of birth?"
  * type = #date
  * required = true
* item[+]
  * linkId = "3"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.sex"
  * text = "What is this person's gender?"
  * type = #choice
  * required = true
  * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* item[+]
  * linkId = "4"
  * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.address"
  * text = "What is this person's current mailing address?"
  * type = #group
  * required = true
  * item[+]
    * linkId = "4.1"
    * type = #display
  * item[+]
    * linkId = "4Demographics.address.street"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.address.street"
    * text = "Street address"
    * type = #string
  * item[+]
    * linkId = "4Demographics.address.city"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.address.city"
    * text = "City/Town"
    * type = #string
  * item[+]
    * linkId = "4Demographics.address.state"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.address.state"
    * text = "State"
    * type = #choice
    * answerValueSet = "http://hl7.org/fhir/uv/sdc/ValueSet/sdc-question-library-states"
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "9999"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/targetConstraint"
      * extension[+]
        * url = "key"
        * valueId = "postalCode-format"
      * extension[+]
        * url = "severity"
        * valueCode = #error
      * extension[+]
        * url = "human"
        * valueString = "Postal code must be a 4-digit number"
      * extension[+]
        * url = "expression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "value.matches('^[0-9]{4}$')"
    * linkId = "4Demographics.address.postalCode"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.address.postalCode"
    * text = "Postal Code"
    * type = #string
    * required = true
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
      * expression = "'patientcontact.'"
  * linkId = "5"
  * type = #group
  * required = true
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/variable"
      * valueExpression
        * name = "linkIdPrefix"
        * language = #text/fhirpath
        * expression = "%linkIdPrefix + 'name.'"
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
        * expression = "iif(%person.name.where(use='official').exists(),%person.name.where(use='official').first(),%person.name.first())"
    * linkId = "patientcontact.1"
    * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name"
    * text = "What is the person's official name?"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%name.prefix.where($this in ('Mr.'|'Miss'|'Mrs'|'Ms.')).first()"
      * linkId = "patientcontact.name.1"
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
          * expression = "%name.given[0]"
      * linkId = "patientcontact.name.2"
      * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name.first"
      * text = "First"
      * type = #string
      * required = true
      * maxLength = 100
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%name.family"
      * linkId = "patientcontact.name.3"
      * definition = "http://hl7.org/fhir/uv/sdc/StructureDefinition/SdcQuestionLibrary#SdcQuestionLibrary.name.last"
      * text = "Last"
      * type = #string
      * required = true
      * maxLength = 100
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/fhirpath
        * expression = "%person.telecom.where(use='phone').first()"
    * linkId = "patientcontact.2"
    * definition = "http://example.org/StructureDefinition/non-existent-library#Stuff.phone"
    * text = "Phone number"
    * type = #string
    * required = true


Instance: sdc-modular-root-assembled-outcome
InstanceOf: OperationOutcome
Usage: #inline
* text
  * status = #empty
  * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>Warning: Unable to resolve element definition http://example.org/StructureDefinition/non-existent-library#Stuff.phone when assembling Questionnaire/sdc-modular-contact.  Some constraints and behavior may not be represented</li><li>Unable to resolve element definition http://example.org/StructureDefinition/non-existent-library#Stuff.phone when assembling Questionnaire/sdc-modular-contact.  Some constraints and behavior may not be represented</li></ul></div>"
* issue[+]
  * severity = #warning
  * code = #informational
  * details.text = "Unable to resolve element definition http://example.org/StructureDefinition/non-existent-library#Stuff.phone when assembling Questionnaire/sdc-modular-contact.  Some constraints and behavior may not be represented"
  * expression = "Questionnaire.item[1].definition"
* issue[+]
  * severity = #warning
  * code = #informational
  * details.text = "Unable to resolve element definition http://example.org/StructureDefinition/non-existent-library#Stuff.phone when assembling Questionnaire/sdc-modular-contact.  Some constraints and behavior may not be represented"
  * expression = "Questionnaire.item[1].definition"