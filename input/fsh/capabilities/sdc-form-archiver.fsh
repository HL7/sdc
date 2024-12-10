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
* description = "This profile defines the expected capabilities of the ''SDC Form Archiver'' role when conforming to the S&I Framework's [[index.html|Structured Data Capture FHIR implementation guide]].  This role is responsible for persisting (archiving) completed or partially completed forms ([[QuestionnaireResponse]] resource instances).  These instances may be submitted individually or in a bundle together with [[Provenance]] information providing details about the completion of the questionnaire response.  In some cases [[Binary]] or [[DocumentReference]] resources might also be submitted to convey source information used in the population of the questionnaire response.<br/>The purpose of this role is to capture \"work in progress\" for archival reasons.  There is no expectation that submitted form data is subsequently made available for retrieval (at least not in the same format), though it might be made available through out-of-band mechanisms."
* kind = #requirements
* fhirVersion = #1.0.0
* format[0] = #xml
* format[+] = #json
* rest
  * mode = #client
  * documentation = "The [[QuestionnaireResponse]] may be sent as a single instance or as a FHIR [[Bundle]] also containing [[Provenance]] resources providing details on the sources of information.  A Bundle submission might also include [[Binary]] and/or [[DocumentReference]] instances referring to the data used to populate the form.  A Form Archiver must support persisting, searching and retrieving those resources."
  * security.description = "Implementations must meet the general security requirements documented in the [[security.html|SDC implementation guide]]."
  * resource[0]
    * type = #QuestionnaireResponse
    * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse"
    * insert Interaction(#SHALL, #create, "Allows archiving (storing\) a completed or partially-completed form")
    * insert Interaction(#SHOULD, #update, "Allows updating a previously archived form. (Systems may place rules on who can update forms and under what circumstances\).")
    * insert Interaction(#MAY, #delete, "Allows removal of an archived form from a repository.  Note that the removal may be logical rather than physical. Some systems may have rules for who can remove a submitted response and under what circumstances.")
  * resource[+]
    * type = #Binary
    * insert Interaction(#SHOULD, #create, "Allows storage of a binary (generally containing information used in the completion of a [[QuestionnaireResponse]]\).  The data might be in a variety of forms.")
    * insert Interaction(#MAY, #update, "Allows updating a previously submitted binary data.  (Systems may place rules on who can update binary data and under what circumstances\).")
    * insert Interaction(#MAY, #delete, "Allows removal of binary data from a repository.  Note that the removal may be logical rather than physical. Some systems may have rules for who can remove binary data and under what circumstances.")
  * resource[+]
    * type = #DocumentReference
    * insert Interaction(#SHOULD, #create, "Allows storage of a document reference (generally containing information used in the completion of a [[QuestionnaireResponse]]\).")
    * insert Interaction(#MAY, #update, "Allows updating a previously submitted document reference.  (Systems may place rules on who can update document references and under what circumstances\).")
    * insert Interaction(#MAY, #delete, "Allows removal of document references from a repository.  Note that the removal may be logical rather than physical. Some systems may have rules for who can remove document references and under what circumstances.")
  * resource[+]
    * type = #Provenance
    * insert Interaction(#SHOULD, #create, "Allows submitting a Provenance record associated with a particular [[QuestionnaireResponse]].")
   // * insert Interaction(#SHOULD, #transaction, "Allows submission of a [[QuestionnaireResponse]] together with [[Provenance]] and other supporting resources as a single unit of work.")
  * interaction
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
      * valueCode = #SHOULD
    * code = #transaction
    * documentation = "Allows submission of a [[QuestionnaireResponse]] together with [[Provenance]] and other supporting resources as a single unit of work."