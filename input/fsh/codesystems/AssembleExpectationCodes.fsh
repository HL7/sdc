CodeSystem: AssembleExpectationCodes
Id: assemble-expectation
Title: "Assemble Expectation Codes"
Description: "A set of codes that reflect the relevance of the Questionnaire to the $assemble operation - specifically, whether the form needs to be assembled, whether the form can be referenced as a subQuestionnaire and whether the form can be used as the 'root' of a QuestionnaireResponse."
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* insert propertyConcept(#notSelectable, "http://hl7.org/fhir/concept-properties#notSelectable",#boolean,"Indicates that the concept is abstract.  It can be used for searching\, but cannot appear in instances")
* insert propertyConcept(#parent, "http://hl7.org/fhir/concept-properties#parent",#code,"Indicates a parent concept that can subsume this concept")
* #assembly "Assembly needed" "An abstract code that subsumes all codes for Questionnaires that require assembly prior to use"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
* #independent "No assembly needed" "An abstract code that subsumes all codes for Questionnaires that DO NOT require assembly prior to use"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
* #root "Root Questionnaires" "An abstract code that subsumes all codes for Questionnaires that can act as the root for a QuestionnaireResponse"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
* #child "Child Questionnaires" "An abstract code that subsumes all codes for Questionnaires that can act as subQuestionnaires"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = true
* #assemble-root-or-child "Assembly-required root or child" "This Questionnaire can be used as the root of an assembly operation or as a child in an assembly process.  In either case, assembly is required before use."
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = false
  * ^property[+].code = #parent
  * ^property[=].valueCode = #assembly
  * ^property[+].code = #parent
  * ^property[=].valueCode = #root
  * ^property[+].code = #parent
  * ^property[=].valueCode = #child
* #assemble-root "Assembly-required root" "This Questionnaire can be used as the root of an assembly operation, but requires assembly before use.  It is not intended for use as a child module."
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = false
  * ^property[+].code = #parent
  * ^property[=].valueCode = #assembly
  * ^property[+].code = #parent
  * ^property[=].valueCode = #root
* #assemble-child "Assembly required child" "This Questionnaire is intended to be used as an assembly operation but cannot be used as a root - it must always be a child module"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = false
  * ^property[+].code = #parent
  * ^property[=].valueCode = #assembly
  * ^property[+].code = #parent
  * ^property[=].valueCode = #child
* #independent-root-or-child "Assembled root-or-child" "This Questionnaire can be used without assembly and be used directly, but is also safe for use as a child module"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = false
  * ^property[+].code = #parent
  * ^property[=].valueCode = #independent
  * ^property[+].code = #parent
  * ^property[=].valueCode = #root
  * ^property[+].code = #parent
  * ^property[=].valueCode = #child
* #independent-child "Assembled child" "This Questionnaire can be used without assembly, is also safe for use as a child module and is only intended for use as a child"
  * ^property[+].code = #notSelectable
  * ^property[=].valueBoolean = false
  * ^property[+].code = #parent
  * ^property[=].valueCode = #independent
  * ^property[+].code = #parent
  * ^property[=].valueCode = #child

RuleSet: propertyConcept(code, uri, type, description) 
* ^property[+].code = {code}
* ^property[=].uri = {uri}
* ^property[=].type = {type}
* ^property[=].description = {description}

RuleSet: propertyCode(code, valueCode) 
* ^property[+].code = {code}
* ^property[=].valueCode = {valueCode}

RuleSet: propertyBoolean(code, valueBoolean) 
* ^property[+].code = {code}
* ^property[=].valueBoolean = {valueBoolean}
