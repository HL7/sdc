Instance: questionnaireresponse-sdc-example-ussg-fht-answers
InstanceOf: SDCQuestionnaireResponse
Title: "SDC-Response to LOINC USSG Family History"
Description: "Example response to the SDC-LOINC USSG Family History questionnaire"
Usage: #example
* questionnaire = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-ussg-fht|4.0.0-ballot"
* status = #in-progress
* subject = Reference(http://hl7.org/fhir/Patient/proband)
* authored = "2008-01-17"
* item[0]
  * linkId = "0"
  * item
    * linkId = "0.1"
    * text = "Date Done"
    * answer.valueDate = "2008-01-17"
* item[+]
  * linkId = "1"
  * definition = "http://loinc.org/fhir/DataElement/54126-8"
  * text = "Your health information"
  * item
    * linkId = "1.1"
    * item[0]
      * linkId = "1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54125-0"
      * text = "Name"
      * answer.valueString = "Annie Proband"
    * item[+]
      * linkId = "1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54131-8"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/21112-8"
      * text = "Date of Birth"
      * answer.valueDate = "1966-04-04"
    * item[+]
      * linkId = "1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54132-6"
      * text = "Were you born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54128-4"
      * text = "Were you adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54135-9"
      * text = "Are your parents related to each other in any way other than marriage?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "1.1.7"
      * definition = "http://loinc.org/fhir/DataElement/8302-2"
      * text = "Height"
      * answer
        * valueDecimal = 63
        * item
          * linkId = "1.1.7.1.1"
          * text = "Units"
          * answer.valueCoding = $unitsofmeasure#[in_i] "[in_i]"
    * item[+]
      * linkId = "1.1.8"
      * definition = "http://loinc.org/fhir/DataElement/29463-7"
      * text = "Weight"
      * answer
        * valueDecimal = 127
        * item
          * linkId = "1.1.8.1.1"
          * text = "Units"
          * answer.valueCoding = $unitsofmeasure#[lb_av] "[lb_av]"
    * item[+]
      * linkId = "1.1.9"
      * definition = "http://loinc.org/fhir/DataElement/39156-5"
      * text = "Body mass index (BMI) [Ratio]"
      * answer.valueDecimal = 22.5
    * item[+]
      * linkId = "1.1.10"
      * definition = "http://loinc.org/fhir/DataElement/54134-2"
      * text = "Race"
      * answer.valueCoding = $loinc#LA4457-3 "White"
    * item[+]
      * linkId = "1.1.11"
      * definition = "http://loinc.org/fhir/DataElement/54133-4"
      * text = "Ethnicity"
      * answer[0].valueCoding = $loinc#LA4611-5 "Mexican"
      * answer[+].valueCoding = $loinc#LA10606-4 "South American"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10405-1 "Daughter"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Susan"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 17
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10415-0 "Brother"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Brian"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 32
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA14284-6 "Other Cancer"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10397-0 "30-39"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10418-4 "Sister"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Janet"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 36
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA14283-8 "Breast Cancer"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10397-0 "30-39"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10419-2 "Nephew"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Ian"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 16
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10420-0 "Niece"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Helen"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 15
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10416-8 "Father"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Donald"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 52
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10425-9 "Paternal Uncle"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Eric"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 56
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10421-8 "Paternal Aunt"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Fiona"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 57
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA10543-9 "Skin Cancer"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10423-4 "Paternal Grandfather"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Bob"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA32-8 "No"
        * item
          * linkId = "2.1.1.4.1"
          * item[0]
            * linkId = "2.1.1.4.1.1"
            * definition = "http://loinc.org/fhir/DataElement/54112-8"
            * text = "Cause of Death"
            * answer.valueCoding = $loinc#LA10537-1 "Colon Cancer"
          * item[+]
            * linkId = "2.1.1.4.1.2"
            * definition = "http://loinc.org/fhir/DataElement/54113-6"
            * text = "Age at Death"
            * answer.valueCoding = $loinc#LA10400-2 "OVER 60"
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA10537-1 "Colon Cancer"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10400-2 "OVER 60"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10424-2 "Paternal Grandmother"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Claire"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA32-8 "No"
        * item
          * linkId = "2.1.1.4.1"
          * item[0]
            * linkId = "2.1.1.4.1.1"
            * definition = "http://loinc.org/fhir/DataElement/54112-8"
            * text = "Cause of Death"
            * answer
              * valueCoding = $loinc#LA10589-2 "Other/Unexpected"
              * item
                * linkId = "2.1.1.4.1.1.1"
                * text = "Please specify"
                * answer.valueString = "Lou Gehrigs"
          * item[+]
            * linkId = "2.1.1.4.1.2"
            * definition = "http://loinc.org/fhir/DataElement/54113-6"
            * text = "Age at Death"
            * answer.valueCoding = $loinc#LA10400-2 "OVER 60"
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10417-6 "Mother"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Harriet"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA32-8 "No"
        * item
          * linkId = "2.1.1.4.1"
          * item[0]
            * linkId = "2.1.1.4.1.1"
            * definition = "http://loinc.org/fhir/DataElement/54112-8"
            * text = "Cause of Death"
            * answer.valueCoding = $loinc#LA15682-0 "Ovarian Cancer"
          * item[+]
            * linkId = "2.1.1.4.1.2"
            * definition = "http://loinc.org/fhir/DataElement/54113-6"
            * text = "Age at Death"
            * answer.valueCoding = $loinc#LA10399-6 "50-59"
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA15682-0 "Ovarian Cancer"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10398-8 "40-49"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10414-3 "Maternal Uncle"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Rudy"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 60
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10410-1 "Maternal Aunt"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Julie"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 57
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10412-7 "Maternal Grandfather"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Ian"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA2-8 "Male"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA32-8 "No"
        * item
          * linkId = "2.1.1.4.1"
          * item[0]
            * linkId = "2.1.1.4.1.1"
            * definition = "http://loinc.org/fhir/DataElement/54112-8"
            * text = "Cause of Death"
            * answer.valueCoding = $loinc#LA16286-9 "Heart attack"
          * item[+]
            * linkId = "2.1.1.4.1.2"
            * definition = "http://loinc.org/fhir/DataElement/54113-6"
            * text = "Age at Death"
            * answer.valueCoding = $loinc#LA10400-2 "OVER 60"
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10413-5 "Maternal Grandmother"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Gladys"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA32-8 "No"
        * item
          * linkId = "2.1.1.4.1"
          * item[0]
            * linkId = "2.1.1.4.1.1"
            * definition = "http://loinc.org/fhir/DataElement/54112-8"
            * text = "Cause of Death"
            * answer.valueCoding = $loinc#LA10589-2 "Other/Unexpected"
          * item[+]
            * linkId = "2.1.1.4.1.2"
            * definition = "http://loinc.org/fhir/DataElement/54113-6"
            * text = "Age at Death"
            * answer.valueCoding = $loinc#LA10400-2 "OVER 60"
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA14283-8 "Breast Cancer"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10399-6 "50-59"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA16982-3 "Asthma"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10395-4 "Childhood"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item[0]
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10411-9 "Maternal Cousin"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Karren"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 30
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"
  * item[+]
    * linkId = "2.1.2"
    * text = "This family member's history of disease"
    * item[0]
      * linkId = "2.1.2.1"
      * text = "Disease or Condition"
      * answer.valueCoding = $loinc#LA14283-8 "Breast Cancer"
    * item[+]
      * linkId = "2.1.2.2"
      * text = "Age at Diagnosis"
      * answer.valueCoding = $loinc#LA10397-0 "30-39"
* item[+]
  * linkId = "2"
  * definition = "http://loinc.org/fhir/DataElement/54114-4"
  * text = "Family member health information"
  * item
    * linkId = "2.1.1"
    * item[0]
      * linkId = "2.1.1.1"
      * definition = "http://loinc.org/fhir/DataElement/54136-7"
      * text = "Relationship to you"
      * answer.valueCoding = $loinc#LA10411-9 "Maternal Cousin"
    * item[+]
      * linkId = "2.1.1.2"
      * definition = "http://loinc.org/fhir/DataElement/54138-3"
      * text = "Name"
      * answer.valueString = "Mary"
    * item[+]
      * linkId = "2.1.1.3"
      * definition = "http://loinc.org/fhir/DataElement/54123-5"
      * text = "Gender"
      * answer.valueCoding = $loinc#LA3-6 "Female"
    * item[+]
      * linkId = "2.1.1.4"
      * definition = "http://loinc.org/fhir/DataElement/54139-1"
      * text = "Living?"
      * answer
        * valueCoding = $loinc#LA33-6 "Yes"
        * item
          * linkId = "2.1.1.4.2"
          * item
            * linkId = "2.1.1.4.2.2"
            * definition = "http://loinc.org/fhir/DataElement/54141-7"
            * text = "Age"
            * answer.valueDecimal = 31
    * item[+]
      * linkId = "2.1.1.5"
      * definition = "http://loinc.org/fhir/DataElement/54121-9"
      * text = "Was this person born a twin?"
      * answer.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * linkId = "2.1.1.6"
      * definition = "http://loinc.org/fhir/DataElement/54122-7"
      * text = "Was this person adopted?"
      * answer.valueCoding = $loinc#LA32-8 "No"