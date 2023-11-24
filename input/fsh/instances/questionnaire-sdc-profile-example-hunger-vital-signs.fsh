Instance: questionnaire-sdc-profile-example-hunger-vital-signs
InstanceOf: SDCBaseQuestionnaire
Title: "SDC-Hunger Vital Sign"
Usage: #example
* extension[0]
  * url = $standard-status
  * valueCode = #draft
* extension[+]
  * url = $fmm
  * valueInteger = 0
* extension[+]
  * url = $variable
  * valueExpression
    * name = "worriedAnsCode"
    * language = #text/fhirpath
    * expression = "%resource.item.where(linkId='/88122-7').answer.value.code"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "ranOutAnsCode"
    * language = #text/fhirpath
    * expression = "%resource.item.where(linkId='/88123-5').answer.value.code"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "riskCodes"
    * language = #text/fhirpath
    * expression = "'LA28397-0'.combine('LA6729-3')"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "riskStatus"
    * language = #text/fhirpath
    * expression = "%riskCodes contains %worriedAnsCode or %riskCodes contains %ranOutAnsCode"
* extension[+]
  * url = $variable
  * valueExpression
    * name = "answeredEitherQ"
    * language = #text/fhirpath
    * expression = "%worriedAnsCode.exists() or %ranOutAnsCode.exists()"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-hunger-vital-signs"
* name = "QuestionnaireSdcProfileExampleHungerVitalSigns"
* title = "Hunger Vital Sign [HVS]"
* status = #draft
* experimental = true
* subjectType = #Patient
* description = "A hunger vital signs form (showing calculatedExpression selecting a value from a list)."
* code = $loinc#88121-9 "Hunger Vital Sign [HVS]"
* item[0]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * text = "Drop down"
  * linkId = "/88122-7"
  * code = $loinc#88122-7 "Within the past 12 months we worried whether our food would run out before we got money to buy more [U.S. FSS]"
  * text = "Within the past 12Mo we worried whether our food would run out before we got money to buy more"
  * type = #choice
  * required = false
  * answerOption[0].valueCoding = $loinc#LA28397-0 "Often true"
  * answerOption[+].valueCoding = $loinc#LA6729-3 "Sometimes true"
  * answerOption[+].valueCoding = $loinc#LA28398-8 "Never true"
  * answerOption[+].valueCoding = $loinc#LA15775-2 "Don't know/refused"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * text = "Drop down"
  * linkId = "/88123-5"
  * code = $loinc#88123-5 "Within the past 12 months the food we bought just didn't last and we didn't have money to get more [U.S. FSS]"
  * text = "Within the past 12Mo the food we bought just didn't last and we didn't have money to get more [U.S. FSS]"
  * type = #choice
  * required = false
  * answerOption[0].valueCoding = $loinc#LA28397-0 "Often true"
  * answerOption[+].valueCoding = $loinc#LA6729-3 "Sometimes true"
  * answerOption[+].valueCoding = $loinc#LA28398-8 "Never true"
  * answerOption[+].valueCoding = $loinc#LA15775-2 "Don't know/refused"
* item[+]
  * extension[0]
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
      * text = "Drop down"
  * extension[+]
    * url = $variable
    * valueExpression
      * name = "thisItem"
      * language = #text/fhirpath
      * expression = "%questionnaire.item.where(linkId = '/88124-3')"
  * extension[+]
    * url = $variable
    * valueExpression
      * name = "atRiskCoding"
      * language = #text/fhirpath
      * expression = "%thisItem.answerOption.valueCoding.where(code='LA19952-3')"
  * extension[+]
    * url = $variable
    * valueExpression
      * name = "noRiskCoding"
      * language = #text/fhirpath
      * expression = "%thisItem.answerOption.valueCoding.where(code='LA19983-8')"
  * extension[+]
    * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
    * valueExpression
      * description = "risk determination"
      * language = #text/fhirpath
      * expression = "iif(%answeredEitherQ, iif(%riskStatus, %atRiskCoding, %noRiskCoding), {})"
  * linkId = "/88124-3"
  * code = $loinc#88124-3 "Food insecurity risk [HVS]"
  * text = "Food insecurity risk"
  * type = #choice
  * required = false
  * readOnly = true
  * answerOption[0].valueCoding = $loinc#LA19952-3 "At risk"
  * answerOption[+].valueCoding = $loinc#LA19983-8 "No risk"
  * item
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#help "Help-Button"
        * text = "Help-Button"
    * linkId = "/88124-3-help"
    * text = "An answer of \"often true\" or \"sometimes true\" to either or both of the Hunger Vital Sign™ questions identifies a patient as at risk for food insecurity (FI)."
    * type = #display