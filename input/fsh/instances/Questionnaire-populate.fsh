Instance: Questionnaire-populate
InstanceOf: OperationDefinition
Title: "Populate Questionnaire"
Description: "Generates a QuestionnaireResponse from a Questionnaire, possibly with data partially populated"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populate"
* name = "SDCPopulateQuestionnaire"
* title = "Populate Questionnaire"
* status = #draft
* kind = #operation
* date = "2018-08-19T21:48:56+10:00"
* publisher = "HL7 International - FHIR Infrastructure Work Group"
* contact.telecom
  * system = #other
  * value = "http://www.hl7.org/Special/committees/fiwg"
* description = "Generates a [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html) instance  based on a specified [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html), filling in answers to questions where possible based on information provided as part of the operation or already known by the server about the subject of the [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html).  If the operation is not called at the instance level, one and only one of the identifier, questionnaire or questionnaireRef `in` parameters must be provided. If called at the instance level, these parameters will be ignored.  The response will contain a [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html) instance based on the specified [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html) and/or an [OperationOutcome](http://hl7.org/fhir/R4/operationoutcome.html) resource with errors or warnings.  The [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html) instance will be populated with an unanswered set of questions following the group and question structure of the specified [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html).  If  *content* parameters were specified or the *local* parameter was set to true, some of the questions may have answers filled in as well.  In the case of repeating questions or groups, typically only one repetition will be provided unless answer values exist that would support populating multiple repetitions.  Population of the [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html) with appropriate data is dependent on the questions and/or groups in the [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html) having metadata that allows the server to recognize the questions.  Guidance on mechanisms to perform population can be found [here](populate.html).  Regardless of the mechanism used to link the questions in a questionnaire to a \"known\" mappable concept, solutions using this operation should ensure that the details of the question and associated linkage element are sufficiently similar as to safely allow auto-population; i.e. the question text and context must be sufficiently the same, the value set for the question must fall within the value set for the mapped element, the data types must be the same or convertible, etc."
* code = #populate
* comment = "While it is theoretically possible for a [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html) instance to be completely auto-populated and submitted without human review, the intention of this transaction is merely to reduce redundant data entry.  A client **SHOULD** ensure that a human submitter has an opportunity to review the auto-populated answers to confirm correctness as well as to complete or expand on information provided by the auto-population process.  When creating an \"empty\" questionnaire, the general algorithm is to create a QuestionnaireResponse with one item for every item in the source Questionnaire, including items with \"enableWhen\", \"display\" items, etc.  If a question has a default, the default answer should be populated.  And the QuestionnaireResponse should point back to the originating Questionnaire.  Repeating items will typically only include a single repetition.  Other extensions and/or elements may also be populated if the system is aware of appropriate values.  Complex form designs with conditional logic or tight constraints on cardinalities may be challenging to auto-populate.  A server MAY choose to traverse the questionnaire as if it were a human respondent, answering only those questions that are enabled based on previously answered questions.  However, doing so may result in minimal population.  Alternatively, systems may choose to populate all known answers, independent of dependencies and other constraints.  This may cause questions to be answered that should not be answered.  It will be up to the client to appropriately prune the final populated questionnaire once human review has taken place.  Invoking this operation with the `content` parameter may involve the disclosure of personally identifiable healthcare information to the system which is performing the population process.  No such disclosures should be made unless the system on which the operation is being invoked is a \"trusted\" system and appropriate agreements are in place to protect the confidentiality of any information shared with that system."
* resource = #Questionnaire
* system = false
* type = true
* instance = true
* parameter[0]
  * insert parameter(#identifier, #in, 0, "1", #Identifier, "A logical questionnaire identifier (i.e. `Questionnaire.identifier`\). The server must know the questionnaire or be able to retrieve it from other known repositories.")
* parameter[+]
  * insert parameter(#canonical, #in, 0, "1", #uri, "The canonical identifier for the questionnaire (optionally version-specific\).")
* parameter[+]
  * insert parameter(#questionnaire, #in, 0, "1", #Questionnaire, "The [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html\) is provided directly as part of the request. Servers may choose not to accept questionnaires in this fashion")
* parameter[+]
  * insert parameter(#questionnaireRef, #in, 0, "1", #Reference, "The [Questionnaire](http://hl7.org/fhir/R4/questionnaire.html\) is provided as a resource reference. Servers may choose not to accept questionnaires in this fashion or may fail if they cannot resolve or access the referenced questionnaire.")
  * targetProfile = "http://hl7.org/fhir/StructureDefinition/Questionnaire"
* parameter[+]
  * insert parameter(#subject, #in, 1, "1", #Reference, "The resource that is to be the *QuestionnaireResponse.subject*. The [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html\) instance will reference the provided subject.  In addition\, if the *local* parameter is set to true\, server information about the specified subject will be used to populate the instance.")
* parameter[+]
  * insert parameterComplex(#context, #in, 0, "*", "Resources containing information to be used to help populate the [QuestionnaireResponse](http://hl7.org/fhir/R4/questionnaireresponse.html\).  These will typically be FHIR resources\, though alternative population mechanisms might allow consumption of binaries containing FHIR documents\, CDA documents or other source materials.  Servers might not support all possible source materials and may ignore materials they do not recognize.  (They MAY provide warnings if ignoring submitted resources.\)")
  * part[0]
    * insert parameter(#name, #in, 0, "*", #string, "The name of the launchContext or root Questionnaire variable the passed content should be used as for population purposes.  The name SHALL correspond to a launchContext or variable delared at the root of the Questionnaire.")
  * part[+]
    * insert parameter(#content, #in, 0, "*", #Reference, "The actual resource (or resources\) to use as the value of the launchContext or variable.")
* parameter[+]
  * insert parameter(#local, #in, 0, "1", #boolean,"If specified and set to `true` (and the server is capable\)\, the server should use what resources and other knowledge it has about the referenced subject when pre-populating answers to questions.")
* parameter[+]
  * insert parameter(#launchContext, #in, 0, "1", #Extension, "Resources that provide context for form processing logic (pre-population\) when creating/displaying/editing a QuestionnaireResponse.")
* parameter[+]
  * insert parameter(#response, #out, 1, "1", #QuestionnaireResponse, "The partially (or fully\)-populated set of answers for the specified Questionnaire")
* parameter[+]
  * insert parameter(#issues, #out, 0, "1", #OperationOutcome, "A list of hints and warnings about problems encountered while populating the questionnaire. These might be show to the user as an advisory note. Note: if the questionnaire cannot be populated at all\, then the operation should fail\, and an OperationOutcome is returned directly with the failure\, rather than using this parameter")
