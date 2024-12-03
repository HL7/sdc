Extension: TemplateExtractExtension
Id: sdc-questionnaire-templateExtract
Title: "Extract Template - Resource"
Description: "Specifies a reference to a contained resource template (or set of resources for a repeating item) to be extracted from this item once the QuestionnaireResponse is complete. The template will be cloned into the output extraction bundle, and any template values will be replaced with the values from the QuestionnaireResponse.  Optionally the `fullUrl` and other `Bundle.entry.request` properties can be also included."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* . 0..*
* . ^short = "Establishes extract context for a Questionnaire/item using an extraction template resource"
* . ^definition = "Specifies a reference to a contained resource template (or set of resources for a repeating item) to be extracted from this item once the QuestionnaireResponse is complete."
* extension contains
    template 1..1 and
    fullUrl 0..1 and
    resourceId 0..1 and
    ifNoneMatch 0..1 and
    ifModifiedSince 0..1 and
    ifMatch 0..1 and
    ifNoneExist 0..1
* extension[template] 
  * ^short = "Reference to contained resource template"
  * ^definition = "A reference to a contained resource to use as a template to put into the output transaction bundle."
  * value[x] 1..1
  * value[x] only Reference
    * ^short = "Contained reference to the resource template"
    * ^type.aggregation = #contained
* extension[fullUrl] 
  * ^short = "A fhirpath expression to evaluate to populate the fullUrl property in the `Bundle.entry` (uri/string result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the fullUrl property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[resourceId] 
  * ^short = "A fhirpath expression to evaluate to populate the resourceId property (string result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the ifNoneMatch property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifNoneMatch] 
  * ^short = "A fhirpath expression to evaluate to populate the ifNoneMatch property (string result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the ifNoneMatch property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifModifiedSince] 
  * ^short = "A fhirpath expression to evaluate to populate the ifModifiedSince property (instant result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the ifModifiedSince property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifMatch] 
  * ^short = "A fhirpath expression to evaluate to populate the ifMatch property (string result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the ifMatch property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifNoneExist] 
  * ^short = "A fhirpath expression to evaluate to populate the ifNoneExist property (string result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the ifNoneExist property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* url only uri
