Instance: sdc-form-designer
InstanceOf: CapabilityStatement
Title: "SDC Form Designer"
Description: "SDC Form authoring system"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/CapabilityStatement/sdc-form-designer"
* name = "SDCFormDesigner"
* title = "SDC Form Designer"
* status = #draft
* date = "2014-07-06"
* publisher = "HL7 International - FHIR Infrastructure"
* contact.telecom
  * system = #other
  * value = "http://wiki.siframework.org/Structured+Data+Capture+Initiative"
* description = "This profile defines the expected capabilities of the ''SDC Form Designer'' role when conforming to the S&I Framework's [[index.html|Structured Data Capture FHIR implementation guide]].  This role is responsible for defining forms ([[Questionnaire]] resource instances) that include references to [[StructureDefinition]] resouces containing data elements that define the meaning of particular questions and can be used to aid in pre-populating and auto-populating forms."
* kind = #requirements
* fhirVersion = #1.0.0
* format[0] = #xml
* format[+] = #json
* rest
  * mode = #client
  * documentation = "The [[Questionnaire]] resource is used to create and maintain SDC-compliant forms.  The [[StructureDefinition]] resource is used to look-up existing data elements that can be referenced in forms.  Optionally, [[StructureDefinition]]s can also be created and maintained in conjunction with form editing.  This is an optional feature as not all environments will provide support for data element definitions from form authors.  The [[ValueSet]] and [[CodeSystem]] resources are used to capture allowed values for questions that are to be answered from a pre-defined list of values.  For some forms, some or all of the referenced value sets (and possibly code systems) will be handled as 'contained' resources, meaning the value set exists only in the context of the [[Questionnaire]] and cannot be referenced or maintained without also updating the form.  However, systems should support value set and code system re-use across questionnaires.  (Version-specific referencing can be used to avoid value sets from changing independent of the referencing [[Questionnaire]].)"
  * security.description = "Implementations must meet the general security requirements documented in the [[security.html|SDC implementation guide]]."
  * resource[0]
    * type = #Questionnaire
    * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"
    * insert Interaction(#SHALL, #search-type, "Allows discovery of existing questionnaires for editing")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific questionnaire by id")
    * insert Interaction(#SHALL, #create, "Allows submission of a new form design")
    * insert Interaction(#SHALL, #update, "Allows revision of an existing form design.  Note that certain types of updates may necessitate retiring the existing form and defining a new one.")
    * insert Interaction(#SHOULD, #history-instance, "Allows review of changes to questionnaire over time")
    * insert Interaction(#SHOULD, #vread, "Allows retrieval of a historical version of a questionnaire")
    * insert Interaction(#MAY, #delete, "Not all servers will support deletion of forms.  Status change to 'retired' will be more typical\, though deletion of draft profiles may keep repositories cleaner.")
  * resource[+]
    * type = #ValueSet
    * profile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"
    * insert Interaction(#SHALL, #search-type, "Allows discovery of existing value sets for use by questions in a form")
    * insert Interaction(#SHALL, #read, "Allows retrieval of a specific value set by id")
    * insert Interaction(#SHALL, #create, "Allows definition of a new value set used by one or more questions")
    * insert Interaction(#SHALL, #update, "Allows existing value sets referenced by a form to be maintained.  Note that certain types of updates may necessitate retiring the existing value set and defining a new one.")
    * insert Interaction(#SHOULD, #history-instance, "Allows review of changes to a value set over time")
    * insert Interaction(#SHOULD, #vread, "Allows retrieval of a historical version of a value set")
    * insert Interaction(#MAY, #delete, "Not all servers will support deletion of value sets.  Status change to 'retired' will be more typical\, though deletion of draft value sets may keep repositories cleaner.")