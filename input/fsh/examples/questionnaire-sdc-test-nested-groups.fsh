Instance: questionnaire-sdc-test-nested-groups
InstanceOf: SDCQuestionnaireBehave
Title: "SDC Test Form - Repeats"
Description: "A test form with repeatable nested groups."
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-nested-groups"
* name = "NestedGroups"
* title = "Repeatable group test"
* status = #active
* experimental = true
* description = "A Test form with repeatable nested groups"
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item
  * linkId = "a7837ce4-6ba4-4d01-913c-d20a6685556b"
  * text = "Repeatable group test"
  * type = #group
  * item[+]
    * linkId = "a9f40adc-f194-4efb-b4f7-9396d0ca8e49"
    * text = "First question"
    * type = #string
  * item[+]
    * linkId = "ba91450b-6e67-40dc-8629-0f1b60577774"
    * text = "Repeatable group 1"
    * type = #group
    * repeats = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
        * valueCodeableConcept = $questionnaire-item-control#autocomplete
      * linkId = "34b78239-1df2-49c5-a1ab-8f5691c7ede0"
      * text = "Service type"
      * type = #choice
      * repeats = false
      * answerValueSet = "http://terminology.hl7.org/ValueSet/service-type"
    * item[+]
      * linkId = "b7e29109-f729-4359-aa29-6c9e7c7b2318"
      * text = "Text box"
      * type = #string
    * item[+]
      * linkId = "68ca912397a145bd9e9f265702b5cf45"
      * text = "Repeatable group 2"
      * type = #group
      * repeats = true
      * item
        * linkId = "b7e29109-f729-4359-aa29-6c9e7c7b2328"
        * text = "Text box - group 2"
        * type = #string