Instance: sdc-derivation-child
InstanceOf: SDCBaseQuestionnaire
Title: "SDC Derivation Child"
Description: "Example of a child questionnaire based on a parent"
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* url = "http://build.fhir.org/ig/HL7/sdc/Questionnaire/sdc-derivation-child"
* name = "SDCDerivationChild"
* status = #active
* derivedFrom = "http://build.fhir.org/ig/HL7/sdc/Questionnaire/sdc-derivation-parent"
  * extension[+]
    * url = $questionnaire-derivationType
    * valueCoding = $derivationType#compliesWith
* item[+]
  * linkId = "1"
  * text = "What is your family name? (required)"
  * type = #string
  * required = true
* item[+]
  * linkId = "2"
  * text = "What is your first name? (optional)"
  * type = #string
