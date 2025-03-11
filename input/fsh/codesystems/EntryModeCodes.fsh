CodeSystem: EntryModeCodes
Id: entryMode
Title: "Entry Mode"
Description: "Defines mechanisms of capturing data in a QuestionnaireResponse"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #sequential "Sequential" "Top-level items are displayed one at a time and items within groups are displayed one at a time, with certain exceptions.  If an item is of type 'page', then all items within the page are displayed and can be edited.  If a question has child questions, the parent question (and answers) are visible while descendant questions are being edited.  Once a user has progressed to view subsequent items, they can no longer return to edit or view prior items (though they might be able to see all answers once the questionnaire response has been marked 'completed' and is no longer editable).  These questionnaire responses cannot be 'amended'."
* #prior-edit "Prior Edit" "This behaves similar to sequential from a 'display' perspective.  I.e. items are generally only displayed one at a time.  However, with his mode, it is possible to navigate to prior questions and change answers.  Amending completed forms is possible."
* #random "Random" "All enabled questions are visible and accessible to the user.  They may complete questions in any order."