Extension: ObservationExtractEntry
Id: sdc-questionnaire-observationExtractEntry
Title: "Observation Extract Entry"
Description: "Allows defining the expectations for the Observation entry to allow cross-referencing across extracted resources."
* ^url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtractEntry"
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* . 0..*
* . ^short = "Allows defining the expectations for the Observation entry to allow cross-referencing across extracted resources."
* . ^definition = "Allows defining the expectations for the Observation entry to allow cross-referencing across extracted resources."
* extension contains
    fullUrl 0..1 and
    resourceId 0..1 and
    ifNoneMatch 0..1 and
    ifModifiedSince 0..1 and
    ifMatch 0..1 and
    ifNoneExist 0..1
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
