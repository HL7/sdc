CodeSystem: EntryMode
Id: entryMode
Title: "Entry Mode"
Description: "Defines mechanisms of capturing data in a QuestionnaireResponse"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #sequential "Sequential" "Questions are displayed one at a time.  Previous questions and submitted answers cannot be viewed or edited."
* #prior-edit "Prior Edit" "Questions are only displayed once prior questions have been answered (or if optional, skipped).  Previously answered questions are available for viewing and potentially editing"
* #random "Random" "All enabled questions are visible and accessible to the user.  They may complete questions in any order."