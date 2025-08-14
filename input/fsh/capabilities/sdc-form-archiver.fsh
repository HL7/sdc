Instance: sdc-form-archiver
InstanceOf: CapabilityStatement
Title: "SDC Form Archiver"
Description: "SDC System for archiving and retrieving the completed forms"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-archiver"
* name = "SDCFormArchiver"
* title = "SDC Form Archiver"
* status = #active
* date = "2015-09-03"
* publisher = "HL7 International - FHIR Infrastructure"
* contact.telecom
  * system = #other
  * value = "http://wiki.siframework.org/Structured+Data+Capture+Initiative"
* description = "This profile defines the expected capabilities of the *SDC Form Archiver* role when conforming to this implementation guide.  This role is responsible for persisting (archiving) completed or partially completed forms [[[QuestionnaireResponse]]] resource instances).  These instances may be submitted individually or in a bundle together with [[[Provenance]]] information providing details about the completion of the questionnaire response.  In some cases [[[Binary]]] or [[[DocumentReference]]] resources might also be submitted to convey source information used in the population of the questionnaire response.&#xa;&$xa;The purpose of this role is to capture \"work in progress\" for archival reasons.  There is no expectation that submitted form data is subsequently made available for retrieval (at least not in the same format), though it might be made available through out-of-band mechanisms."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest
  * mode = #client
  * documentation = "The [[[QuestionnaireResponse]]] may be sent as a single instance or as a FHIR [[[Bundle]]] also containing [[[Provenance]]] resources providing details on the sources of information.  A Bundle submission might also include [[[Binary]]] and/or [[[DocumentReference]]] instances referring to the data used to populate the form.  A Form Archiver must support persisting, searching and retrieving those resources."
  * security.description = "Implementations must meet the [general security requirements](security.html) documented in this implementation guide.html."
  * insert SDCResource(QuestionnaireResponse, #SHALL, sdc-questionnaireresponse, [[The primary focus of a form archiver is storing QuestionnaireResponses.]])
    * resource[=].versioning = #versioned
    * insert Interaction(#SHALL, #create, "Allows archiving (storing\) a completed or partially-completed form")
    * insert Interaction(#SHOULD, #update, "Allows updating a previously archived form. (Systems may place rules on who can update forms and under what circumstances\).")
    * insert Interaction(#MAY, #delete, "Allows removal of an archived form from a repository.  Note that the removal may be logical rather than physical. Some systems may have rules for who can remove a submitted response and under what circumstances.")
  * insert CoreResource(Provenance, #SHALL, [[Captures metadata about the creation/changing of QuestionnaireResponses.]])
    * insert Interaction(#SHOULD, #create, "Allows submitting a Provenance record associated with a particular QuestionnaireResponse.")
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #transaction
    * documentation = "Allows submission of a [[[QuestionnaireResponse]]] together with [[[Provenance]]] and other supporting resources as a single unit of work."