CodeSystem: QuestionnaireAnswerConstraintCodes
Id: questionnaire-answer-constraint
Title: "Questionnaire answer constraint codes"
Description: "Codes that describe the types of constraints possible on a question item that has a list of permitted answers [Note: This is a clone of QuestionnaireAnswerConstraint codesystem from R5 (adopting R5 capability)]"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.1.0"
* ^version = "4.6.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #optionsOnly "Options only" "Only values listed as answerOption or in the expansion of the answerValueSet are permitted"
* #optionsOrType "Options or 'type'" "In addition to the values listed as answerOption or in the expansion of the answerValueSet, any other values that correspond to the specified item.type are permitted"
* #optionsOrString "Options or string" "In addition to the values listed as answerOption or in the expansion of the answerValueSet, free-text strings are permitted.  Answers will have a type of 'string'."