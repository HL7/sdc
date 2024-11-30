Extension: TargetStructureMapExtension
Id: sdc-questionnaire-targetStructureMap
Title: "Target structure map"
Description: "StructureMaps that have QuestionnaireResponses of this Questionnaire as 'source'- i.e. that can be used to create other artifacts from QuestionnaireResponses that are valid against this Questionnaire. If multiple maps are specified, then multiple extraction outputs will be produced.  Authors can choose between a single output 'transaction' Bundle or multiple outputs depending on the desired behavior and maintenance process."
* ^status = #active
* ^purpose = "While it's possible to query for StructureMaps associated with a Questionnaire, it might not be obvious what repository to query.  This allows a Questionnaire to specifically identify known relevant maps."
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..*
* . ^short = "Map to artifacts that can be populated from this Questionnaire"
* . ^definition = "StructureMaps that have QuestionnaireResponses of this Questionnaire as 'source'- i.e. that can be used to create other artifacts from QuestionnaireResponses that are valid against this Questionnaire."
* url only uri
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/StructureMap"