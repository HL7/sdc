Profile: SDCQuestionnaireCommon
Parent: Questionnaire
Id: sdc-questionnairecommon
Title: "SDC Questionnaire Common Elements"
Description: "Defines common elements for all SDC Questionnaires (regular or adaptive)."
* ^status = #active
* ^abstract = true
* obeys cnl-0 and sdc-2 and sdc-3
//To do: Fix the hard-coding of the indexes on the constraints to apply the best-practice extension.
* . ^constraint[9].extension[$best-practice].valueBoolean = true
* extension contains
//    $preferredTerminologyServer named terminologyServer 0..* and
    $questionnaire-versionAlgorithm named versionAlgorithm 0..1 MS and
    $questionnaire-copyrightLabel named copyrightLabel 0..1
* url
  * obeys cnl-1
* status MS
* title MS
* item
  * obeys sdc-1 and que-1a and que-1b and que-1c and que-14
  * extension contains 
    $questionnaire-hidden named hidden 0..1 MS and
//    $preferredTerminologyServer named terminologyServer 0..* and
    $questionnaire-answerConstraint named answerConstraint 0..1
  * linkId MS
    * obeys que-15
  * prefix MS
  * type MS
    * ^comment = "Time is handled using \"string\".  File is handled using Attachment.  (Content can be sent as a contained binary)."
  * required MS
  * repeats MS
    * ^definition = "An indication, if true, that a QuestionnaireResponse for this item may include multiple answers associated with a single instance of this item (for question-type items) or multiple repetitions of the item (for group-type items)"
  * readOnly MS
  * answerValueSet only canonical
    * ^type.targetProfile = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-valueset"
  * answerOption MS
    * value[x] MS
  * initial MS
    * value[x] MS
  * item MS

Invariant: sdc-1
Description: "An item cannot have an answerExpression if answerOption or answerValueSet is already present."
Severity: #error
Expression: "extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression').empty().not() implies (answerOption.empty() and answerValueSet.empty())"
XPath: "f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'] and (not(f:answerOption) and not(f:answerValueSet))"

Invariant: sdc-2
Description: "If version is present, versionAlgorithm must be present."
Severity: #error
Expression: "version.exists() implies extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]').exists()"
XPath: "not(exists(f:version)) or exists(f:extension[@url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]'])"

Invariant: sdc-3
Description: "Semver is the preferred version algorithm - package machinery doesn't work well with artifacts using alternate versioning schemes"
Severity: #warning
Expression: "extension.where(url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]').all(value.ofType(Coding).where(system='http://hl7.org/fhir/version-algorithm' and code='semver').exists())"
XPath: "not(f:extension[@url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]' and not(exists(f:valueCoding[f:system/@value='http://hl7.org/fhir/version-algorithm' and f:code/@value='semver'])))"

Invariant: que-1a
Description: "Group items must have nested items when Questionanire is complete"
Severity: #error
Expression: "(type='group' and %resource.status='complete') implies item.empty().not()"
XPath: "not(f:type/@value='group' and ancestor::f:Questionnaire/f:status/@value='complete') or exists(f:item)"

Invariant: cnl-0
Description: "Name should be usable as an identifier for the module by machine processing applications such as code generation"
Severity: #warning
Expression: "name.exists() implies name.matches('^[A-Z]([A-Za-z0-9_]){1,254}$')"
XPath: "not(f:name) or matches(f:name/@value, '^[A-Z]([A-Za-z0-9_]){1,254}$')"

Invariant: cnl-1
Description: "Warning	Questionnaire.url	URL should not contain | or # - these characters make processing canonical references problematic"
Severity: #warning
Expression: "exists() implies matches('^[^|# ]+$')"
XPath: "not(@value) or matches(@value, '^[^|# ]+$')"

Invariant: que-1b
Description: "Groups should have items"
Severity: #warning
Expression: "type='group' implies item.empty().not()"
XPath: "not(f:type='group') or exists(f:item)"

Invariant: que-1c
Description: "Display items cannot have child items"
Severity: #error
Expression: "type='display' implies item.empty()"
XPath: "not(f:type/@value='display') or not(exists(f:item))"

Invariant: que-14
Description: "Can only have answerConstraint if answerOption, answerValueSet, or answerExpression are present. (This is a warning because other extensions may serve the same purpose)"
Severity: #warning
Expression: "extension('http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.item.answerConstraint').exists() implies answerOption.exists() or answerValueSet.exists() or extension('http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression').exists()"
XPath: "not(exists(f:extension[@url='http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.item.answerConstraint'])) or exists(f:answerOption) or exists(f:answerValueSet) or exists(f:extension[@url='http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression'])"

Invariant: que-15
Description: "Link ids must be 255 characters or less"
Severity: #error
Expression: "$this.length() <= 255"
XPath: "string-length(@value) <= 255"
