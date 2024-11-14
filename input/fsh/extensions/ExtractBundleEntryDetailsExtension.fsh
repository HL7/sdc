Extension: ExtractBundleEntryDetailsExtension
Id: sdc-questionnaire-extractBundleEntryDetails
Title: "Details to populate into the bundle entry during extraction"
Description: "Fhirpath expressions to use to populate the properties of the Bundle.entry.request for the resource during extraction. Including fullUrl, ifNoneMatch, ifModifiedSince, ifMatch, ifNoneExist.\n\nIt can also substitute for the definition or template extract indicator (its existence on a node makes the itemExtract extension optional)"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Bundle entry request property fhirpath expressions"
* . ^definition = "Provides fhirpath expressions to evaluate the details to populate the properties of the Bundle.entry.request for the resource during extraction. Including fullUrl, ifNoneMatch, ifModifiedSince, ifMatch, ifNoneExist."
* extension contains
    definition 0..1 and
    template 0..1 and
    fullUrl 0..1 and
    ifNoneMatch 0..1 and
    ifModifiedSince 0..1 and
    ifMatch 0..1 and
    ifNoneExist 0..1
* extension[definition] 
  * ^short = "ElementDefintion to populate entry.request properties"
  * ^definition = "This is the profile canonical Url that the value should be extracted into."
  * value[x] 1..1
  * value[x] only uri
    * ^short = "Profile canonical URL"
* extension[template] 
  * ^short = "Contained reference to Resource Template"
  * ^definition = "The reference to a contained resource template to be extracted from this item once the QuestionnaireResponse is complete. The template will be cloned into the output extraction bundle, and any template values will be replaced with the values from the QuestionnaireResponse."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Contained reference to Resource Template"
* extension[fullUrl] 
  * ^short = "An expression to evaluate to populate the fullUrl property"
  * ^definition = "An expression to evaluate to extract the value into the fullUrl property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifNoneMatch] 
  * ^short = "An expression to evaluate to populate the ifNoneMatch property (string result)"
  * ^definition = "An expression to evaluate to extract the value into the ifNoneMatch property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifModifiedSince] 
  * ^short = "An expression to evaluate to populate the ifModifiedSince property (instant result)"
  * ^definition = "An expression to evaluate to extract the value into the ifModifiedSince property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifMatch] 
  * ^short = "An expression to evaluate to populate the ifMatch property (string result)"
  * ^definition = "An expression to evaluate to extract the value into the ifMatch property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* extension[ifNoneExist] 
  * ^short = "An expression to evaluate to populate the ifNoneExist property (string result)"
  * ^definition = "An expression to evaluate to extract the value into the ifNoneExist property. If no value is evaluated, then the element is not extracted."
  * value[x] 1..1
  * value[x] only string
    * ^short = "Fhirpath Expression value"
* url only uri
