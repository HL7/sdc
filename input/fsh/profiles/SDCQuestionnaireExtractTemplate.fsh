Profile: SDCQuestionnaireExtractTemplate
Parent: SDCBaseQuestionnaire
Id: sdc-questionnaire-extr-template
Title: "Extractable Questionnaire - Template"
Description: "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Template-based extraction mechanism"
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* . ^short = "Extractable Questionnaire - Template"
* . ^definition = "Defines elements that allow conversion of a QuestionnaireResponse to a FHIR resource or Bundle of FHIR resources using the Template-based extraction mechanism."
* extension contains
    TemplateExtractExtension named templateExtract 0..* MS and
    TemplateExtractContextExtension named extractContext 0..* MS and
    ExtractAllocateIdExtension named extractAllocateId 0..* MS
* contained 1..* MS
* item
  * extension contains
      TemplateExtractExtension named templateExtract 0..* MS and
      TemplateExtractContextExtension named extractContext 0..* MS and
      ExtractAllocateIdExtension named extractAllocateId 0..* MS
  * definition 0..1 MS