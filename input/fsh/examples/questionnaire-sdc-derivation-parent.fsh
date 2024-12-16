Instance: sdc-derivation-parent
InstanceOf: SDCBaseQuestionnaire
Title: "SDC Derivation Parent"
Description: "Example of a parent questionnaire that sets derivation expectations"
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* url = "http://build.fhir.org/ig/HL7/sdc/Questionnaire/sdc-derivation-parent"
* name = "SDCDerivationParent"
* status = #active
// Todo: Create Ruleset for item (when optional argument functionality is released)
* item[+]
  * linkId = "1"
  * text = "What is your family name? (required)"
  * type = #string
  * required = true
* item[+]
  * linkId = "2"
  * text = "What is your first name? (optional)"
  * type = #string
* item[+]
  * extension[OptionalDisplayExtension].valueBoolean = true
  * linkId = "3"
  * text = "What are your middle names? (optional, removable)"
  * type = #string
