Extension: LaunchContextExtension
Id: sdc-questionnaire-launchContext
Title: "Launch Contexts"
Description: "Resources that provide context for form processing logic (pre-population, flow-control, drop-down selection, etc.) when creating/displaying/editing a QuestionnaireResponse."
* ^status = #draft
* ^purpose = "Indicates to systems creating or updating a QuestionnaireResponse what types of information to pass in for internal processing.  May also influence things like SMART on FHIR permission requests."
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..*
* . ^short = "Context resources needed for Questionnaire"
* . ^definition = "Resources that provide context for form processing logic (pre-population, flow-control, drop-down selection, etc.) when creating/displaying/editing a QuestionnaireResponse."
* . ^comment = "3 of these launch contexts are aligned with the existing SMART on FHIR \"launch\" contexts."
* obeys sdcext-1
* extension contains
    name 1..1 and
    type 1..* and
    description 0..1 and
    multiplesAllowed 0..1
* extension[name] only Extension
  * ^short = "Variable name"
  * ^definition = "The variable name the passed resource will be referenced by within the Questionnaire logic."
  * value[x] 1..1
  * value[x] only Coding
  * value[x] from QuestionnaireLaunchContext (extensible)
    * ^binding.description = "Launch context codes for use in defining questionnaires context at launch time (NOTE: the Coding.code will be used for the variable name and that (at present) there is no support for Questionnaires that use multiple launch contexts which share a common code but different code systems.  Also, all launch context codes must meet the requirements to be a valid FHIRPath name.)."
* extension[type] only Extension
  * ^short = "Resource type"
  * ^definition = "The kind of resource to be provided."
  * value[x] 1..1
  * value[x] only code
  * value[x] from ResourceType (required)
* extension[description] only Extension
  * ^short = "Explanation of context element"
  * ^definition = "Guidance on the resource to be provided and what impact providing it will have on questionnaire behavior."
  * value[x] 1..1
  * value[x] only string
* extension[multiplesAllowed] only Extension
  * ^short = "Allow multiple resources"
  * ^definition = "Indicates whether multiple resources are permitted for this context element."
  * value[x] 0..1
  * value[x] only boolean
* url only uri