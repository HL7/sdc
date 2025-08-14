Instance: sdc-form-response-manager
InstanceOf: CapabilityStatement
Title: "SDC Form Response Manager"
Description: "SDC Form response management system"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-response-manager"
* name = "SDCFormResponseManager"
* title = "SDC Form Response Manager"
* status = #active
* date = "2014-07-06"
* description = "This profile defines the expected capabilities of the *SDC Form Response Manager* role when conforming to this implementation guide.  This role is responsible for providing read/write access to QuestionnaireResponses.  This is typically to support light-weight clients that want to be able to complete forms but do not have local storage to save work in progress."
* kind = #requirements
* instantiates = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-manager"
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest
  * mode = #server
  * security.description = "Implementations must meet the [general security requirements](security.html) documented in this implementation guide.html.  Systems may wish to ensure that QuestionnaireResponse instances are only accessible to the user (or at least the organization) who was responsible for creating them."
  * insert SDCResource(QuestionnaireResponse, #SHALL, sdc-questionnaireresponse, [[This allows QuestionnaireResponses to be created\, updated\, and retrieved.  Note that storing a QuestionnaireResponse does not imply any execution of behavior on the basis of the stored data.]])
    * insert Interaction(#SHALL, #create, "This creates an initial version of a QuestionnaireResponse - a completed form for a particular subject as of a particular point-in-time")
    * insert Interaction(#SHALL, #update, "This allows revision of a QuestionnaireResponse.  Typically this will happen while the response is still 'in-progress'.  If it occurs after the response has been marked as 'final'\, the status should change to 'amended'.  Updates can also be used to change the status to 'entered-in-error' or other values.  Servers may choose to enforce business rules around what state transitions are supported and for which users.")
    * insert Interaction(#SHOULD, #delete, "This removes a previously submitted QuestionnaireResponse.  In addition to (or instead of\) supporting direct requests for deletion\, some servers may automatically purge QuestionnaireResponses that have been in existence and unmodified for a period of time.  Deletions may not be a physical delete and it may still be possible to access older versions of a deleted response")
    * insert Interaction(#SHALL, #search-type, "This allows a user to find previously created responses - whether created by themselves or others.  For thin clients without persistence\, this feature is essential to allow them to find a draft of a previously created response")
    * insert Interaction(#SHALL, #read, "This allows a user to retrieve a previously stored response by id.  (Some thin clients may have limited persistence -e.g. cookies - that could be used to store an id and later retrieve a work-in-progress questionnaire response")
    * insert Interaction(#MAY, #history-instance, "This allows a user to look at previous versions of a response.  It supports identifying what changes were made and potentially retrieving an older version to use as a starting point in the event that data has accidentally been removed or changed")
    * insert Operation(#MAY, "extract", $extract, [[This is needed if extraction isn't handled locally]])
    * insert SearchParam(#SHALL, "questionnaire", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-questionnaire)
    * insert SearchParam(#SHALL, "status", #token, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-status)
    * insert SearchParam(#SHALL, "subject", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-subject)
    * insert SearchParam(#SHALL, "authored", #date, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-authored)
    * insert SearchParam(#SHALL, "author", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-author)
    * insert SearchParam(#SHOULD, "identifier", #token, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-identifier)
    * insert SearchParam(#SHOULD, "based-on", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-based-on)
    * insert SearchParam(#SHOULD, "encounter", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-encounter)
    * insert SearchParam(#SHOULD, "part-of", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-part-of)
    * insert SearchParam(#MAY, "source", #reference, http://hl7.org/fhir/SearchParameter/QuestionnaireResponse-source)