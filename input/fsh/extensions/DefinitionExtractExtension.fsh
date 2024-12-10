Extension: DefinitionExtractExtension
Id: sdc-questionnaire-definitionExtract
Title: "Extract Definition"
Description: "Specifies the resource type/profile for the definition based extraction of a resource and optionally the `fullUrl` and other `Bundle.entry.request` properties as needed."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . ^short = "Details for a definition based resource extraction"
* . ^definition = "Specifies the resource type/profile for the definition based extraction of a resource and optionally the `fullUrl` and other `Bundle.entry.request` properties as needed."
* extension contains
    definition 1..1 and
    fullUrl 0..1 and
    ifNoneMatch 0..1 and
    ifModifiedSince 0..1 and
    ifMatch 0..1 and
    ifNoneExist 0..1
* extension[definition] 
  * ^short = "Canonical URL of Resource type or profile to extract"
  * ^definition = "The resource type/profile canonical Url defining the resource type to be extracted."
  * ^comment = """The canonical URL for a base resource can be used if a specific profile is not required, e.g. `http://hl7.org/fhir/StructureDefinition/Patient`.
  
  The value used here will be the prefix value (before the #) in any child items `definition` value.
  
  Where a specific profile is used (not the base resource), then this canonical value will be set in the created resource's `meta.profile` collection.
  """
  * value[x] 1..1
  * value[x] only canonical
    * ^short = "Resource Profile canonical URL"
* extension[fullUrl] 
  * ^short = "A fhirpath expression to evaluate to populate the fullUrl property in the `Bundle.entry` (uri/string result)"
  * ^definition = "A fhirpath expression to evaluate to extract the value into the fullUrl property. If no value is evaluated, then the element is not extracted."
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