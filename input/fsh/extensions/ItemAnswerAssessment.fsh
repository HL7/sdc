Extension: ItemAnswerAssessment
Id: sdc-questionnaire-item-answerAssessment
Title: "Questionnaire Response Item Answer Assessment"
Description: "Free-text analysis or comments about a completed QuestionnaireResponse item.  This might be notes captured when evaluating a particular response, information captured by the user recording a subject's responses, or even guidance and rationale around correct vs. incorrect answers in an \"answer key\" QuestionnaireResponse."
* ^status = #active
* ^context[+].type = #element
* ^context[=].expression = "QuestionnaireResponse.item"
* . 0..1
* . ^short = "Answer evaluation"
* . ^definition = "Free-text analysis or comments about a completed QuestionnaireResponse item."
* . ^comment = "This might be notes captured when evaluating a particular response, information captured by the user recording a subjects responses, or even guidance and rationale around correct vs. incorrect answers in an \"answer key\" QuestionnaireResponse."
* url only uri
* value[x] only markdown