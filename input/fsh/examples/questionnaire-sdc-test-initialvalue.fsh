Instance: questionnaire-sdc-test-initialvalue
InstanceOf: SDCQuestionnairePopulateExpression
Title: "SDC Test Form - Initial Value"
Description: "A test form with that uses initial values."
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-initialvalue"
* name = "InitialValue"
* title = "Initial Values"
* status = #active
* experimental = true
* description = "A Test form with that uses initial values"
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb0e8622"
  * text = "Root Group"
  * type = #group
  * item[+]
    * linkId = "1acf93a7-0890-44cd-be48-542defb35248"
    * text = "Yes/No/Dont know/NA"
    * type = #choice
    * answerValueSet = "http://terminology.hl7.org/ValueSet/yes-no-unknown-not-applicable"
    * initial.valueCoding = $v2-0532#Y "Yes"
  * item[+]
    * linkId = "init-val-string"
    * text = "String with initial value YUP"
    * type = #string
    * initial.valueString = "YUP"
  * item[+]
    * linkId = "5e1209b7-c9e0-4bf4-b228-c6533c892a3e"
    * text = "Decimal Values Radio Buttons"
    * type = #choice
    * repeats = false
    * answerOption[+].valueCoding = $sct#732409008 "1.1"
    * answerOption[+].valueCoding = $sct#732572001 "2.2"
    * answerOption[+].valueCoding = $sct#732646001 "3.3"