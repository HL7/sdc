ValueSet: QuestionnairePerformerType
Id: performerType
Title: "Questionnaire Performer Type"
Description: "List of resource types that can record answers to a Questionnaire."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = true
* ResourceType#Patient "Patient"
* ResourceType#Practitioner "Practitioner"
* ResourceType#RelatedPerson "RelatedPerson"