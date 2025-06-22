Alias: $example = http://example.org

// Code systems - sdc
Alias: $launchContext = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext
Alias: $temp          = http://hl7.org/fhir/uv/sdc/CodeSystem/temp

// Code systems - THO
Alias: $condition-clinical   = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $library-type         = http://terminology.hl7.org/CodeSystem/library-type
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $usage-context-type   = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $v2-0136              = http://terminology.hl7.org/CodeSystem/v2-0136
Alias: $v2-0203              = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0532              = http://terminology.hl7.org/CodeSystem/v2-0532
Alias: $v3-MaritalStatus     = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-RoleCode          = http://terminology.hl7.org/CodeSystem/v3-RoleCode

// Code systems - core
Alias: $derivationType                 = http://hl7.org/fhir/questionnaire-derivationType
Alias: $questionnaire-display-category = http://hl7.org/fhir/questionnaire-display-category
Alias: $questionnaire-item-control     = http://hl7.org/fhir/questionnaire-item-control
Alias: $task-code                      = http://hl7.org/fhir/CodeSystem/task-code
Alias: $version-algorithm              = http://hl7.org/fhir/version-algorithm

// Code systems - external
Alias: $loinc          = http://loinc.org
Alias: $m49.htm        = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $sct            = http://snomed.info/sct
Alias: $unitsofmeasure = http://unitsofmeasure.org

// Code systems - fake
Alias: $Australian-States = http://example.org/CodeSystem/Australian-States
Alias: $chf-codes         = http://example.org/CodeSystem/chf-codes
Alias: $conditions        = http://example.org/CodeSystem/conditions
Alias: $lifestyle         = http://example.org/CodeSystem/lifestyle
Alias: $procedures        = http://example.org/CodeSystem/procedures
Alias: $provinces         = http://example.org/CodeSystem/provinces
Alias: $treatments        = http://example.org/CodeSystem/treatments
Alias: $usage-contexts    = http://example.org/fhir/CodeSystem/usage-contexts

// Operations - sdc
Alias: $assemble      = http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-assemble
Alias: $populate      = http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populate
Alias: $populatehtml  = http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populatehtml
Alias: $populatelink  = http://hl7.org/fhir/uv/sdc/OperationDefinition/Questionnaire-populatelink

// Operations - core
Alias: $expand        = http://hl7.org/fhir/OperationDefinition/ValueSet-expand
Alias: $validate-code = http://hl7.org/fhir/OperationDefinition/ValueSet-validate-code

// Data models/elements
Alias: $administrative-gender = http://hl7.org/fhir/administrative-gender
Alias: $question_identifier   = http://example.org/AHRQ/form/question_identifier#HERF/DE3-cs
Alias: $question_identifier_1 = http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921060v1.0-cs
Alias: $question_identifier_2 = http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921071v1.0-cs
Alias: $question_identifier_3 = http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921081v1.0-cs
Alias: $question_identifier_4 = http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921085v1.0-cs

// Extensions - sdc
Alias: $endpoint                             = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-endpoint
Alias: $entryMode                            = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-entryMode
Alias: $itemAnswerMedia                      = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemAnswerMedia
Alias: $maxQuantity                          = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxQuantity
Alias: $minQuantity                          = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minQuantity
Alias: $questionnaire-initialExpression      = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression
Alias: $questionnaire-itemExtractionContext  = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext
Alias: $questionnaire-itemPopulationContext  = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext
Alias: $questionnaire-launchContext          = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $questionnaire-questionnaireAdaptive  = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-questionnaireAdaptive

// Extensions - core
Alias: $adheresTo                            = http://hl7.org/fhir/StructureDefinition/workflow-adheresTo
Alias: $best-practice                        = http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice
Alias: $conf                                 = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation
Alias: $cqf-calculatedValue                  = http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue
Alias: $cqf-expression                       = http://hl7.org/fhir/StructureDefinition/cqf-expression
Alias: $cqf-library                          = http://hl7.org/fhir/StructureDefinition/cqf-library
Alias: $cqllibrary                           = http://hl7.org/fhir/StructureDefinition/cqllibrary
Alias: $designNote                           = http://hl7.org/fhir/StructureDefinition/designNote
Alias: $display                              = http://hl7.org/fhir/StructureDefinition/display
Alias: $entryFormat                          = http://hl7.org/fhir/StructureDefinition/entryFormat
Alias: $fmm                                  = http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm
Alias: $itemWeight                           = http://hl7.org/fhir/StructureDefinition/itemWeight
Alias: $maxDecimalPlaces                     = http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces
Alias: $maxSize                              = http://hl7.org/fhir/StructureDefinition/maxSize
Alias: $maxValue                             = http://hl7.org/fhir/StructureDefinition/maxValue
Alias: $mimeType                             = http://hl7.org/fhir/StructureDefinition/mimeType
Alias: $minLength                            = http://hl7.org/fhir/StructureDefinition/minLength
Alias: $minValue                             = http://hl7.org/fhir/StructureDefinition/minValue
Alias: $preferredTerminologyServer           = http://hl7.org/fhir/StructureDefinition/preferredTerminologyServer
Alias: $questionnaire-choiceOrientation      = http://hl7.org/fhir/StructureDefinition/questionnaire-choiceOrientation
Alias: $questionnaire-derivationType         = http://hl7.org/fhir/StructureDefinition/questionnaire-derivationType
Alias: $questionnaire-displayCategory        = http://hl7.org/fhir/StructureDefinition/questionnaire-displayCategory
Alias: $questionnaire-hidden                 = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
Alias: $questionnaire-itemControl            = http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
Alias: $questionnaire-maxOccurs              = http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs
Alias: $questionnaire-minOccurs              = http://hl7.org/fhir/StructureDefinition/questionnaire-minOccurs
Alias: $questionnaire-optionExclusive        = http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive
Alias: $questionnaire-referenceProfile       = http://hl7.org/fhir/StructureDefinition/questionnaire-referenceProfile
Alias: $questionnaire-referenceResource      = http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource
Alias: $questionnaire-signatureRequired      = http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired
Alias: $questionnaire-sliderStepValue        = http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue
Alias: $questionnaire-supportLink            = http://hl7.org/fhir/StructureDefinition/questionnaire-supportLink
Alias: $questionnaire-unit                   = http://hl7.org/fhir/StructureDefinition/questionnaire-unit
Alias: $questionnaire-unitOption             = http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption
Alias: $questionnaire-unitValueSet           = http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet
Alias: $questionnaire-usageMode              = http://hl7.org/fhir/StructureDefinition/questionnaire-usageMode
Alias: $questionnaireresponse-completionMode = http://hl7.org/fhir/StructureDefinition/questionnaireresponse-completionMode
Alias: $questionnaireresponse-signature      = http://hl7.org/fhir/StructureDefinition/questionnaireresponse-signature
Alias: $regex                                = http://hl7.org/fhir/StructureDefinition/regex
Alias: $rendering-style                      = http://hl7.org/fhir/StructureDefinition/rendering-style
Alias: $rendering-styleSensitive             = http://hl7.org/fhir/StructureDefinition/rendering-styleSensitive
Alias: $rendering-xhtml                      = http://hl7.org/fhir/StructureDefinition/rendering-xhtml
Alias: $standard-status                      = http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status
Alias: $targetConstraint                     = http://hl7.org/fhir/StructureDefinition/targetConstraint
Alias: $valueset-conceptOrder                = http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder
Alias: $valueset-expansionSource             = http://hl7.org/fhir/StructureDefinition/valueset-expansionSource
Alias: $valueset-label                       = http://hl7.org/fhir/StructureDefinition/valueset-label
Alias: $variable                             = http://hl7.org/fhir/StructureDefinition/variable
Alias: $wg                                   = http://hl7.org/fhir/StructureDefinition/structuredefinition-wg
Alias: $triggeredBy                          = http://hl7.org/fhir/StructureDefinition/workflow-triggeredBy

// Extensions - Cross-version
Alias: $valueset-expansionProperty           = http://hl7.org/fhir/5.0/StructureDefinition/extension-ValueSet.expansion.property
Alias: $valueset-containsProperty            = http://hl7.org/fhir/5.0/StructureDefinition/extension-ValueSet.expansion.contains.property
Alias: $questionnaireresponse-source         = http://hl7.org/fhir/5.0/StructureDefinition/extension-QuestionnaireResponse.source
//Alias: $questionnaire-versionAlgorithm       = http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm%5Bx%5D
Alias: $questionnaire-versionAlgorithm       = http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.versionAlgorithm[x]
Alias: $questionnaire-copyrightLabel         = http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.copyrightLabel
Alias: $questionnaire-disabledDisplay        = http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.item.disabledDisplay
Alias: $questionnaire-answerConstraint       = http://hl7.org/fhir/5.0/StructureDefinition/extension-Questionnaire.item.answerConstraint
