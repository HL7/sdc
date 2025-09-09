Instance: questionnaireresponse-sdc-profile-example
InstanceOf: SDCQuestionnaireResponse
Title: "SDC-Response to Diagnosis NCI Standard Template"
Description: "Example responses to the questionnaire found in the SDC - Combination list of questionnaires"
Usage: #example
*  contained[+] = containedOrg
* extension[source].valueReference = Reference(containedOrg) "Some Organization"
* questionnaire = "http://hl7.org/fhir/uv/sdc/Questionnaire/3921052v1.0"
* status = #completed
* authored = "2014-01-21"
* subject = Reference(http://example.org/Patient/123) "Jane Smith"
* item[+]
  * linkId = "3921053v1.0"
  * text = "Mandatory Diagnosis Questions"
  * item[+]
    * linkId = "3921059v1.0"
    * text = "Date of Current Pathologic Diagnosis"
    * answer.valueString = "2003-02-18"
  * item[+]
    * linkId = "3921060v1.0"
    * text = "Diagnosis Type"
    * answer.valueCoding = $question_identifier_1#Primary "Primary Diagnosis"
  * item[+]
    * linkId = "3921065v1.0"
    * text = "Primary Site"
    * answer.valueString = "Left Ovary"
* item[+]
  * linkId = "3921066v1.0"
  * text = "Conditional Diagnosis Questions"
  * item
    * linkId = "3921071v1.0"
    * text = "Diagnosis Time Point"
    * answer.valueCoding = $question_identifier_2#"At Restaging" "Restaging"
* item[+]
  * linkId = "3921077v1.0"
  * text = "Optional Diagnosis Questions"
  * item[+]
    * linkId = "3921079v1.0"
    * text = "Reviewing Pathologist"
    * answer.valueString = "Harold Ornada"
  * item[+]
    * linkId = "3921080v1.0"
    * text = "MedDRA disease code"
  * item[+]
    * linkId = "3921081v1.0"
    * text = "Assessment Method"
    * answer.valueCoding = $question_identifier_3#Histologic "Histological Procedure"
  * item[+]
    * linkId = "3921085v1.0"
    * text = "Tumor grade"
    * answer.valueCoding = $question_identifier_4#G2 "Moderately Differentiated"

Instance: containedOrg
InstanceOf: Organization
Title: "Simple contained organization"
Description: "Used to demonstrate source inter-version extension"
Usage: #inline
* name = "Some Organization"