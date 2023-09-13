ValueSet: QuestionnaireAssembleExpectation
Id: assemble-expectation
Title: "Questionnaire Assemble Expectation"
Description: "Defines codes describing how a Questionnaire relates to the 'assemble' process"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^experimental = true
* include codes from system AssembleExpectation