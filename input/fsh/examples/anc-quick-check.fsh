Instance: anc-quick-check
InstanceOf: SDCQuestionnaireRender
Title: "Questionnaire - ANC Quick Check"
Description: "A sample questionnaire using itemMedia and itemAnswerMedia extensions."
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/anc-quick-check"
* name = "ANC_Quick_Check"
* title = "Questionnaire - ANC Quick Check"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "A sample questionnaire using itemMedia and itemAnswerMedia extensions"
* item
  * extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemMedia"
  * extension.valueAttachment.url = "http://example.org/images/reason-for-visit.png"
  * linkId = "reason-for-visit"
  * text = "Why did you come?"
  * type = #choice
* insert answerOption("http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia", "http://example.org/images/reason-for-visit-routine.png","For a scheduled (routine\) visit")
* insert answerOption("http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia", "http://example.org/images/reason-for-visit-specific-complaint.png","For specific complaints about you or your baby")
* insert answerOption("http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia", "http://example.org/images/reason-for-visit-first.png","First visit")
* insert answerOption("http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia", "http://example.org/images/reason-for-visit-follow-up.png","Follow-up visit")
* insert answerOption("http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia", "http://example.org/images/reason-for-visit-include-family-member.png","Do you want to include your companion or other family member (parent if adolescent\) in the examination and discussion?")

