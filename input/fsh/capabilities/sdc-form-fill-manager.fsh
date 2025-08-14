Instance: sdc-form-fill-manager
InstanceOf: CapabilityStatement
Title: "SDC Form Fill Manager"
Description: "SDC Repository for form retrieval"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-fill-manager"
* name = "SDCFormFillManager"
* title = "SDC Form Fill Manager"
* status = #active
* date = "2014-07-06"
* description = "This profile defines the expected capabilities of the *SDC Form Fill Manager* role when conforming to this implementation guide.  This role is responsible for maintaining a repository of form definitions for retrieval by form fillers possibly also supporting pre-population of form data."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #xml
* format[+] = #json
* rest
  * mode = #server
  * documentation = "The primary focus of the repository is providing access to [[[Questionnaire]]]s.  However, [[[ValueSet]]]s, [[[CodeSystem]]]s, [[[Library]]]s, [[[ConceptMap]]]s and other resources are also relevant in their support of Questionnaire functionality.  Some forms will opt to have some or all of these additional resources managed as 'contained' resources, meaning there won't be a need for them to be independently managed on the Form Fill Manager.  However, systems should support resource re-use across forms, meaning that support for maintenance of these ancillary resources is still helpful.  (Version-specific referencing can be used to avoid referenced resources from changing independent of the referencing [[[Questionnaire]]].)"
  * security.description = "Implementations must meet the [general security requirements](security.html) documented in this implementation guide.html."
  * insert SDCResource(Questionnaire, #SHALL, sdc-questionnaire, [[Form mamagers are responsible for handling forms.]])
    * insert Interaction(#SHALL, #search-type, "Allows a user to search for existing forms")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a detailed Questionnaire if search only returns summary")
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
    * insert Operation(#SHOULD, "next-question", $next-question, [[Needed for adaptive forms]])
    * insert Operation(#MAY, "populate", $populate, [[Usefulness depends on whether fillers tend to perform population themselves]])
  * insert SDCResource(ValueSet, #SHALL, sdc-valueset, [[Needed if Questionnaire valuesets will be stored on the form server as opposed to a separate terminology service.]])
    * insert Interaction(#SHALL, #search-type, "Allows discovery of existing value sets for use in authoring questionnaires")
    * insert Interaction(#MAY, #read, "Needed if a server's default search behavior doesn't return the full resource")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
    * insert Operation(#SHOULD, "expand", $expand, [[Needed if expansion isn't handled locally or via independent terminology servers]])
    * insert Operation(#SHOULD, "validate code", $validate-code, [[Needed if expansion isn't handled locally or via independent terminology servers]])
  * insert SDCResource(CodeSystem, #SHOULD, sdc-codesystem, [[Needed if Questionnaire codes will be stored on the form server as opposed to a separate terminology service.]])
    * insert Interaction(#SHALL, #search-type, "Allows discovery of existing code systems for use in authoring questionnaires")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific code system referenced within a questionnaire")
    * insert SearchParam(#SHALL, "url", #uri,  http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
  * insert SDCResource(Library, #SHOULD, sdc-library, [[Needed for certain types of population and extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve library based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/Library-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/Library-version)
  * insert CoreResource(StructureMap, #MAY, [[Needed if performing map-based population or extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve structure map based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
  * insert CoreResource(StructureDefinition, #MAY, [[Needed if performing map-based population or map or definition-based extraction]])
    * insert Interaction(#MAY, #read, "Useful if a server doesn't return full data in a search")
    * insert Interaction(#SHALL, #search-type, "Needed to retrieve structure definition based on canonical reference")
    * insert SearchParam(#SHALL, "url", #uri, http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHALL, "version", #token, http://hl7.org/fhir/SearchParameter/conformance-version)
  * insert CoreResource(ConceptMap, #MAY, [[May be needed for code conversion during population or extraction]])
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
