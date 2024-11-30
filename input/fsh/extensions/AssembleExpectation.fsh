Extension: AssembleExpectation
Id: sdc-questionnaire-assemble-expectation
Title: "Assembly Expectations for Questionnaire"
Description: "If present, indicates that this questionnaire has expectations with respect to assembly.  Specifically, indicates whether this form requires assembly (i.e. it can't be used directly without invoking the [$assemble](OperationDefinition-Questionnaire-assemble.html) operation operation on it) and/or whether it is intended for use only as a 'child' in an assembly process.  The assembly processs might mean filling in item metadata based on information looked up from item.definitions and/or retrieving sub-questionnaires pointed to by [sub-questionnaire](StructureDefinition-sdc-questionnaire-subQuestionnaire.html) extensions."
* ^status = #active
* ^purpose = "Allows Form Fillers to differentiate forms that require pre-processing prior to display."
* ^context.type = #element
* ^context.expression = "Questionnaire"
* . 0..1
* . ^short = "Questionnaire is modular"
* . ^definition = "If present, indicates that this questionnaire has expectations with respect to assembly.  Specifically, indicates whether this form requires assembly (i.e. it can't be used directly without invoking the [$assemble](OperationDefinition-Questionnaire-assemble.html) operation operation on it) and/or whether it is intended for use only as a 'child' in an assembly process.  The assembly processs might mean filling in item metadata based on information looked up from item.definitions and/or retrieving sub-questionnaires pointed to by [sub-questionnaire](StructureDefinition-sdc-questionnaire-subQuestionnaire.html) extensions."
* . ^comment = "SDC-conformant Questionnaires **SHALL** declare this extension if they require an assembly process prior to use.  If not declared, then the Questionnaire is not necessarily safe for use as a child form and does not require assembly prior to use."
* url only uri
* value[x] only code
* value[x] from QuestionnaireAssembleExpectation (required)