Instance: questionnaire-sdc-test-required-radios
InstanceOf: SDCQuestionnaireBehave
Title: "SDC Test Form - Required"
Description: "A test form with required fields."
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-required-radios"
* name = "RequiredRadioButtons"
* title = "Required Radio Buttons"
* status = #draft
* experimental = true
* description = "A Test form with required fields"
* item
  * linkId = "grp"
  * text = "Test: Required Radio Buttons"
  * type = #group
  * item[0]
    * linkId = "textq"
    * text = "Should I stay text?"
    * type = #string
    * required = true
  * item[+]
    * linkId = "radio"
    * text = "Should I stay?"
    * type = #choice
    * required = true
    * answerValueSet = "http://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/a015b6a1ac024dc19baec940be2c1695"
  * item[+]
    * linkId = "radio2"
    * text = "Should I go now?"
    * type = #choice
    * required = true
    * answerOption[0].valueCoding = $example#1 "One"
    * answerOption[+].valueCoding = $example#2 "Two"
  * item[+]
    * linkId = "radio3"
    * text = "Will there be trouble?"
    * type = #choice
    * required = true
    * answerOption[0].valueCoding = $example#1 "One"
    * answerOption[+].valueCoding = $example#2 "Two"
    * answerOption[+].valueCoding = $example#3 "Three"