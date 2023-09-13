Instance: sdc-form-manager
InstanceOf: CapabilityStatement
Title: "SDC Form Manager"
Description: "SDC Repository for forms"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-manager"
* name = "SDCFormManager"
* title = "SDC Form Manager"
* status = #draft
* date = "2014-07-06"
* publisher = "HL7 International - FHIR Infrastructure"
* contact.telecom
  * system = #other
  * value = "http://wiki.siframework.org/Structured+Data+Capture+Initiative"
* description = "This profile defines the expected capabilities of the ''SDC Form Manager'' role when conforming to the S&I Framework's [[index.html|Structured Data Capture FHIR implementation guide]].  This role is responsible for maintaining a repository of form definitions and also of performing pre-population of form data."
* kind = #requirements
* fhirVersion = #1.0.0
* format[0] = #xml
* format[+] = #json
* rest
  * mode = #server
  * documentation = "The primary focus of the repository is the definition of [[Questionnaire]]s.  However, [[ValueSet]]s and [[CodeSystem]]s must also be supported to allow definition of coded data elements.  Some data elements will choose to maintain value sets as 'contained' resources, meaning the value set exists only in the context of the data element and cannot be referenced or maintained without also updating the data element.  However, systems should support value set re-use across data elements.  (Version-specific referencing can be used to avoid value sets from changing independent of the referencing [[Questionnaire]].)"
  * security.description = "Implementations must meet the general security requirements documented in the [[security.html|SDC implementation guide]]."
  * resource[0]
    * type = #Questionnaire
    * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
    * insert Interaction(#SHALL, #search-type, "Allows a user to search for existing forms")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific known form")
    * insert Interaction(#SHALL, #vread, "Allows retrieval of a specific version of a form")
    * insert Interaction(#SHALL, #history-instance, "Allows review of changes to a form over time")
    * insert Interaction(#SHALL, #create, "Allows defining a new form.  Repositories requiring curation of submitted forms may require all new data elements to have a status of 'draft'.")
    * insert Interaction(#SHALL, #update, "Allows an existing form to be updated.  Servers may choose to prohibit certain types of edits\, instead requiring the creation of a new questionnaire (and potentially the retiring of the existing questionnaire\).  Servers may also limit who can change particular forms.")
    * insert Interaction(#MAY, #delete, "Allows removal of an existing form.  Servers may choose to not support deletions and instead require that the form's status be changed to 'retired'.  Other systems support deletions but limit them to forms meeting certain requirements.  E.g. only forms with a status of draft or only forms that have been retired for at least two years\, etc.")
    * searchInclude = "Questionnaire.group.question.options"
    * insert SearchParam(#SHALL, "code", #token, http://hl7.org/fhir/SearchParameter/Questionnaire-code )
    * insert SearchParam(#SHALL, "context", #token, http://hl7.org/fhir/SearchParameter/Questionnaire-context)
    * insert SearchParam(#SHALL, "date", #date,  http://hl7.org/fhir/SearchParameter/Questionnaire-date)
    * insert SearchParam(#SHALL, "identifier", #token,  http://hl7.org/fhir/SearchParameter/Questionnaire-identifier)
    * insert SearchParam(#SHALL,"publisher", #string,  http://hl7.org/fhir/SearchParameter/Questionnaire-publisher)
    * insert SearchParam(#SHALL, "status", #token,  http://hl7.org/fhir/SearchParameter/Questionnaire-status)
    * insert SearchParam(#SHALL, "title", #string,  http://hl7.org/fhir/SearchParameter/Questionnaire-title)
    * insert SearchParam(#SHALL, "version", #token,  http://hl7.org/fhir/SearchParameter/Questionnaire-version)
    * insert SearchParam(#SHALL, "definition", #token,  http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-definition)
  * resource[+]
    * type = #CodeSystem
    * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-codesystem"
    * insert Interaction(#SHALL, #search-type, "Allows discovery of existing code systems for use in authoring questionnaires")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific code system referenced within a questionnaire")
    * insert Interaction(#SHALL, #vread, "Allows retrieval of a historical version of a code system as referenced within a questionnaire")
    * insert Interaction(#SHALL, #history-instance, "Allows review of changes to a code system over time")
    * insert Interaction(#SHALL, #create, "Allows definition of a new code system used by one or more questionnaires")
    * insert Interaction(#SHALL, #update, "Allows existing code systems referenced by one or more questionnaires to be maintained")
    * insert Interaction(#MAY, #delete, "Not all servers will support deletion of code systems.  Status change to 'retired' will be more typical\, though deletion of draft code systems may keep repositories cleaner.")
    * insert SearchParam(#SHALL, "code", #token,  http://hl7.org/fhir/SearchParameter/CodeSystem-code)
    * insert SearchParam(#SHALL, "date", #date,  http://hl7.org/fhir/SearchParameter/conformance-date)
    * insert SearchParam(#SHALL, "description", #string,  http://hl7.org/fhir/SearchParameter/conformance-description)
    * insert SearchParam(#SHALL, "name", #string,  http://hl7.org/fhir/SearchParameter/conformance-name)
    * insert SearchParam(#SHALL, "status", #token,  http://hl7.org/fhir/SearchParameter/conformance-status)
    * insert SearchParam(#SHALL, "system", #uri,  http://hl7.org/fhir/SearchParameter/CodeSystem-system)
    * insert SearchParam(#SHALL, "url", #uri,  http://hl7.org/fhir/SearchParameter/conformance-url)
    * insert SearchParam(#SHOULD, "assembledFrom", #token, http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-assembledFrom)
    * insert SearchParam(#SHOULD, "assemble-expectation", #token,  http://hl7.org/fhir/uv/sdc/SearchParameter/questionnaire-assemble-expectation)
  * resource[+]
    * type = #ValueSet
    * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"
    * insert Interaction(#SHALL, #search-type, "Allows discovery of existing value sets for use in authoring questionnaires")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific value set referenced within a questionnaire")
    * insert Interaction(#SHALL, #vread, "Allows retrieval of a historical version of a value set as referenced within a questionnaire")
    * insert Interaction(#SHALL, #history-instance, "Allows review of changes to a value set over time")
    * insert Interaction(#SHALL, #create, "Allows definition of a new value set used by one or more questionnaires")
    * insert Interaction(#SHALL, #update, "Allows existing value sets referenced by one or more questionnaires to be maintained")
    * insert Interaction(#MAY, #delete, "Not all servers will support deletion of value sets.  Status change to 'retired' will be more typical\, though deletion of draft value sets may keep repositories cleaner.")
    * searchInclude = "ValueSet.compose.import"
    * insert SearchParam(#SHALL, "date", #date,  http://hl7.org/fhir/SearchParameter/conformance-date)
    * insert SearchParam(#SHALL, "description", #string,  http://hl7.org/fhir/SearchParameter/conformance-description)
    * insert SearchParam(#SHALL, "name", #string,  http://hl7.org/fhir/SearchParameter/conformance-name)
    * insert SearchParam(#SHALL, "reference", #uri,  http://hl7.org/fhir/SearchParameter/ValueSet-reference)
    * insert SearchParam(#SHALL, "status", #token,  http://hl7.org/fhir/SearchParameter/conformance-status)
  * insert Operation(#SHOULD, "expand", $expand)
  * insert Operation(#SHOULD, "validate code", $validate-code)
  * insert Operation(#MAY, "populate", $populate)
  * insert Operation(#MAY, "populatehtml", $populatehtml)
  * insert Operation(#MAY, "populatelink", $populatelink)
  * insert Operation(#MAY, "assemble", $assemble)