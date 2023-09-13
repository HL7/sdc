ValueSet: TaskCode
Id: task-code
Title: "SDC Task Code"
Description: "The codes allowed for an SDC Task seeking completion of a Questionnaire"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = true
* TemporaryCodes#complete-questionnaire
* TaskCode#fulfill