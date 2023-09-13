Instance: questionnaire-sdc-profile-example-weight-height-tracking-panel
InstanceOf: SDCBaseQuestionnaire
Title: "SDC-Weight and Height Tracking Panel"
Description: "A weight and height panel (from LOINC) with a FHIRPath rule for calculating the BMI."
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "weight"
    * language = #text/fhirpath
    * expression = "%resource.item.where(linkId='/29463-7').answer.valueDecimal"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "height"
    * language = #text/fhirpath
    * expression = "%resource.item.where(linkId='/8302-2').answer.valueDecimal*0.0254"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
  * valueCode = #draft
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
  * valueInteger = 0
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-performerType"
  * valueCode = #Practitioner
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-weight-height-tracking-panel"
* identifier
  * system = "http://loinc.org"
  * value = "55418-8"
* name = "WeightHeightTrackingPanel"
* title = "Weight & Height tracking panel"
* status = #draft
* experimental = true
* subjectType = #Patient
* description = "A weight & height panel (from LOINC) with a FHIRPath rule for calculating the BMI."
* purpose = "This Questionnaire example was generated to ensure a non-proprietary, publicly available questionnaire that is available to test the Structured Data Capture profiles"
* code = $loinc#55418-8 "Weight and Height tracking panel"
* item[0]
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding = $unitsofmeasure#kg
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
    * valueDuration = 1 'a' "year"
  * linkId = "/29463-7"
  * code = $loinc#29463-7 "Weight"
  * text = "Weight"
  * type = #decimal
  * required = false
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * text = "Drop down"
  * linkId = "/8352-7"
  * code = $loinc#8352-7 "Clothing worn during measure"
  * text = "Clothing worn during measure"
  * type = #choice
  * required = false
  * answerOption[0].valueCoding = $loinc#LA11871-3 "Underwear or less"
  * answerOption[+].valueCoding = $loinc#LA11872-1 "Street clothes, no shoes"
  * answerOption[+].valueCoding = $loinc#LA11873-9 "Street clothes & shoes"
* item[+]
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding = $unitsofmeasure#[in_i]
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
    * valueDuration = 1 'a' "year"
  * linkId = "/8302-2"
  * code = $loinc#8302-2 "Body height"
  * text = "Body height"
  * type = #decimal
  * required = false
* item[+]
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
    * valueCoding = $unitsofmeasure#kg/m2
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
    * valueExpression
      * description = "BMI calculation"
      * language = #text/fhirpath
      * expression = "(%weight/(%height.power(2))).round(1)"
  * linkId = "/39156-5"
  * code = $loinc#39156-5 "BMI"
  * text = "BMI"
  * type = #decimal
  * required = false
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * text = "Drop down"
  * linkId = "/8361-8"
  * code = $loinc#8361-8 "Bdy position with respect to gravity"
  * text = "Bdy position with respect to gravity"
  * type = #choice
  * required = false
  * answerOption[0].valueCoding = $loinc#LA11868-9 "Sitting"
  * answerOption[+].valueCoding = $loinc#LA11869-7 "Lying"
  * answerOption[+].valueCoding = $loinc#LA11870-5 "Standing"