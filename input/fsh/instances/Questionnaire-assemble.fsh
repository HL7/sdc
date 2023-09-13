Instance: Questionnaire-assemble
InstanceOf: OperationDefinition
Title: "Assemble Modular Questionnaire Operation"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-assemble"
* name = "SDCAssemble"
* title = "Assemble Modular Questionnaire Operation"
* status = #draft
* kind = #operation
* description = "The $assemble operation takes a modular questionnaire (one that references sub-questionnaires and/or relies on definition elements to contain the content for item definitions) and produces the equivalent fully-inline Questionnaire.  Full details on the process can be found [here](modular.html)."
* code = #assemble
* resource = #Questionnaire
* system = false
* type = true
* instance = false
* inputProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* parameter[0]
  * insert parameter(#questionnaire, #in, 1, "1", #Resource, "The [Modular Questionnaire](StructureDefinition-sdc-questionnaire-modular.html\) to assemble the content of.")
* parameter[+]
  * insert parameter(#return, #out, 0, "1", #Resource, "The fully assembled [Questionnaire](StructureDefinition-sdc-questionnaire.html\) with all subQuestionnaires inlined and all items with item.definitions have had relevant metadata propagated into the item.")
* parameter[+]
  * insert parameter(#outcome, #out, 0, "1", #Resource, "The OperationOutcome indicating any warnings or information messages with the assembly process")
  