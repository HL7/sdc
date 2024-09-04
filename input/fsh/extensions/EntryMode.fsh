Extension: EntryMode
Id: sdc-questionnaire-entryMode
Title: "Entry mode"
Description: """Indicates how questions within the questionnaire should be presented to the end-user.  Specifically, differentiates whether the questions should be displayed one-at-a-time with no ability to adjust prior entries; one-at-a-time or continuously expanding where all questions up to the current question can be looked at and edited, or random, where all questions can be seen and the questions can be filled out in any order desired.

When the entryMode is one that will prohibit the user from going back to edit preceding questions, the form filler must ensure that the answer meets all validation constraints (cardinality, length, etc.) prior to allowing the user to progress to subsequent items.  However, when the entryMode allows editing prior items, then form fillers SHOULD allow a user to move on and answer subsequent items, with the recognition that they'll eventually have to go back to make corrections before the QuestionnaireResponse can transition to a status of 'complete'.

Note: if the only objective is to ensure that certain future questions/groups aren't turned on until/unless specific previous items are satisfactorily completed, this should be accomplished using [enableWhen] or [enableWhenExpression]."""
* ^status = #draft
* ^purpose = "Some instruments need to prevent editing of previous answers once subsequent answers are revealed."
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..1
* . ^short = "sequential | prior-edit | random"
* . ^definition = "Indicates how questions within the questionnaire should be presented to the end-user.  Specifically, differentiates whether the questions should be displayed one-at-a-time with no ability to adjust prior entries; one-at-a-time or continuously expanding where all questions up to the current question can be looked at and edited, or random, where all questions can be seen and the questions can be filled out in any order desired."
* . ^comment = "The prior-edit functionality can be accomplished by adding questions to the screen as each subsequent question is answered (resulting in all questions being displayed in a single screen) or with a view that shows only one question at a time but allows backward navigation to view and/or edit prior answers."
* url only uri
* value[x] only code
* value[x] from QuestionnaireEntryMode (required)
  * ^binding.description = "Entry modes when completing a questionnaire"















