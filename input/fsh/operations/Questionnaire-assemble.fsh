Instance: Questionnaire-assemble
InstanceOf: OperationDefinition
Title: "Assemble Modular Questionnaire Operation"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-assemble"
* name = "SDCAssemble"
* title = "Assemble Modular Questionnaire Operation"
* status = #active
* kind = #operation
* description = "The $assemble operation takes a modular questionnaire (one that references sub-questionnaires and/or relies on definition elements to contain the content for item definitions) and produces the equivalent fully-inline Questionnaire.  Full details on the process can be found [here](modular.html)."
* code = #assemble
* resource = #Questionnaire
* system = false
* type = true
* instance = true
* inputProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-modular"
* parameter[+]
  * insert parameter(#questionnaire, #in, 1, "1", #Element, "The [Modular Questionnaire](StructureDefinition-sdc-questionnaire-modular.html\) to assemble the content of. Can be provided as a canonical for the questionnaire\, a questionnaire reference\, or directly as a questionnaire resource.")
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "uri"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "Reference"
  * extension[+]
    * url = "http://hl7.org/fhir/StructureDefinition/operationdefinition-allowed-type"
    * valueUri = "Questionnaire"
* parameter[+]
  * insert parameter(#return, #out, 0, "1", #Resource, "The fully assembled [Questionnaire](StructureDefinition-sdc-questionnaire.html\) with all subQuestionnaires inlined and all items with item.definitions have had relevant metadata propagated into the item.")
* parameter[+]
  * insert parameter(#outcome, #out, 0, "1", #Resource, "The OperationOutcome indicating any warnings or information messages with the assembly process")
  