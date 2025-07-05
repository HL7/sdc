Profile: SDCParametersQuestionnairePopulateLinkOut
Parent: Parameters
Id: parameters-questionnaire-populate-link-out
Title: "Populate-link operation output parameters"
Description: "Profile used to validate the parameters that are the output of the [$populate-link](OperationDefinition-Questionnaire-populatelink.html) questionnaire operation"
* ^status = #retired
* ^extension[$standard-status].valueCode = #deprecated
* ^extension[$standard-status].valueCode.extension[$standard-status-reason].valueMarkdown = "The $populate-html and $populate-link operations are deprecated due to the lack of known real-world implementations since their introduction, and the adaptive questionnaires possibly having been used instead."
* parameter ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "name"
  * ^slicing.rules = #open
* parameter contains link 1..1 and
  issues 0..1
* parameter[link]
  * name = "link" (exactly)
  * value[x] 1..
  * value[x] only uri
  * resource ..0
  * part ..0
* parameter[issues]
  * name = "issues" (exactly)
  * value[x] ..0
  * resource 1..1
  * resource only OperationOutcome
  * part ..0
