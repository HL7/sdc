Instance: questionnaireresponse-sdc-profile-example-loinc
InstanceOf: SDCQuestionnaireResponse
Title: "SDC-Response to LOINC AHRQ"
Description: "Example response to te LOINC AHRQ questionnaire."
Usage: #example
* questionnaire = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-loinc|3.0"
* status = #completed
* authored = "2016-03-14"
* subject = Reference(http://example.org/Patient/123) "Jane Smith"
* item[0]
  * linkId = "Medication/header"
  * item[0]
    * linkId = "0"
    * text = "Form ID:"
    * answer.valueString = "000"
  * item[+]
    * linkId = "74080-3/74081-1"
    * text = "Event ID:"
    * answer.valueString = "456"
  * item[+]
    * linkId = "74080-3/30947-6"
    * text = "Initial Report Date (HERF Q1)"
    * answer.valueString = "2016-03-14"
* item[+]
  * linkId = "Medication/SEC00"
  * text = "Medication or Other Substance"
  * item[0]
    * linkId = "Medication/SEC01/74080-3"
    * item[0]
      * linkId = "74080-3/74076-1"
      * text = "What type of medication/substance was involved?"
      * answer
        * valueCoding = $loinc#LA20271-5 "Medications"
        * item
          * linkId = "74080-3/74075-3"
          * text = "What type of medication?"
          * answer.valueCoding = $loinc#LA20278-0 "Prescription or over-the-counter (including herbal supplements)"
    * item[+]
      * linkId = "74080-3/74072-0"
      * text = "Which of the following best characterizes the event?"
      * answer.valueCoding = $loinc#LA20275-6 "Incorrect action (process failure or error) (e.g., such as administering overdose or incorrect medication)"
    * item[+]
      * linkId = "74080-3/74071-2"
      * text = "What was the incorrect action?"
      * answer.valueCoding = $loinc#LA20276-4 "Incorrect patient"
    * item[+]
      * linkId = "74080-3/74063-9"
      * text = "At what stage in the process did the event originate, regardless of the stage at which it was discovered?"
      * answer.valueCoding = $loinc#LA20296-2 "Administering"
  * item[+]
    * linkId = "74080-3/74078-7"
    * item[0]
      * linkId = "74080-3/74078-7/74062-1"
      * text = "Generic name or investigational drug name"
      * answer.valueString = "Acetaminophen"
    * item[+]
      * linkId = "74080-3/74078-7/74055-5"
      * text = "Dosage form of Product"
      * answer.valueString = "Tablet"
    * item[+]
      * linkId = "74080-3/74078-7/74053-0"
      * text = "Was this medication/substance prescribed for this patient?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "Medication/74052-2"
      * text = "Was this medication/substance given to this patient?"
      * answer.valueCoding = $loinc#LA33-6 "Yes"