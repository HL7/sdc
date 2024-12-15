Instance: questionnaire-sdc-test-all-data-types
InstanceOf: SDCBaseQuestionnaire
Title: "SDC Test Form - All Data Types"
Description: "A test form that has one of each data type included, useful in checking compatibility against."
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-all-data-types"
* name = "AllDataTypes"
* title = "Bit of everything"
* status = #active
* experimental = true
* description = "A test form that has one of each data type included, useful when testing"
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb0e8622"
  * text = "Bit of everything - data types"
  * type = #group
  * item[+]
    * linkId = "id-string"
    * text = "string control"
    * type = #string
  * item[+]
    * linkId = "1acf93a7-0890-44cd-be48-542defb35248"
    * definition = "a9e99fcf535a4c08a249c77754d5b07d"
    * text = "This is a display field and should expand to both left and right"
    * type = #display
  * item[+]
    * linkId = "9acf93a7-0890-44cd-be48-542defb35223"
    * text = "this is a string with markdown emphasis"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-markdown"
        * valueMarkdown = "this is a **string** with markdown emphasis"
    * type = #display
  * item[+]
    * linkId = "id-text"
    * text = "text control - string but for expected larger content entered (usually handles multi-line)"
    * type = #text
  * item[+]
    * linkId = "id-boolean"
    * text = "boolean"
    * type = #boolean
  * item[+]
    * linkId = "id-date"
    * text = "date only control"
    * type = #date
  * item[+]
    * linkId = "id-datetime"
    * text = "date and time control"
    * type = #dateTime
  * item[+]
    * linkId = "id-time"
    * text = "time only control"
    * type = #time
  * item[+]
    * linkId = "id-integer"
    * text = "integer"
    * type = #integer
  * item[+]
    * linkId = "id-decimal"
    * text = "decimal"
    * type = #decimal
  * item[+]
    * linkId = "id-attachment"
    * text = "attachment to be included"
    * type = #attachment
  * item[+]
    * linkId = "id-choice"
    * text = "radiobuttons"
    * type = #choice
    * repeats = false
    * answerValueSet = "http://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/866d7924e20711d48c540020182939f7"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#drop-down
    * linkId = "440f8cc6-3ea2-40c2-b03a-d03187131fd3"
    * text = "ddl (Aus states)"
    * type = #choice
    * repeats = false
    * answerValueSet = "https://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/866d7924e20711d48c540020182939f7"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#autocomplete
    * linkId = "06aaa075-86e4-4cf2-a1ef-a86ab10e86e9"
    * text = "autocomplete (countries)"
    * type = #choice
    * repeats = false
    * answerValueSet = "https://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/25b0ec04fd3511d28b3e0020182939f7"
  * item[+]
    * linkId = "EF8E3936-3246-4B3E-A46C-9FDAA5ACB635"
    * text = "open-choice (countries)"
    * type = #open-choice
    * repeats = false
    * answerValueSet = "https://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/25b0ec04fd3511d28b3e0020182939f7"