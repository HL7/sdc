Instance: sdc-form-filler
InstanceOf: CapabilityStatement
Title: "SDC Form Filler"
Description: "SDC System for completing forms"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-filler"
* name = "SDCFormFiller"
* title = "SDC Form Filler"
* status = #active
* date = "2014-07-06"
* description = "This profile defines the expected capabilities of the *SDC Form Filler*' role when conforming to this implementation guide.  This role is responsible for retrieving pre-defined forms, requesting pre-population of forms and/or auto-populating forms, guiding the user through verifying populated data and submitting completed or partially-completed forms.&#xa;&#xa;Note that Form Fillers may also take on the role of [Form Archiver](CapabilityStatement-sdc-form-archiver.html) if they have a requirement to retain the completed version of a form (and potentially the source data that was used to complete it).&#xa;&#xa;In addition to the features described here, Form Fillers **SHOULD** also support search_type on all resources that might need to be looked up either for attachments or as References.  The expectations for supported resources, profiles, and relevant search parameters will typically come from national 'base' or 'core' IGs."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest
  * mode = #client
  * documentation = "The [[[Questionnaire]]], [[[ValueSet]]] and [[[CodeSystem]]] resources are retrieved to allow the system to guide the user through the entry process.  The [[[QuestionnaireResponse]]] resource is used to record the populated form.  Finally, the [[Library]], [[StructureMap]], [[StructureDefinition]], and [[ConceptMap]] resources are available to assist with population.&#xa;&#xa;Note: Form Fillers that support the 'populate' operation will need to be capable of consuming and rendering a partially completed QuestionnaireResponse in the same manner as if they had retrieved such a QuestionnaireResponse from a [Form Response Manager](CapabilityStatement-sdc-form-response-manager.html)"
  * security.description = "Implementations must meet the [general security requirements](security.html) documented in this implementation guide.html."
  * insert SDCResource(QuestionnaireResponse, #SHALL, sdc-questionnaireresponse, [[The primary focus of a form filler is creating and managing QuestionnaireResponses.]])
    * insert Interaction(#SHALL, #search-type, "Allows a user to search for existing completed or partially-completed forms.  Generally used to find partially-completed forms for update.")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific QuestionnaireResponse by id.")
    * insert Interaction(#SHALL, #create, "Allows recording a completed or partially-completed form")
    * insert Interaction(#SHALL, #update, "Allows updating an existing completed or partially-completed form.  (Systems may place rules on who can update forms and under what circumstances.\)")
    * insert Interaction(#SHALL, #delete, "Allows removal of a completed form from a repository.  Note that the removal may be logical rather than physical.  Some systems may have rules for who can remove a completed form and under what circumstances.")
    * insert Interaction(#SHOULD, #history-instance, "Allows review of prior versions of an answer set - allows reversion to previously recorded versions")
    * insert Operation(#MAY, "extract", $extract, [[This is only necessary if the form filler doesn't handle all needed extraction capabilities locally and extraction is actually peformed by the form filler rather than a downstream process]])
  * insert SDCResource(Questionnaire, #SHOULD, sdc-questionnaire, [[If not supported\, then forms will need to be made accessible through workflow]])
    * insert Interaction(#SHOULD, #search-type, "Allows discovery of existing questionnaires to be completed.  Without this\, forms need to be explicitly passed in as part of workflow.")
    * insert Interaction(#MAY, #read, "Allows retrieval of a specific questionnaire by id.  Allows systems to maintain a 'favorites' list of forms and retrieve them by id.")
    * insert Interaction(#MAY, #history-instance, "Allows review of changes made to a questionnaire over time.  Of interest to some systems\, but probably not most.")
    * insert Interaction(#MAY, #vread, "Allows retrieval of a historical version of a questionnaire.  Most systems will make use of the current version only.")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/Questionnaire-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/Questionnaire-version)
    * insert SearchParam(#SHALL, "status", #token, http://hl7.org/fhir/SearchParameter/Questionnaire-status)
    * insert SearchParam(#SHALL, "experimental", #token, http://hl7.org/fhir/uv/sdc/SearchParameter/canonical-experimental)
    * insert SearchParam(#SHOULD, "context-type-quantity", #composite, http://hl7.org/fhir/SearchParameter/Questionnaire-context-type-quantity)
    * insert SearchParam(#SHOULD, "context-type-value", #composite, http://hl7.org/fhir/SearchParameter/Questionnaire-context-type-value)
    * insert SearchParam(#SHOULD, "date", #date, http://hl7.org/fhir/SearchParameter/Questionnaire-date)
    * insert SearchParam(#SHOULD, "description", #string, http://hl7.org/fhir/SearchParameter/Questionnaire-description)
    * insert SearchParam(#SHOULD, "identifier", #token, http://hl7.org/fhir/SearchParameter/Questionnaire-identifier)
    * insert SearchParam(#SHOULD, "publisher", #string, http://hl7.org/fhir/SearchParameter/Questionnaire-publisher)
    * insert SearchParam(#SHOULD, "questionnaire-code", #token, http://hl7.org/fhir/uv/sdc/SearchParameter/Questionnaire-questionnaire-code)
    * insert SearchParam(#SHOULD, "subject-type", #token, http://hl7.org/fhir/uv/sdc/SearchParameter/Questionnaire-subject-type)
    * insert SearchParam(#SHOULD, "title", #string, http://hl7.org/fhir/SearchParameter/Questionnaire-title)
    * insert SearchParam(#SHOULD, "effective", #date, http://hl7.org/fhir/SearchParameter/Questionnaire-effective)
    * insert SearchParam(#MAY, "jurisdiction", #token,http://hl7.org/fhir/SearchParameter/Questionnaire-jurisdiction)
    * insert SearchParam(#MAY, "assemble-expectation", #token, http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-assemble-expectation)
    * insert Operation(#SHOULD, "next-question", $next-question, [[This is only necessary if the form filler doesn't handle all needed population capabilities locally]])
    * insert Operation(#SHOULD, "populate", $populate, [[This is only necessary if the form filler doesn't handle all needed population capabilities locally]])
// item-code, definition, assemble-??, combo-code
  * insert SDCResource(ValueSet, #SHALL, sdc-valueset, [[Needed to support simple value sets that might not be known to the terminology server or for local expansion and validation]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve value set based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
    * insert Operation(#SHOULD, "expand", $expand, [[Needed to determine allowed code choices.  **SHALL** be supported unless handled locally]])
    * insert Operation(#SHOULD, "validate code", $validate-code, [[Needed when populating from existing data (to confim the code is part of the value set).  **SHOULD** be supported unless handled locally]])
  * insert SDCResource(CodeSystem, #MAY, sdc-codesystem, [[**SHALL** be supported if doing any terminology expansions or validation locally]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve code system based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
  * insert SDCResource(Library, #SHOULD, sdc-library, [[Needed for certain types of population and extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve library based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/Library-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/Library-version)
  * insert CoreResource(StructureMap, #SHOULD, [[Needed if performing map-based population or extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve structure map based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
  * insert CoreResource(StructureDefinition, #SHOULD, [[Needed if performing map-based population or map or definition-based extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve structure definition based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
  * insert CoreResource(ConceptMap, #SHOULD, [[May be needed for code conversion during population or extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve concept map based on various criteria")
    * insert SearchParam(#SHALL, "experimental", #token, http://hl7.org/fhir/uv/sdc/SearchParameter/canonical-experimental)
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
    * insert SearchParam(#SHALL, "status", #token, http://hl7.org/fhir/SearchParameter/conformance-status)
    * insert SearchParam(#SHALL, "source-system", #uri, http://hl7.org/fhir/SearchParameter/ConceptMap-source-system)
    * insert SearchParam(#SHALL, "target-system", #uri, http://hl7.org/fhir/SearchParameter/ConceptMap-target-system)
    * insert SearchParam(#SHOULD, "source-uri", #reference, http://hl7.org/fhir/SearchParameter/ConceptMap-source-uri)
    * insert SearchParam(#SHOULD, "target-uri", #reference, http://hl7.org/fhir/SearchParameter/ConceptMap-target-uri)
