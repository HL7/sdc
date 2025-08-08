Instance: adaptive-questionnaireresponse-sdc-example-phq9
InstanceOf: SDCQuestionnaireResponseAdapt
Title: "SDC-Response to Adaptive PHQ9"
Description: "Example response to the Adaptive SDC-PHQ9 questionnaire"
Usage: #example
* contained[+] = contained-adaptive-questionnaire-example-phq9
* contained[+] = VSPHQ9
* identifier.value = "adaptive-questionnaireresponse-example-phq9"
* questionnaire = "#contained-adaptive-questionnaire-example-phq9"
* status = #completed
* subject = Reference(http://hl7.org/fhir/Patient/proband)
* authored = "2019-08-21T20:36:57.544Z"
* author = Reference(http://hl7.org/fhir/Patient/proband)
* item.linkId = "H1/T1"
* item.text = "Over the last two weeks, how often have you been bothered by any of the following problems?"
* insert itemCoding("H1/T1/Q1", "Little interest or pleasure in doing things?", CodeSystemCSPHQ9#Not-at-all "Not at all")
* insert itemCoding("H1/T1/Q2", "Feeling down\, depressed\, or hopeless?", CodeSystemCSPHQ9#Not-at-all "Not at all")
* insert itemCoding("H1/T1/Q3", "Trouble falling or staying asleep\, or sleeping too much?", CodeSystemCSPHQ9#Not-at-all "Not at all")
* insert itemCoding("H1/T1/Q4", "Feeling tired or having little energy?", CodeSystemCSPHQ9#Several-days "Several days")
* insert itemCoding("H1/T1/Q5", "Poor appetite or overeating?", CodeSystemCSPHQ9#"More than half the days" "More than half the days")
* insert itemCoding("H1/T1/Q6", "Feeling bad about yourself - or that you are a failure or have let yourself or your family down?", CodeSystemCSPHQ9#Several-days "Several days")
* insert itemCoding("H1/T1/Q7", "Trouble concentrating on things\, such as reading the newspaper or watching television?", CodeSystemCSPHQ9#"Nearly every day" "Nearly every day")
* insert itemCoding("H1/T1/Q8", "Moving or speaking so slowly that other people could gave noticed? Or so fidgety or restless that you have been moving a lot more than usual?", CodeSystemCSPHQ9#"More than half the days" "More than half the days")
* insert itemCoding("H1/T1/Q9", "Thoughts that you would be better off dead\, or thoughts of hurting yourself in some way?", CodeSystemCSPHQ9#Several-days "Several days")
* insert itemQuantity("H1/TS", "Patient health questionnaire 9 item total score", 13, "score")


Instance: contained-adaptive-questionnaire-example-phq9
InstanceOf: Questionnaire
Usage: #inline
* extension[QuestionnaireAdaptiveExtension].valueBoolean = true
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* version = "0.0.1"
* name = "SDCPHQ9"
* title = "Patient Health Questionnaire - 9 Item"
* derivedFrom = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-PHQ9"
  * extension[+].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-derivationType"
  * extension[=].valueCoding = $derivationType#compliesWith
* status = #active
* experimental = true
* subjectType = #Patient
* item
  * linkId = "H1/T1"
  * text = "Over the last two weeks, how often have you been bothered by any of the following problems?"
  * type = #group
  * insert itemChoice("H1/T1/Q1", "Little interest or pleasure in doing things?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q2", "Feeling down\, depressed\, or hopeless?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q3", "Trouble falling or staying asleep\, or sleeping too much?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q4", "Feeling tired or having little energy?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q5", "Poor appetite or overeating?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q6", "Feeling bad about yourself - or that you are a failure or have let yourself or your family down?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q7", "Trouble concentrating on things\, such as reading the newspaper or watching television?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q8", "Moving or speaking so slowly that other people could gave noticed? Or so fidgety or restless that you have been moving a lot more than usual?", "#VSPHQ9")
  * insert itemChoice("H1/T1/Q9", "Thoughts that you would be better off dead\, or thoughts of hurting yourself in some way?", "#VSPHQ9")
  * insert itemQuantityText("H1/TS", "Patient health questionnaire 9 item total score")
    * extension[$questionnaire-hidden].valueBoolean = true
    * code = $loinc#44261-6 "Patient Health Questionnaire 9 item (PHQ-9) total score [Reported]"


Instance: VSPHQ9
InstanceOf: SDCValueSet
Usage: #inline
//* url = "http://hl7.org/fhir/uv/sdc/ValueSet/VSPHQ9"
* name = "VSPHQ9"
* status = #active
* description = "The answer list for questions addressing the frequency in which patient reports experiencing behaviors that are assessed in the PHQ-9 Questionnaire."
* immutable = true
* compose.include.system = "http://hl7.org/fhir/uv/sdc/CodeSystem/CSPHQ9"
* insert VSConcept(#Not-at-all, "Not at all")
* insert VSConcept(#Several-days, "Several days")
* insert VSConcept(#"More than half the days", "More than half the days")
* insert VSConcept(#"Nearly every day", "Nearly every day")
* expansion
  * extension[expansionProperty]
    * extension[code].valueCode = #itemWeight
    * extension[uri].valueUri = "http://hl7.org/fhir/concept-properties#itemWeight"
  * timestamp = "2024-12-06T22:52:00-07:00"
  * insert VSContains("http://hl7.org/fhir/uv/sdc/CodeSystem/CSPHQ9", #Not-at-all, "Not at all", 0.0)
  * insert VSContains("http://hl7.org/fhir/uv/sdc/CodeSystem/CSPHQ9", #Several-days, "Several days", 1.0)
  * insert VSContains("http://hl7.org/fhir/uv/sdc/CodeSystem/CSPHQ9", #"More than half the days", "More than half the days", 2.0)
  * insert VSContains("http://hl7.org/fhir/uv/sdc/CodeSystem/CSPHQ9", #"Nearly every day", "Nearly every day", 4.0)
