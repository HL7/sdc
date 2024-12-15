Extension: ItemMedia
Id: sdc-questionnaire-itemMedia
Title: "Item Media"
Description: "Media to render/make available as an accompaniment to the question being asked, for example - an image, video or audio clip.  This does not replace the need for item.text.  The attachment.text SHOULD be present as the alternative/accessibility text for systems unable to expose the media and users unable to consume it.  Media.contentType SHALL be present.  When included in a QuestionnaireResponse it SHALL be the same as the media for the same item in the Questionnaire."
* ^status = #active
* ^purpose = "Need to be able to provide a visual representation of the question being asked."
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "QuestionnaireResponse.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . 0..1
* . ^short = "Media to display"
* . ^definition = "Media to render/make available as an accompaniment to the question being asked"
* url only uri
* value[x] only Attachment