Profile: SDCQuestionnaireResponse
Parent: QuestionnaireResponse
Id: sdc-questionnaireresponse
Title: "SDC Questionnaire Response"
Description: "Defines how the questionnaire response resource is used to reflect form data within the ONC's Structured Data Capture standard."
* ^status = #draft
* . ^short = "SDC Questionnaire Response"
* . ^definition = "Sets expectations for supported capabilities for questionnaire responses for SDC-conformant systems."
* . ^alias[0] = "Form Data"
* . ^alias[+] = "Form Data"
* obeys sdcqr-1 and sdcqr-2
//To do: Fix the hard-coding of the indexes on the constraints (sdcqr-1 and sdcqr-2) to apply the best-practice extension.
* . ^constraint[5].extension[$best-practice].valueBoolean = true
* . ^constraint[6].extension[$best-practice].valueBoolean = true
* extension contains
    $questionnaireresponse-signature named signature 0..* and
    $questionnaireresponse-completionMode named completionMode 0..1
* identifier MS
* questionnaire 1..1 MS
* questionnaire only canonical
  * ^comment = "For SDC, this SHALL be the version-specific URL of the form as hosted on the Form Manager."
  * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
  * extension contains $display named questionnaireDisplay 0..1 MS
  * extension[questionnaireDisplay] ^comment = "This SHALL be the title of the Questionnaire at the time the QuestionnaireResponse was originally authored."
* status MS
* subject MS
* subject ^comment = "...  If subject is omitted - because the QuestionnaireResponse is not associated with a specific subject, ensure that QuestionnaireRsponse.identifier is present or the QuestionnaireResponse is referenced somewhere (e.g. Task.output, Composition.section.entry, etc.) to allow tracking and retrieval of the QuestionnaireResponse"
* authored 1..1 MS
  * ^definition = "Identifies when this version of the answer set was created.  Changes whenever the answers are updated."
* author MS
* item MS
  * extension contains
      ItemMedia named itemMedia 0..1 and
      $questionnaireresponse-signature named ItemSignature 0..*
  * linkId 1..1 MS
  * text MS
  * answer 0..* MS
    * extension contains
        ItemAnswerMedia named itemAnswerMedia 0..1 and
        $ordinalValue named ordinalValue 0..1
    * value[x] 0..1 MS
    * value[x] only boolean or date or dateTime or time or decimal or integer or string or Coding or uri or Quantity or Attachment or Reference
      * extension contains $itemWeight named itemWeight 0..1
      * extension[itemWeight] ^comment = "Inclusion of weights in QRs can increase performance when calculating based on weights."          
    * item 0..* MS
      * ^contentReference = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse#QuestionnaireResponse.item"
  * item MS
    * ^contentReference = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse#QuestionnaireResponse.item"