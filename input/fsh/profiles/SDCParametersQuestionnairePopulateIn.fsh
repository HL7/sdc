Profile: SDCParametersQuestionnairePopulateIn
Parent: Parameters
Id: parameters-questionnaire-populate-in
Title: "Populate operation input parameters"
Description: "Profile used to validate the parameters that are the input of the [$populate](OperationDefinition-Questionnaire-populate.html), [$populate-html](OperationDefinition-Questionnaire-populatehtml.html), and [$populate-link](OperationDefinition-Questionnaire-populatelink.html) questionnaire operations"
* ^status = #active
* obeys sdc-pop1
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #open
* parameter contains identifier 0..1 and
  questionnaire 0..1 and
  subject 0..1 and
  context 0..1 and
  local 0..1
* parameter[identifier]
  * name = "identifier" (exactly)
  * value[x] 1..
  * value[x] only Identifier
  * resource ..0
  * part ..0
* parameter[questionnaire]
  * name = "questionnaire" (exactly)
  * value[x] only uri or Reference(Questionnaire) 
  * resource only Questionnaire
  * part ..0
* parameter[subject]
  * name = "subject" (exactly)
  * value[x] 1..
  * value[x] only Reference
  * resource ..0
  * part ..0
* parameter[context]
  * name = "context" (exactly)
  * value[x] ..0
  * resource ..0
  * part 2..
  * part
    * ^slicing.discriminator.type = #value
    * ^slicing.discriminator.path = "name"
    * ^slicing.rules = #open
  * part contains name 1..1 and
    content 0..*
  * part[name]
    * name = "name" (exactly)
    * value[x] 1..
    * value[x] only string
    * resource ..0
    * part ..0
  * part[content]
    * name = "content" (exactly)
    * value[x] only Reference
    * part ..0
* parameter[local]
  * name = "local" (exactly)
  * value[x] 1..
  * value[x] only boolean
  * resource ..0
  * part ..0

Invariant: sdc-pop1
Description: "Context names must be unique."
Severity: #error
Expression: "parameter.where(name='context').count() = parameter.where(name='context').part.where(name='name').value.distinct().count()"
XPath: "count(f:parameter[f:name/@value='context']) = count(distinct-values(f:parameter[f:name/@value='context']/f:part[f:name/@value='name']/f:valueString/@value))"