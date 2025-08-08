Instance: questionnaire-sdc-profile-example-render
InstanceOf: SDCQuestionnaireRender
Title: "SDC-Advanced Rendering"
Description: "Demo questionnaire showing most of the advanced rendering capabilities of SDC. Each example here is itemized in the Examples page."
Usage: #example
* contained = LL2821-8
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* modifierExtension[+]
  * url = Canonical(RenderingCriticalExtension)
  * valueCanonical = "http://hl7.org/fhir/StructureDefinition/rendering-style"
* modifierExtension[+]
  * url = Canonical(RenderingCriticalExtension)
  * valueCanonical = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
* url = "http://build.fhir.org/ig/HL7/sdc/questionnaire-sdc-profile-example-render"
* name = "SDCAdvancedRenderingExample"
* status = #active
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item[+]
  * linkId = "1"
  * text = "Text Appearance"
  * type = #group
  * item[+]
    * linkId = "1.1"
    * text = "Enter your First Name"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
        * valueString = "color:green;"
    * type = #string
  * item[+]
    * linkId = "1.2"
    * text = "Please answer Yes or No to each of the following questions:"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
        * valueString = "<i>Please</i> answer <b><u>Yes</u></b> or <b><u>No</u></b> to each of the following questions:"
    * type = #display
  * item[+]
    * linkId = "1.2b"
    * text = "Please answer Yes or No to each of the following questions:"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
        * valueMarkdown = "_Please_ answer **Yes** or **No** to each of the following questions:"
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory"
      * valueCodeableConcept = $questionnaire-display-category#security "Security"
        * text = "The text provides guidance on how the information will be handled from a security perspective."
    * linkId = "1.3"
    * text = "ALL QUESTIONS CONTAINED IN THIS QUESTIONNAIRE ARE OPTIONAL AND WILL BE KEPT STRICTLY CONFIDENTIAL."
    * type = #display
  * item[+]
    * linkId = "1.4"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
        * valueBoolean = true
      * linkId = "1.4.1"
      * text = "Form ID"
      * type = #string
    * item[+]
      * linkId = "1.4.2"
      * text = "Event ID"
      * type = #string
* item[+]
  * linkId = "2"
  * text = "Control Appearance"
  * type = #group
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#text-box "Text Box"
        * text = "A control where a user can type in their answer freely."
    * linkId = "2.1"
    * text = "If you have any other medical problems or serious injuries, please describe them here:"
    * type = #text
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation"
      * valueCode = #horizontal
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "2.2"
    * text = "Gender:"
    * type = #choice
    * answerOption[+]
      * valueCoding = $administrative-gender#female "Female"
      * initialSelected = true
    * answerOption[+].valueCoding = $administrative-gender#male "Male"
    * answerOption[+].valueCoding = $administrative-gender#other "Other"
    * answerOption[+].valueCoding = $administrative-gender#unknown "Unknown"
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#slider "Slider"
        * text = "A control where an axis is displayed between the high and low values and the control can be visually manipulated to select a value anywhere on the axis."
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue"
      * valueInteger = 10
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueInteger = 0
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueInteger = 100
    * linkId = "2.3"
    * text = "Rate your doctor:"
    * type = #integer
    * initial.valueInteger = 50
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#lower "Lower-bound"
      * linkId = "2.3.1"
      * text = "Completely dissatisfied"
      * type = #display
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#upper "Upper-bound"
      * linkId = "2.3.2"
      * text = "Completely satisfied"
      * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#htable "Horizontal Answer Table"
        * text = "Questions within the group are columns in the table with possible answers as rows. Used for 'choice' questions."
    * linkId = "2.4"
    * text = "Medical History"
    * type = #group
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
          * text = "A control where choices are listed with a box beside them. The box can be toggled to select or de-select a given choice. Multiple selections may be possible."
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-width"
        * valueQuantity = 65 '%'
      * linkId = "2.4.1"
      * text = "Diabetes"
      * type = #choice
      * answerOption[+].valueCoding = $conditions#diabetes-type1 "Type 1"
      * answerOption[+].valueCoding = $conditions#diabetes-type2 "Type 2"
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
          * text = "A control where choices are listed with a box beside them. The box can be toggled to select or de-select a given choice. Multiple selections may be possible."
      * extension[+]
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-width"
        * valueQuantity = 35 '%'
      * linkId = "2.4.2"
      * text = "Other Information"
      * type = #choice
      * answerOption[+].valueCoding = $conditions#diabetes-type1 "Type 1"
      * answerOption[+].valueCoding = $conditions#diabetes-type2 "Type 2"
      * answerOption[+].valueCoding = $conditions#otherinformation-hypertension "Hypertension"
      * answerOption[+].valueCoding = $conditions#otherinformation-smoker "Smoker"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-collapsible"
      * valueCode = #default-closed
    * linkId = "2.5"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * linkId = "2.5.1"
      * text = "Relationship to patient"
      * type = #choice
      * answerOption[+].valueCoding = $v3-RoleCode#FTH "Father"
      * answerOption[+].valueCoding = $v3-RoleCode#MTH "Mother"
      * answerOption[+].valueCoding = $v3-RoleCode#SIB "Sibling"
    * item[+]
      * linkId = "2.5.2"
      * text = "Name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
      * linkId = "2.5.3"
      * text = "Gender"
      * type = #choice
      * answerOption[+]
        * valueCoding = $administrative-gender#female "Female"
        * initialSelected = true
      * answerOption[+].valueCoding = $administrative-gender#male "Male"
      * answerOption[+].valueCoding = $administrative-gender#other "Other"
      * answerOption[+].valueCoding = $administrative-gender#unknown "Unknown"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#htable "Horizontal Answer Table"
        * text = "Questions within the group are columns in the table with possible answers as rows. Used for 'choice' questions."
    * linkId = "2.6"
    * text = "Lifestyle Factors"
    * type = #group
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
          * text = "A control where choices are listed with a box beside them. The box can be toggled to select or de-select a given choice. Multiple selections may be possible."
      * linkId = "2.6.1"
      * text = "Exercise Habits"
      * type = #choice
      * answerOption[+].valueCoding = $lifestyle#daily "Daily"
      * answerOption[+].valueCoding = $lifestyle#weekly "Weekly"
      * answerOption[+].valueCoding = $lifestyle#monthly "Monthly"
      * answerOption[+].valueCoding = $lifestyle#never "Never"
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
          * text = "A control where choices are listed with a box beside them. The box can be toggled to select or de-select a given choice. Multiple selections may be possible."
      * linkId = "2.6.2"
      * text = "Smoking Frequency"
      * type = #choice
      * answerOption[+].valueCoding = $lifestyle#daily "Daily"
      * answerOption[+].valueCoding = $lifestyle#weekly "Weekly"
      * answerOption[+].valueCoding = $lifestyle#monthly "Monthly"
      * answerOption[+].valueCoding = $lifestyle#never "Never"
    * item[+]
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
          * text = "A control where choices are listed with a box beside them. The box can be toggled to select or de-select a given choice. Multiple selections may be possible."
      * linkId = "2.6.3"
      * text = "Alcohol Consumption"
      * type = #choice
      * answerOption[+].valueCoding = $lifestyle#daily "Daily"
      * answerOption[+].valueCoding = $lifestyle#weekly "Weekly"
      * answerOption[+].valueCoding = $lifestyle#monthly "Monthly"
      * answerOption[+].valueCoding = $lifestyle#never "Never"
* item[+]
  * linkId = "3"
  * text = "Additional Display Content"
  * type = #group
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-supportHyperlink"
      * extension[+]
        * url = "label"
        * valueString = "More info"
      * extension[+]
        * url = "link"
        * valueUri = "https://hl7.org/fhir/extensions/StructureDefinition-questionnaire-supportHyperlink.html"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "3.1"
    * text = "Have you traveled outside the country within the last 14 days?"
    * type = #choice
    * answerOption[+].valueCoding = $v2-0532#Y "Yes"
    * answerOption[+].valueCoding = $v2-0532#N "No"
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
    * extension[+]
      * extension[+]
        * url = "path"
        * valueString = "code"
      * extension[+]
        * url = "label"
        * valueString = "CODE"
      * extension[+]
        * url = "width"
        * valueQuantity = 25 '%'
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = false
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * extension[+]
      * extension[+]
        * url = "path"
        * valueString = "display"
      * extension[+]
        * url = "label"
        * valueString = "DESCRIPTION"
      * extension[+]
        * url = "width"
        * valueQuantity = 75 '%'
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * linkId = "3.2"
    * text = "Select Platelet:"
    * type = #choice
    * answerValueSet = "http://loinc.org/vs/LL715-4"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "3.3"
    * text = "Gender:"
    * type = #choice
    * answerOption[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
        * valueString = "(a)"
      * valueCoding = $administrative-gender#female "Female"
      * initialSelected = true
    * answerOption[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
        * valueString = "(b)"
      * valueCoding = $administrative-gender#male "Male"
    * answerOption[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
        * valueString = "(c)"
      * valueCoding = $administrative-gender#other "Other"
    * answerOption[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionPrefix"
        * valueString = "(d)"
      * valueCoding = $administrative-gender#unknown "Unknown"
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation"
      * valueCode = #vertical
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
        * text = "A control where choices are listed with a button beside them. The button can be toggled to select or de-select a given choice. Selecting one item deselects all others."
    * linkId = "3.4"
    * text = "Enter timing of harm assessment:"
    * type = #choice
    * answerValueSet = "#LL2821-8"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "mm-dd-yyyy"
    * linkId = "3.5"
    * text = "Birth Date"
    * type = #date
  * item[+]
    * linkId = "3.6"
    * text = "IMPORTANT: Please complete questionnaire."
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
        * valueString = "color:red;"
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
        * valueString = "IMPORTANT: Please complete questionnaire."
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-optionalDisplay"
      * valueBoolean = true
    * linkId = "3.7"
    * text = "Enter your Middle Name"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-shortText"
      * valueString = "Annual family income"
    * linkId = "3.8"
    * text = "During the past year, what was the total combined income for you and the family members you live with? This information will help us determine if you are eligible for any benefits."
    * type = #decimal
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-columnCount"
      * valuePositiveInt = 3
    * linkId = "3.9"
    * text = "Which of the following time-slots are you available for?"
    * type = #string
    * answerOption[+]
      * valueString = "9-10am"
    * answerOption[+]
      * valueString = "10-11am"
    * answerOption[+]
      * valueString = "11am-12pm"
    * answerOption[+]
      * valueString = "1-2pm"
    * answerOption[+]
      * valueString = "2-3pm"
    * answerOption[+]
      * valueString = "3-4pm"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/preferredTerminologyServer"
      * valueUrl = "https://tx.fhir.org/r4"
    * linkId = "3.10"
    * text = "Select a condition (terminology server: tx.fhir.org)"
    * type = #choice
    * answerValueSet = "http://snomed.info/sct?fhir_vs"


Instance: LL2821-8
InstanceOf: ValueSet
Usage: #inline
* url = "http://example.org/ValueSet/LL2821-8"
* name = "TimingOfHarmAssessmentValueSet"
* title = "Timing of harm assessment [AHRQ]"
* status = #active
* description = "The answer list for timing of harm assessment"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "A."
    * code = #LA20752-4
    * display = "Within 24 hours"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "B."
    * code = #LA20753-2
    * display = "After 24 hours but before 3 days"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "C."
    * code = #LA20754-0
    * display = "Three days or later"
  * concept[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "D."
    * code = #LA4489-6
    * display = "Unknown"