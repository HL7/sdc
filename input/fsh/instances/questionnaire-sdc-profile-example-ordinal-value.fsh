Instance: questionnaire-sdc-profile-example-ordinal-value
InstanceOf: SDCQuestionnaireBehave
Title: "SDC-Example using ordinalValue and constraint"
Description: "Example on how to use ordinal value and contraints in a Questionnaire."
Usage: #example
* contained = LL358-3
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-ordinal-value"
* name = "SDCExampleUsingOrdinalValue"
* status = #draft
* item
  * extension
    * extension[0]
      * url = "key"
      * valueId = "contraint-1"
    * extension[+]
      * url = "requirements"
      * valueString = "At least three questions must be answered to have a meaningful total."
    * extension[+]
      * url = "severity"
      * valueCode = #warning
    * extension[+]
      * url = "expression"
      * valueString = "%resource.repeat(item).where(linkId='1.0').item.where(answer.hasValue()).count() >= 3"
    * extension[+]
      * url = "human"
      * valueString = "You should answer at least three questions."
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-constraint"
  * linkId = "1.0"
  * text = "Over the last 2 weeks, how often have you been bothered by any of the following problems?"
  * type = #group
// Todo: Create Ruleset for item (when optional argument functionality is released)
  * item[0]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "1.1"
    * text = "1. Little interest or pleasure in doing things"
    * type = #choice
    * answerValueSet = "#LL358-3"
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "1.2"
    * text = "2. Feeling down, depressed, or hopeless"
    * type = #choice
    * answerValueSet = "#LL358-3"
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "1.3"
    * text = "3. Trouble falling or staying asleep, or sleeping too much"
    * type = #choice
    * answerValueSet = "#LL358-3"
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "1.4"
    * text = "4. Feeling tired or having little energy"
    * type = #choice
    * answerValueSet = "#LL358-3"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
      * valueExpression
        * description = "Total score"
        * language = #text/fhirpath
        * expression = "%resource.repeat(item).where(linkId='1.0').item.answer.ordinalValue().aggregate($this + $total, 0)"
    * linkId = "6"
    * text = "Total Score:"
    * type = #integer

Instance: LL358-3
InstanceOf: ValueSet
Usage: #inline
* url = "http://example.org/ValueSet/LL358-3"
* name = "TimingOfHarmAssessment"
* title = "Timing of harm assessment [AHRQ]"
* status = #active
* description = "The answer list for timing of harm assessment"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
      * valueDecimal = 0
    * code = #LA6568-5
    * display = "Not at all"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
      * valueDecimal = 1
    * code = #LA6569-3
    * display = "Several days"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
      * valueDecimal = 2
    * code = #LA6570-1
    * display = "More than half the days"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/ordinalValue"
      * valueDecimal = 3
    * code = #LA6571-9
    * display = "Nearly every day"