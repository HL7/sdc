Instance: questionnaireresponse-sdc-profile-example-PHQ9
InstanceOf: SDCQuestionnaireResponse
Title: "SDC-Response to PHQ9"
Description: "Example response to the SDC-PHQ9 questionnaire"
Usage: #example
* extension[triggeredBy].valueReference = Reference("http://example.org/PlanDefinition/someProtocol")
* questionnaire = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-PHQ9"
* status = #completed
* subject = Reference(http://hl7.org/fhir/Patient/proband)
* authored = "2019-08-21T20:36:57.544Z"
* author = Reference(http://hl7.org/fhir/Patient/proband)
* item
  * linkId = "H1/T1"
  * text = "Over the last two weeks, how often have you been bothered by any of the following problems?"
  * item[0]
    * linkId = "H1/T1/Q1"
    * text = "Little interest or pleasure in doing things?"
    * answer.valueCoding = $CSPHQ9#Not-at-all "Not at all"
  * item[+]
    * linkId = "H1/T1/Q2"
    * text = "Feeling down, depressed, or hopeless?"
    * answer.valueCoding = $CSPHQ9#Not-at-all "Not at all"
  * item[+]
    * linkId = "H1/T1/Q3"
    * text = "Trouble falling or staying asleep, or sleeping too much?"
    * answer.valueCoding = $CSPHQ9#Not-at-all "Not at all"
  * item[+]
    * linkId = "H1/T1/Q4"
    * text = "Feeling tired or having little energy?"
    * answer.valueCoding = $CSPHQ9#Several-days "Several days"
  * item[+]
    * linkId = "H1/T1/Q5"
    * text = "Poor appetite or overeating?"
    * answer.valueCoding = $CSPHQ9#"More than half the days" "More than half the days"
  * item[+]
    * linkId = "H1/T1/Q6"
    * text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down?"
    * answer.valueCoding = $CSPHQ9#Several-days "Several days"
  * item[+]
    * linkId = "H1/T1/Q7"
    * text = "Trouble concentrating on things, such as reading the newspaper or watching television?"
    * answer.valueCoding = $CSPHQ9#"Nearly every day" "Nearly every day"
  * item[+]
    * linkId = "H1/T1/Q8"
    * text = "Moving or speaking so slowly that other people could gave noticed? Or so fidgety or restless that you have been moving a lot more than usual?"
    * answer.valueCoding = $CSPHQ9#"More than half the days" "More than half the days"
  * item[+]
    * linkId = "H1/T1/Q9"
    * text = "Thoughts that you would be better off dead, or thoughts of hurting yourself in some way?"
    * answer.valueCoding = $CSPHQ9#Several-days "Several days"
  * item[+]
    * linkId = "H1/TS"
    * text = "Patient health questionnaire 9 item total score"
    * answer.valueQuantity
      * value = 13
      * unit = "{score}"