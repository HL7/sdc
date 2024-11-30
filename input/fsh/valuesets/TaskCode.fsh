ValueSet: TaskCode
Id: task-code
Title: "SDC Task Code"
Description: "The codes allowed for an SDC Task seeking completion of a Questionnaire"
* ^status = #active
* ^experimental = true
* TemporaryCodes#complete-questionnaire
* TaskCode#fulfill