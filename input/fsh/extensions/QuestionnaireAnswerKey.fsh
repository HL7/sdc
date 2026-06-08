Extension: QuestionnaireAnswerKey
Id: sdc-questionnaire-answerKey
Title: "Questionnaire Answer Key"
Description: "Indicates the official/agreed 'correct' answers for a Questionnaire that represents a test or similar instrument.&#xa;&#xa;The referenced QuestionnaireResponse **SHALL** have a `QuestionnaireResponse.questionnaire` that refers to the referencing Questionnaire.&#xa;&#xa;NOTE: There might need to be restrictions on access to the answerKey QuestionnaireResponse to protect the integrity of the instrument."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* . 0..1
* . ^short = "Official/Agreed 'Correct' Answers"
* . ^definition = "Indicates the official/agreed 'correct' answers for a Questionnaire that represents a test or similar instrument."
* . ^comment = "The referenced QuestionnaireResponse **SHALL** have a `QuestionnaireResponse.questionnaire` that refers to the referencing Questionnaire.&#xa;&#xa;NOTE: There might need to be restrictions on access to the answerKey QuestionnaireResponse to protect the integrity of the instrument."
* url only uri
* value[x] only Reference(QuestionnaireResponse)