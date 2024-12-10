Instance: questionnaire-sdc-profile-example-context-expression
InstanceOf: SDCQuestionnaireBehave
Title: "SDC-Example using contextExpression"
Description: "Example to indicate the resources to make available for display to the user to aid in answering the question."
Usage: #example
* extension
  * extension[0].url = "name"
  * extension[=].valueCoding = $launchContext#patient "Patient"
  * extension[+].url = "type"
  * extension[=].valueCode = #Patient
  * extension[+].url = "description"
  * extension[=].valueString = "The patient that is to be used to pre-populate the form"
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* url = "http://hl7.org/fhir/uv/sdc/questionnaire-sdc-profile-example-context-expression"
* name = "SDCExampleUsingContextExpression"
* status = #active
* item
  * linkId = "1.0"
  * type = #group
  * item[0]
    * linkId = "1.1"
    * text = "Instruction: Click on \"Previous Visits\" button to view all the visits of this patient in the past year."
    * type = #display
  * item[+]
    * extension[0]
      * extension[0]
        * url = "label"
        * valueString = "Encounters in past year"
      * extension[+]
        * url = "expression"
        * valueExpression.description = "list all Encounters with patient in the past year, in order by date - newest to oldest"
        * valueExpression.language = #application/x-fhir-query
        * valueExpression.expression = "Encounter?patient={{%patient.id}}&date=ge{{today()-1 year}}&_sort=-date&_include=Encounter:practitioner"
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-contextExpression"
    * extension[+]
      * extension[0]
        * url = "path"
        * valueString = "period.start"
      * extension[+]
        * url = "label"
        * valueString = "Date"
      * extension[+]
        * url = "width"
        * valueQuantity = 40 '%'
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * extension[+]
      * extension[0]
        * url = "path"
        * valueString = "reason.coding.display + ' - ' + type.text"
      * extension[+]
        * url = "label"
        * valueString = "Visit Reason/Description"
      * extension[+]
        * url = "width"
        * valueQuantity = 60 '%'
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = false
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "1.2"
    * text = "Has the patient been admitted for this issue on any visits in the past year?"
    * type = #choice
    * answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"       