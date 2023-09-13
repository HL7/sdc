Profile: SDCUsageContext
Parent: UsageContext
Id: sdc-usagecontext
Title: "SDC Usage Context"
Description: "Constraints on the codes and values of UsageContext to help ensure consistent usage in SDC Questionnaires"
* ^status = #draft
* ^date = "2019-03-15T20:02:49+10:00"
* . MS
* obeys sdc-uc-1
* code MS
* value[x] MS
* valueCodeableConcept MS
  * ^min = 0
  * coding MS
    * system MS
    * code MS
* valueRange MS
  * ^min = 0
  * low MS
  * high MS