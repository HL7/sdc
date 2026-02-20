Instance: questionnaire-sdc-profile-example-PHQ9
InstanceOf: SDCQuestionnaireBehave
Title: "SDC-PHQ9"
Description: "Patient Health Questionnaire (9 Item) including contained value sets and calculatedExpression"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire|4.0.0-ballot"
* contained = VSPHQ9
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/rendering-styleSensitive"
  * valueBoolean = true
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-PHQ9"
* name = "SDCPHQ9"
* title = "Patient Health Questionnaire - 9 Item"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "This is a Questionnaire example of how the PHQ-9 Questionnaire could be rendered as a FHIR Questionnaire Resource according to the Structured Data Capture SDC Base Questionnaire Profile. This example also portrays how FHIRpaths can be used to perform total score calculations using answer values."
* purpose = "This Questionnaire example was generated to ensure a non-proprietary, publicly available questionnaire that is available to test the Structured Data Capture profiles"
* copyright = "This content is an unaltered digital reproduction of the PHQ-9 which is copyrighted by Pfizer Inc., which states that no permission is required to reproduce, translate, display or distribute the PHQ-9."
* approvalDate = "2019-08-20"
* effectivePeriod
  * start = "2018-08-20T04:00:00.000Z"
  * end = "2020-08-20T04:00:00.000Z"
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item
  * linkId = "H1/T1"
  * text = "Over the last two weeks, how often have you been bothered by any of the following problems?"
  * type = #group
  * item[+]
    * linkId = "H1/T1/Q1"
    * text = "Little interest or pleasure in doing things?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q2"
    * text = "Feeling down, depressed, or hopeless?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q3"
    * text = "Trouble falling or staying asleep, or sleeping too much?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q4"
    * text = "Feeling tired or having little energy?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q5"
    * text = "Poor appetite or overeating?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q6"
    * text = "Feeling bad about yourself - or that you are a failure or have let yourself or your family down?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q7"
    * text = "Trouble concentrating on things, such as reading the newspaper or watching television?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q8"
    * text = "Moving or speaking so slowly that other people could gave noticed? Or so fidgety or restless that you have been moving a lot more than usual?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * linkId = "H1/T1/Q9"
    * text = "Thoughts that you would be better off dead, or thoughts of hurting yourself in some way?"
    * type = #choice
    * answerValueSet = "#VSPHQ9"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
      * valueExpression
        * description = "Score (0-4: None-minimal; 5-9: Mild; 19-14: Moderate; 15-19: Moderately severe; 20-27: Severe)"
        * name = "score"
        * language = #text/fhirpath
        * expression = "%resource.item.where(linkId!='H1/TS').answer.value.weight().sum()"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
      * valueCoding = $unitsofmeasure#1
    * linkId = "H1/TS"
    * code = $loinc#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"
    * text = "Patient health questionnaire 9 item total score"
    * type = #quantity
