Extension: SourceStructureMapExtension
Id: sdc-questionnaire-sourceStructureMap
Title: "Source structure map"
Description: "StructureMaps that have this QuestionnaireResponses for this Questionnaire as 'target' - i.e. that can be used to create QuestionnaireResponses that are valid against this Questionnaire."
* ^status = #active
* ^purpose = "While it's possible to query for StructureMaps associated with a Questionnaire, it might not be obvious what repository to query.  This allows a Questionnaire to specifically identify known relevant maps."
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..1
* . ^short = "Map that can populate this questionnaire"
* . ^definition = "StructureMaps that have this QuestionnaireResponses for this Questionnaire as 'target' - i.e. that can be used to create QuestionnaireResponses that are valid against this Questionnaire."
* url only uri
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/StructureMap"