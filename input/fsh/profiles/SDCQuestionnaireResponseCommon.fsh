Profile: SDCQuestionnaireResponseCommon
Parent: QuestionnaireResponse
Id: sdc-questionnaireresponsecommon
Title: "SDC Questionnaire Response Common Elements"
Description: "Defines common elements for all SDC Questionnaire Responses (regular or adaptive)."
* ^status = #active
* ^abstract = true
* obeys sdcqr-1 and sdcqr-2 and sdcqr-3
//To do: Fix the hard-coding of the indexes on the constraints (sdcqr-1 and sdcqr-2) to apply the best-practice extension.
* . ^constraint[5].extension[$best-practice].valueBoolean = true
* . ^constraint[6].extension[$best-practice].valueBoolean = true
* . ^short = "Generic Questionnaire Response"
* . ^definition = "Sets expectations for supported capabilities for questionnaire responses for SDC-conformant systems."
* . ^alias[0] = "Form Data"
* extension contains
    $adheresTo named adheresTo 0..* and
    $triggeredBy named triggeredBy 0..1 and
    $questionnaireresponse-signature named signature 0..* and
    $questionnaireresponse-completionMode named completionMode 0..1
//    $questionnaireresponse-source named source 0..1
* extension[adheresTo].value[x] only Canonical(ActivityDefinition or PlanDefinition ) or Reference(ActivityDefinition or PlanDefinition ) or uri
* extension[triggeredBy].value[x] only Canonical(ActivityDefinition or PlanDefinition ) or Reference(ActivityDefinition or PlanDefinition ) or uri
* extension[source].value[x] only Reference(Device or Organization )
* identifier MS
* questionnaire 1..1 MS
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
        $itemWeight named itemWeight 0..1
    * extension[itemWeight] ^comment = "Inclusion of weights in QRs can increase performance when calculating based on weights."          
    * value[x] 0..1 MS
    * value[x] only boolean or date or dateTime or time or decimal or integer or string or Coding or uri or Quantity or Attachment or Reference
    * item 0..* MS
      * ^contentReference = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse#QuestionnaireResponse.item"
  * item MS
    * ^contentReference = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse#QuestionnaireResponse.item"


Invariant: sdcqr-1
Description: "Subject SHOULD be present (searching is difficult without subject).  Almost all QuestionnaireResponses should be with respect to some sort of subject."
Severity: #warning
Expression: "subject.exists()"
XPath: "exists(f:subject)"

Invariant: sdcqr-2
Description: "When repeats=true for a group, it'll be represented with multiple items with the same linkId in the QuestionnaireResponse.  For a question, it'll be represented by a single item with that linkId with multiple answers."
Severity: #error
Expression: "(QuestionnaireResponse|repeat(answer|item)).select(item.where(answer.value.exists()).linkId.isDistinct()).allTrue()"
XPath: "not(exists(for $item in descendant::f:item[f:answer] return $item/preceding-sibling::f:item[f:linkId/@value=$item/f:linkId/@value]))"

Invariant: sdcqr-3
Description: "Can either have source or source extension, but not both"
Severity: #error
Expression: "source.count() + extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-QuestionnaireResponse.source').count() <=1"
XPath: "count(f:source | f:extension[@url='http://hl7.org/fhir/5.0/StructureDefinition/extension-QuestionnaireResponse.source']) <= 1"
