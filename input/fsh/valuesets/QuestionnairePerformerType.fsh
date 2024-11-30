ValueSet: QuestionnairePerformerType
Id: performerType
Title: "Questionnaire Performer Type"
Description: "List of resource types that can record answers to a Questionnaire."
* ^status = #active
* ^experimental = true
* ResourceType#Patient "Patient"
* ResourceType#Practitioner "Practitioner"
* ResourceType#RelatedPerson "RelatedPerson"