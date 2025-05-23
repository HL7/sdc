Profile: SDCUsageContext
Parent: UsageContext
Id: sdc-usagecontext
Title: "SDC Usage Context"
Description: "Constraints on the codes and values of UsageContext to help ensure consistent usage in SDC Questionnaires"
* ^status = #active
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

Invariant: sdc-uc-1
Description: "If code is gender, focus, user, venue or species, value must be CodeableConcept.  If code is age, value must be Range.  If code is workflow, task or program, value must be CodeableConcept or Reference"
Severity: #error
Expression: "code.system!='http://terminology.hl7.org/CodeSystem/usage-context-type' or (((code.code='gender' or code.code='focus' or code.code='user' or code.code='venue' or code.code='species') implies value.exists() and value is CodeableConcept) and (code.code='age' implies value.exists() and value is Range) and ((code.code='workflow' or code.code='task' or code.code='program') implies (value.exists() and (value is CodeableConcept or value is Reference))))"
XPath: "not(f:code/:system='http://terminology.hl7.org/CodeSystem/usage-context-type') or ((not(f:code/f:code=('gender', 'focus', 'user', 'venue', 'species')) or exists(f:valueCodeableConcept) and (not(f:code/f:code='age') or exists(f:valueRange) and (not(f:code/f:code=('workflow', 'task', 'program')) or exists(f:valueCodeableConcept)or exists(f:valueReference))"