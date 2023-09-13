Instance: questionnaire-sdc-test-enableWhen
InstanceOf: SDCQuestionnaireBehave
Title: "SDC Test Form - Enable When"
Description: "A test form that has a variety of enable when scenarios for testing."
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-enableWhen"
* name = "EnableWhenTests"
* title = "Enable When"
* status = #active
* experimental = true
* description = "A test form that has a variety of enable when scenarios for testing"
* item[0]
  * linkId = "3239e619-e2b9-492c-bf05-88b314fbe3e4"
  * text = "Scenario 1"
  * type = #group
  * item[0]
    * linkId = "83d5c1a6-5dc3-44d0-9d9e-d687c72e143e"
    * text = "Question 1 Check"
    * type = #boolean
  * item[+]
    * linkId = "fe0106a5-0e25-43a4-9820-7acb7e74d9d7"
    * text = "Question 2 Check"
    * type = #boolean
  * item[+]
    * linkId = "s1-radio"
    * text = "Question 3 Radio ( 1 2 3 )"
    * type = #choice
    * repeats = false
    * answerOption[0].valueCoding = $example#1 "One"
    * answerOption[+].valueCoding = $example#2 "Two"
    * answerOption[+].valueCoding = $example#3 "Three"
  * item[+]
    * linkId = "5e1209b7-c9e0-4bf4-b228-fr096s903m25"
    * text = "Question 4 Radio ( 7 8 9 )"
    * type = #choice
    * repeats = false
    * answerOption[0].valueCoding = $example#7 "Seven"
    * answerOption[+].valueCoding = $example#8 "Eight"
    * answerOption[+].valueCoding = $example#9 "Nine"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#drop-down
    * linkId = "5e1209b7-c9e0-4bf4-b228-c6591b540qmo"
    * text = "Question 3 - enables the question"
    * type = #choice
    * repeats = false
    * answerOption[0].valueCoding = $example#4 "Four"
    * answerOption[+].valueCoding = $example#5 "Five"
    * answerOption[+].valueCoding = $example#6 "Six"
  * item[+]
    * linkId = "e5da17a7-7546-45c5-9bcd-d0b09a74cc14"
    * text = "Question hidden until Q1 checked"
    * type = #string
    * enableWhen
      * question = "83d5c1a6-5dc3-44d0-9d9e-d687c72e143e"
      * operator = #=
      * answerBoolean = true
    * enableBehavior = #all
  * item[+]
    * linkId = "e5da17a7-7546-45c5-9bcd-d0b09a74ty76"
    * text = "Question hidden until Q3 radio 2 Selected"
    * type = #string
    * enableWhen
      * question = "s1-radio"
      * operator = #=
      * answerString = "2"
    * enableBehavior = #all
  * item[+]
    * linkId = "65578509-21ae-4a48-94de-e46b1e87d3fb"
    * text = "Group hidden until enabled Q1 checked"
    * type = #group
    * enableWhen
      * question = "83d5c1a6-5dc3-44d0-9d9e-d687c72e143e"
      * operator = #=
      * answerBoolean = true
    * enableBehavior = #any
    * repeats = false
    * item
      * linkId = "65578509-21ae-4a48-94de-e46b1e54kjui"
      * text = "Question 2 - disable the group"
      * type = #string
  * item[+]
    * linkId = "3ca80fdf-6598-4dd7-b9df-8a2f10895e4e"
    * text = "Group present until Q2 checked"
    * type = #group
    * enableWhen
      * question = "fe0106a5-0e25-43a4-9820-7acb7e74d9d7"
      * operator = #=
      * answerBoolean = false
    * enableBehavior = #any
    * repeats = false
    * item
      * linkId = "65578509-21ae-4a48-94de-e46b1e10ghqn"
      * text = "Question 2 - disable the group when unchecked"
      * type = #string
  * item[+]
    * linkId = "65578509-21ae-4a48-94de-e46be454f8k1"
    * text = "Group hidden until radio  2 selected"
    * type = #group
    * enableWhen
      * question = "s1-radio"
      * operator = #=
      * answerString = "2"
    * enableBehavior = #any
    * repeats = false
    * item
      * linkId = "65578509-21ae-4a48-94de-e46bd161lqzp"
      * text = "Question 2 - disable the group"
      * type = #string
  * item[+]
    * linkId = "65578509-21ae-4a48-94de-h1l9v32opase"
    * text = "Group hidden until dropdown selected"
    * type = #group
    * enableWhen
      * question = "5e1209b7-c9e0-4bf4-b228-c6591b540qmo"
      * operator = #=
      * answerString = "4"
    * enableBehavior = #any
    * repeats = false
    * item
      * linkId = "65578509-21ae-sdj4-98s2-emhaskjh12"
      * text = "Question 2 - disable the group"
      * type = #string
  * item[+]
    * linkId = "65578509-21ae-4a48-3f56-aswtysn1238"
    * text = "Group hidden until 7 is undeleted"
    * type = #group
    * enableWhen
      * question = "5e1209b7-c9e0-4bf4-b228-fr096s903m25"
      * operator = #!=
      * answerString = "7"
    * enableBehavior = #any
    * repeats = false
    * item
      * linkId = "65578509-21ae-234vy-slo4-eddfjqwwr2"
      * text = "Question 2 - disable the group"
      * type = #string
  * item[+]
    * linkId = "76daed4f-f957-45cb-9584-aab95f6021d4"
    * text = "Group hidden until 8 and 4 selected"
    * type = #group
    * enableWhen[0]
      * question = "5e1209b7-c9e0-4bf4-b228-fr096s903m25"
      * operator = #=
      * answerString = "8"
    * enableWhen[+]
      * question = "5e1209b7-c9e0-4bf4-b228-c6591b540qmo"
      * operator = #=
      * answerString = "4"
    * enableBehavior = #all
    * repeats = false
    * item
      * linkId = "3cf51112-6896-4076-8994-b6ff3e52f359"
      * text = "Question 2 - disable the group"
      * type = #string
* item[+]
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb0e8622"
  * text = "Scenario 2"
  * type = #group
  * item[0]
    * linkId = "1acf93a7-0890-44cd-be48-542defb35248"
    * text = "Yes/No/Dont know"
    * type = #choice
    * answerValueSet = "http://sqlonfhir-r4.azurewebsites.net/fhir/ValueSet/a015b6a1ac024dc19baec940be2c1695"
  * item[+]
    * linkId = "945b97b5-6d74-4a55-9be1-1989751219fb"
    * text = "Group visible when Yes selected"
    * type = #group
    * enableWhen
      * question = "1acf93a7-0890-44cd-be48-542defb35248"
      * operator = #=
      * answerCoding = $v2-0532#Y
    * enableBehavior = #any
    * item
      * linkId = "840c08ad-4b27-4c1d-9d6e-824202518ad0"
      * text = "Yes Question"
      * type = #string
  * item[+]
    * linkId = "fab7c5c4-0ac0-4afa-bd6d-c0ce4f5e0bdf"
    * text = "Group visible when Yes/No"
    * type = #group
    * enableWhen
      * question = "1acf93a7-0890-44cd-be48-542defb35248"
      * operator = #!=
      * answerCoding = $v2-0532#ASKU
    * enableBehavior = #any
    * item
      * linkId = "e78586ac-8c97-42a8-a56b-779c5c1d81f1"
      * text = "Yes/No Question"
      * type = #string
* item[+]
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb0e1234"
  * text = "Scenario 3: Comparator enable when with answeroption data"
  * type = #group
  * item[0]
    * linkId = "s3-radio"
    * text = "Integer Values Radio Buttons"
    * type = #choice
    * repeats = false
    * answerOption[0].valueCoding = $example#1.1 "1.1"
    * answerOption[+].valueCoding = $example#2.2 "2.2"
    * answerOption[+].valueCoding = $example#3.3 "3.3"
  * item[+]
    * linkId = "945b97b5-6d74-4a55-9be1-19897512jj89"
    * text = "Group visible when value < 2.2"
    * type = #group
    * enableWhen
      * question = "s3-radio"
      * operator = #<
      * answerDecimal = 2.1
    * enableBehavior = #any
    * item
      * linkId = "840c08ad-4b27-4c1d-9d6e-824202519kied"
      * text = "Group 2 question"
      * type = #string
  * item[+]
    * linkId = "04fabc33-534a-4047-9a13-c13b0b63fa17"
    * text = "Group visible when valuw >= 2.2"
    * type = #group
    * enableWhen
      * question = "s3-radio"
      * operator = #>=
      * answerDecimal = 2.1
    * enableBehavior = #any
    * item
      * linkId = "e70a3a50-e646-4831-a00d-4d6fbdaajn84"
      * text = "Group 3 question"
      * type = #string
* item[+]
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb0e5678"
  * text = "Scenario 4: choice selections with groups"
  * type = #group
  * item[0]
    * linkId = "s4-radio"
    * text = "Integer Values Radio Buttons"
    * type = #choice
    * repeats = false
    * answerOption[0].valueCoding = $example#1 "1"
    * answerOption[+].valueCoding = $example#2 "2"
    * answerOption[+].valueCoding = $example#3 "3"
  * item[+]
    * linkId = "945b97b5-6d74-4a55-9be1-1989751233ew"
    * text = "Group hidden until integer 2 selected"
    * type = #group
    * enableWhen
      * question = "s4-radio"
      * operator = #=
      * answerInteger = 2
    * enableBehavior = #any
    * item
      * linkId = "840c08ad-4b27-4c1d-9d6e-82420251hg12"
      * text = "Group 2 question"
      * type = #string
  * item[+]
    * linkId = "04fabc33-534a-4047-9a13-c13b0b63gh76"
    * text = "Group visible for 1 and 2"
    * type = #group
    * enableWhen
      * question = "s4-radio"
      * operator = #!=
      * answerInteger = 3
    * enableBehavior = #any
    * item
      * linkId = "e70a3a50-e646-4831-a00d-4d6fbdaaefc3"
      * text = "Group 3 question"
      * type = #string
* item[+]
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb088990"
  * text = "Scenario 5: Test EnableWhen Date Trigger"
  * type = #group
  * item[0]
    * linkId = "date_of_birth_question"
    * text = "Date of Birth"
    * type = #date
    * repeats = false
  * item[+]
    * linkId = "date_greater_2000-01-01"
    * text = "Please specify if DOB > 2000-01-01"
    * type = #string
    * enableWhen
      * question = "date_of_birth_question"
      * operator = #>
      * answerDate = "2000-01-01"
    * enableBehavior = #any
  * item[+]
    * linkId = "date_less_2000-01-01"
    * text = "Please specify if DOB is <= 2000-01-01"
    * type = #string
    * enableWhen
      * question = "date_of_birth_question"
      * operator = #<=
      * answerDate = "2000-01-01"
    * enableBehavior = #any
  * item[+]
    * linkId = "datetime_question"
    * text = "Please specify time"
    * type = #time
  * item[+]
    * linkId = "datetime_question_greter_than"
    * text = "If Time Greater Than 11:11:11"
    * type = #string
    * enableWhen
      * question = "datetime_question"
      * operator = #>
      * answerTime = "11:11:11"
    * enableBehavior = #any
  * item[+]
    * linkId = "datetime_question_less_than_equal"
    * text = "If Time Less Than 11:11:11"
    * type = #string
    * enableWhen
      * question = "datetime_question"
      * operator = #<=
      * answerTime = "11:11:11"
    * enableBehavior = #any
* item[+]
  * linkId = "02a7536f-06b2-4dee-94e1-f5cfcb0hd732"
  * text = "Scenario 6: Multi-select option enablewhen"
  * type = #group
  * item[0]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#drop-down
    * linkId = "BC029"
    * text = "Adverse outcomes"
    * type = #choice
    * repeats = true
    * answerOption[0].valueCoding = $example#1 "Bleeding"
    * answerOption[+].valueCoding = $example#2 "Infection/sepsis"
    * answerOption[+].valueCoding = $example#3 "Perforation"
    * answerOption[+].valueCoding = $example#4 "Reaction to sedation"
    * answerOption[+].valueCoding = $example#5 "Death"
    * answerOption[+].valueCoding = $example#9 "Other"
  * item[+]
    * linkId = "BOWOPTOTH"
    * text = "Please specify:"
    * type = #string
    * enableWhen
      * question = "BC029"
      * operator = #=
      * answerCoding = $example#9
    * enableBehavior = #any
    * maxLength = 100