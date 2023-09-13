Instance: questionnaire-sdc-profile-example-cap
InstanceOf: SDCBaseQuestionnaire
Title: "SDC-Pathology"
Description: "Cancer pathology questionnaire with flow-control extensions"
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-cap"
* name = "QuestionnaireSDCProfileExampleCap"
* title = "Questionnaire SDC Profile Cap"
* status = #active
* item[0]
  * linkId = "1"
  * text = "MARGINS"
  * type = #group
  * required = true
  * item
    * linkId = "1.1"
    * text = "Status of surgical margin involvement by tumor (observable entity)"
    * type = #choice
    * required = true
    * answerOption[0].valueCoding = $example#M1 "Margins univolved by tumor"
    * answerOption[+].valueCoding = $example#M2 "Margin(s) involved by tumor"
    * answerOption[+].valueCoding = $example#M3 "Cannot be determined"
    * answerOption[+].valueCoding = $example#M4 "Not applicable"
    * item[0]
      * linkId = "1.1.1"
      * type = #group
      * enableWhen.question = "1.1"
      * enableWhen.operator = #=
      * enableWhen.answerCoding = $example#M1
      * required = true
      * item[0]
        * linkId = "1.1.1.1"
        * text = "Distance from Closest Margin"
        * type = #choice
        * answerOption[0].valueCoding = $example#D1 "Specify (mm)"
        * answerOption[+].valueCoding = $example#D2 "Cannot be assessed (explain)"
        * item[0].extension[$minValue].valueDecimal = 0.01
        * item[=].extension[$maxValue].valueDecimal = 1000
        * item[=].extension[$maxDecimalPlaces].valueInteger = 2
        * item[=]
          * linkId = "1.1.1.1.1.1"
          * text = "Specify (mm)"
          * type = #decimal
          * required = true
        * item[+]
          * linkId = "1.1.1.1.2.1"
          * text = "Cannot be assessed (explain)"
          * type = #string
          * required = true
      * item[+]
        * linkId = "1.1.1.2"
        * text = "Specify Margin, if possible"
        * type = #choice
        * answerOption[0].valueCoding = $example#W1 "Specify margin"
        * answerOption[+].valueCoding = $example#W2 "Cannot be determined (explain)"
        * insert itemType("1.1.1.2.1.1", "Cannot be assessed (explain\)", #string)
        * insert itemType("1.1.1.2.2.1", "Cannot be determined (explain\)", #string)
    * item[+]
      * linkId = "1.1.2.1"
      * text = "Specify Margin(s), if possible"
      * type = #choice
      * required = true
      * answerOption[0].valueCoding = $example#I1 "Specify margin(s)"
      * answerOption[+].valueCoding = $example#I2 "Cannot be determined (explain)"
      * insert itemType("1.1.2.1.1.1", "Specify margin(s\)", #string)
      * insert itemType("1.1.2.1.2.1", "Cannot be determined (explain\)", #string)
    * insert itemType("1.1.3.1", "Cannot be determined", #string)
    * insert itemType("1.1.4.1", "Not Applicable", #string)
* item[+]
  * linkId = "2"
  * text = "ACCESSORY FINDINGS"
  * type = #group
  * required = true
  * item[0]
    * linkId = "2.1"
    * text = "Treatment Effect (applicable to carcinomas treated with neoadjuvant therapy)"
    * type = #choice
    * answerOption[0].valueCoding = $example#E1 "Not identified"
    * answerOption[+].valueCoding = $example#E2 "Present (specify)"
    * answerOption[+].valueCoding = $example#E3 "Indeterminate"
    * insert itemType("2.1.1.1", "Not identified", #string)
    * insert itemType("2.1.2.1", "Present (specify\)", #string)
    * insert itemType("2.1.3.1", "Indeterminate", #string)
  * item[+]
    * linkId = "2.2"
    * text = "Tumor Description"
    * type = #choice
    * repeats = true
    * answerOption[0].valueCoding = $example#U1 "Hemorrhagic"
    * answerOption[+].valueCoding = $example#U2 "Necrotic"
    * answerOption[+].valueCoding = $example#U3 "Invasion"
    * answerOption[+].valueCoding = $example#U4 "Other (specify)"
    * item[0]
      * linkId = "2.2.1.1"
      * text = "??"
      * type = #choice
      * repeats = true
      * answerOption[0].valueCoding = $example#V1 "Capsule"
      * answerOption[+].valueCoding = $example#V2 "Vessels"
      * answerOption[+].valueCoding = $example#V3 "Extra-adrenal (specify)"
      * insert itemType("2.2.1.1.1.1", "Extra-adrenal (specify\)", #string)
    * insert itemType("2.2.2.1", "Other (specify\)", #string)

        
        
