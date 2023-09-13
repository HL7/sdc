Extension: ItemAnswerMedia
Id: sdc-questionnaire-itemAnswerMedia
Title: "Item Answer Media"
Description: "Media to render/make available as an accompaniment to a specific answer option, for example - an image, video or audio clip.  This does not replace the need for answer.value[x].  The attachment.text SHOULD be present as the alternative/accessibility text for systems unable to expose the media and users unable to consume it.  Media.contentType SHALL be present.  When included in a QuestionnaireResponse it SHALL be the same as the media for the corresponding answerOption in the Questionnaire."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^purpose = "Need to be able to provide a visual representation of the response to the question being asked."
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item.answerOption"
* ^context[+].type = #element
* ^context[=].expression = "QuestionnaireResponse.item.answer"
* . 0..1
* . ^short = "Answer Media to display"
* . ^definition = "Media to render/make available as an accompaniment to a specific answer option"
* url only uri
* value[x] only Attachment