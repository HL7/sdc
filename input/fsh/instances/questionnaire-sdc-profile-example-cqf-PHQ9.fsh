Instance: questionnaire-sdc-profile-example-cqf-PHQ9
InstanceOf: SDCQuestionnaireExtractObservation
Title: "SDC-PHQ9 using an SDC Library"
Description: "Patient Health Questionnaire using a cqf-expression defined in an SDC Library"
Usage: #example
* identifier.use = #official
* identifier.value = "phq-9"
* version = "1.0.0"
* url = "http://build.fhir.org/ig/HL7/sdc/questionnaire-sdc-profile-example-cqf-PHQ9"
* name = "PatientHealthQuestionnairePHQ9"
* title = "Patient Health Questionnaire (PHQ-9)"
* status = #draft
* subjectType = #Patient
* code = $loinc#44249-1 "PHQ-9 quick depression assessment panel [Reported.PHQ]"

* insert itemChoice("LittleInterest", "Little interest or pleasure in doing things", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44250-9

* insert itemChoice("FeelingDown", "Feeling down\, depressed\, or hopeless", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44255-8

* insert itemChoice("TroubleSleeping", "Trouble falling or staying asleep", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44259-0

* insert itemChoice("FeelingTired", "Feeling tired or having little energy", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44254-1

* insert itemChoice("BadAppetite", "Poor appetite or overeating", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44251-7

* insert itemChoice("FeelingBadAboutSelf", "Feeling bad about yourself - or that you are a failure or have let yourself or your family down", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44258-2

* insert itemChoice("TroubleConcentrating", "Trouble concentrating on things\, such as reading the newspaper or watching television", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44252-5

* insert itemChoice("MovingSpeaking", "Moving or speaking so slowly that other people could have noticed. Or the opposite - being so fidgety or restless that you have been moving around a lot more than usual", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44253-3

* item[+]
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
    * valueExpression
      * language = #text/cql
      * expression = "CalculateTotalScore"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observation-extract-category"
    * valueCodeableConcept = $observation-category#survey "Survey"
  * linkId = "TotalScore"
  * code[0] = $loinc#44261-6
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract"
      * valueBoolean = true
  * code[+] = $sct#720433000
  * text = "Total score"
  * type = #integer
  * required = true

* insert itemChoice("Difficulty", "If you checked off any problems\, how difficult have these problems made it for you to do your work\, take care of things at home\, or get along with other people", "http://loinc.org/vs/LL358-3")
* item[=].code = $loinc#44256-6
