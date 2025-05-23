Instance: questionnaire-sdc-profile-example-framingham-hchd-lhc
InstanceOf: SDCBaseQuestionnaire
Title: "SDC-Hard Coronary Heart Disease"
Description: "A made-up form for calculating the 10-year-risk of Hard Coronary Heart Disease. It shows how variables and calculatedExpression can be used to compute for the risk probability."
Usage: #example
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * url = $variable
  * valueExpression
    * name = "age"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/age').answer.value"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "gender"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/46098-0').answer.value.display"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "smokesCode"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/smokes').answer.value.code"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "smokes"
    * language = #text/fhirpath
    * expression = "iif(%smokesCode.exists(), iif(%smokesCode = 'Y', 1, 0), {})"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "systolic"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/8480-6').answer.value"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "tChol"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/2093-3').answer.value"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "hdl"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/2085-9').answer.value"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "antihypertCode"
    * language = #text/fhirpath
    * expression = "item.where(linkId='/antihypertensive').answer.value.code"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "antihypert"
    * language = #text/fhirpath
    * expression = "iif(%antihypertCode.exists(), iif(%systolic >= 120, iif(%antihypertCode = 'Y', 1, 0), 0), {})"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "allQuestionsAnswered"
    * language = #text/fhirpath
    * expression = "%age.exists() and %gender.exists() and %smokes.exists() and %systolic.exists() and %tChol.exists() and %hdl.exists() and %antihypert.exists()"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "femaleOver78"
    * language = #text/fhirpath
    * expression = "iif(%allQuestionsAnswered, iif(%gender = 'Female', iif(%age>78, 1 - (0.98767).power((31.764001 * (%age.ln() - 3.9213204) + 22.465206 * (%tChol.ln() - 5.3628984) - 1.187731 * (%hdl.ln() - 4.0146369) + 2.552905 * (%systolic.ln() - 4.8376494) + 0.420251 * (%antihypert - 0.142802) + 13.07543 * (%smokes - 0.3236202) - 5.060998 * (%age.ln() * %tChol.ln() - 21.0557746) - 2.996945 * (78.ln() * %smokes - 1.2519882)).exp()), {}), {}), {})"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "femaleNotOver78"
    * language = #text/fhirpath
    * expression = "iif(%allQuestionsAnswered, iif(%gender = 'Female', iif(%age<=78, 1 - (0.98767).power((31.764001 * (%age.ln() - 3.9213204) + 22.465206 * (%tChol.ln() - 5.3628984) - 1.187731  * (%hdl.ln() - 4.0146369) + 2.552905  * (%systolic.ln() - 4.8376494) + 0.420251  * (%antihypert - 0.142802) + 13.07543  * (%smokes - 0.3236202) - 5.060998  * (%age.ln() * %tChol.ln() - 21.0557746) - 2.996945  * (%age.ln() * %smokes  - 1.2519882)).exp()), {}), {}), {})"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "maleOver70"
    * language = #text/fhirpath
    * expression = "iif(%allQuestionsAnswered, iif(%gender = 'Male', iif(%age>70, 1 - (0.9402).power((52.00961  * (%age.ln() - 3.8926095) + 20.014077 * (%tChol.ln() - 5.3441475) - 0.905964  * (%hdl.ln() - 3.7731132) + 1.305784  * (%systolic.ln() - 4.8618212) + 0.241549  * (%antihypert - 0.1180474) + 12.096316 * (%smokes - 0.335602) - 4.605038  * (%age.ln() * %tChol.ln() - 20.8111562) - 2.84367   * (70.ln() * %smokes  - 1.2890301) - 2.93323   * (%age.ln() * %age.ln() - 15.2144965)).exp()), {}), {}), {})"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "maleNotOver70"
    * language = #text/fhirpath
    * expression = "iif(%allQuestionsAnswered, iif(%gender = 'Male', iif(%age<=70, 1 - (0.9402).power((52.00961  * (%age.ln() - 3.8926095) + 20.014077 * (%tChol.ln() - 5.3441475) - 0.905964  * (%hdl.ln() - 3.7731132) + 1.305784  * (%systolic.ln() - 4.8618212) + 0.241549  * (%antihypert - 0.1180474) + 12.096316 * (%smokes - 0.335602) - 4.605038  * (%age.ln() * %tChol.ln() - 20.8111562) - 2.84367   * (%age.ln() * %smokes  - 1.2890301) - 2.93323   * (%age.ln() * %age.ln() - 15.2144965)).exp()), {}), {}), {})"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "risk"
    * language = #text/fhirpath
    * expression = "%femaleOver78 | %femaleNotOver78 | %maleOver70 | %maleNotOver70"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-framingham-hchd-lhc"
* name = "FraminghamHCHD"
* title = "Hard Coronary Heart Disease (10-year risk)"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "A form for calculating the 10-year-risk of Hard Coronary Heart Disease.  The constants used in the formula match those in https://www.framinghamheartstudy.org/fhs-risk-functions/hard-coronary-heart-disease-10-year-risk/, but the actual formulas are not listed there, and so we have not been able to verify them.  However, the output of this form matches the output of a perl program (from which the formulas were taken) which matched the output of a calculator on a website, which regrettably no longer exists.  So, while this form is good enough or a demo, it should not be relied on for real purposes without first verifying its formulas or its output against some other source."
* item[+]
  * linkId = "/age"
  * code = $loinc#30525-0 "Age"
  * text = "Age (in years)"
  * type = #decimal
  * required = true
* item[+]
  * linkId = "/age_requirement_notice"
  * text = "Sorry, but the formulas are only valid for ages in the range 30 to 79."
  * type = #display
  * enableWhen[+]
    * question = "/age"
    * operator = #<
    * answerDecimal = 30
  * enableWhen[+]
    * question = "/age"
    * operator = #>
    * answerDecimal = 79
  * enableBehavior = #any
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
    * valueInteger = 1
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * text = "Drop down"
  * linkId = "/46098-0"
  * code = $loinc#46098-0 "Sex"
  * text = "Gender"
  * type = #choice
  * required = true
  * answerOption[+].valueCoding = $loinc#LA2-8 "Male"
  * answerOption[+].valueCoding = $loinc#LA3-6 "Female"
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
    * valueInteger = 1
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
      * text = "Radio Button"
  * linkId = "/smokes"
  * text = "Do you smoke?"
  * type = #choice
  * required = true
  * answerOption[+].valueCoding = $example#Y "Yes"
  * answerOption[+].valueCoding = $example#N "No"
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
    * valueInteger = 1
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding.display = "mm[Hg]"
  * linkId = "/8480-6"
  * code = $loinc#8480-6 "Systolic blood pressure"
  * text = "Systolic blood pressure"
  * type = #decimal
  * required = true
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
    * valueInteger = 1
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding.display = "mg/dL"
  * linkId = "/2093-3"
  * code = $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
  * text = "Cholesterol [Mass/Vol]"
  * type = #decimal
  * required = true
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
    * valueInteger = 1
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding.display = "mg/dL"
  * linkId = "/2085-9"
  * code = $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
  * text = "Cholesterol in HDL [Mass/Vol]"
  * type = #decimal
  * required = true
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs"
    * valueInteger = 1
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#radio-button "Radio Button"
      * text = "Radio Button"
  * linkId = "/antihypertensive"
  * text = "Are you taking medication for high blood pressure?"
  * type = #choice
  * required = true
  * answerOption[+].valueCoding = $example#Y "Yes"
  * answerOption[+].valueCoding = $example#N "No"
* item[+]
  * linkId = "/all_answers_required_notice"
  * text = "All answers are required before the risk probability can be computed."
  * type = #display
* item[+]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
    * valueExpression
      * description = "HCHD risk as decimal"
      * language = #text/fhirpath
      * expression = "%risk"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
    * valueBoolean = true
  * linkId = "riskDecimal"
  * text = "10-year HCHD Risk Probabilily as a decimal (0 to 1)"
  * type = #decimal
  * required = false
* item[+]
  * extension
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
    * valueExpression
      * description = "HCHD risk as percentage"
      * language = #text/fhirpath
      * expression = "iif(%risk.exists(), (%risk * 100).round(2).toString() & '%', {})"
  * linkId = "riskPercentage"
  * text = "10-year HCHD Risk Probabilily"
  * type = #string
  * required = false