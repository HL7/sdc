Instance: SDOHCC-StructureMapHungerVitalSign
InstanceOf: StructureMap
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/StructureMap/SDOHCC-StructureMapHungerVitalSign"
* name = "SDOHCCStructureMapHungerVitalSign"
* title = "SDOHCC StructureMap Hunger Vital Sign"
* status = #draft
* experimental = false
* description = "A map that converts an SDOCC hunger vital sign questionnaire to a Bundle of Conditions and Observations"
* structure[0]
  * url = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"
  * mode = #source
  * alias = "questionnaireResponse"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Bundle"
  * mode = #target
  * alias = "bundle"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Observation"
  * mode = #target
  * alias = "observation"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Condition"
  * mode = #target
  * alias = "sdohccCondition"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Observation"
  * mode = #target
  * alias = "sdohccObservation"
* group[0]
  * name = "sdohMapping"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "bundle"
    * type = "Bundle"
    * mode = #target
  * rule[0]
    * name = "bundleId"
    * source.context = "src"
    * target
      * context = "bundle"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-BundleHungerVitalSignExample"
  * rule[+]
    * name = "bundleType"
    * source.context = "src"
    * target
      * context = "bundle"
      * contextType = #variable
      * element = "type"
      * transform = #copy
      * parameter.valueString = "transaction"
  * rule[+]
    * name = "item"
    * source
      * context = "src"
      * element = "item"
      * variable = "answerItem3"
      * condition = "linkId = '/88124-3'"
    * target[0]
      * context = "bundle"
      * contextType = #variable
      * element = "entry"
      * variable = "entry"
    * target[+]
      * context = "entry"
      * contextType = #variable
      * element = "resource"
      * variable = "observation3"
      * transform = #create
      * parameter.valueString = "Observation"
    * dependent
      * name = "TransformObservation"
      * variable[0] = "src"
      * variable[+] = "answerItem3"
      * variable[+] = "observation3"
      * variable[+] = "entry"
  * rule[+]
    * name = "item"
    * source
      * context = "src"
      * element = "item"
      * condition = "(linkId = '/88124-3') and (answer.value.code = 'LA19952-3')"
    * target[0]
      * context = "bundle"
      * contextType = #variable
      * element = "entry"
      * variable = "entry"
    * target[+]
      * context = "entry"
      * contextType = #variable
      * element = "resource"
      * variable = "condition"
      * transform = #create
      * parameter.valueString = "Condition"
    * dependent
      * name = "TransformCondition"
      * variable[0] = "src"
      * variable[+] = "bundle"
      * variable[+] = "condition"
      * variable[+] = "entry"
* group[+]
  * name = "TransformObservation"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "answerItem"
    * mode = #source
  * input[+]
    * name = "observation"
    * type = "Observation"
    * mode = #target
  * input[+]
    * name = "entry"
    * mode = #target
  * rule[0]
    * name = "obsnEntryRequest"
    * source.context = "src"
    * target
      * context = "entry"
      * contextType = #variable
      * element = "request"
      * variable = "request"
    * rule[0]
      * name = "obsnRequestMethod"
      * source.context = "src"
      * target
        * context = "request"
        * contextType = #variable
        * element = "method"
        * transform = #copy
        * parameter.valueString = "POST"
    * rule[+]
      * name = "obsnRequestUrl"
      * source.context = "src"
      * target
        * context = "request"
        * contextType = #variable
        * element = "url"
        * transform = #copy
        * parameter.valueString = "Observation"
  * rule[+]
    * name = "obsn3Id"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-ObservationResponseHungerVitalSignQuestion3Example"
    * dependent
      * name = "SetObservationFullUrl"
      * variable[0] = "observation"
      * variable[+] = "entry"
  * rule[+]
    * name = "obsnMeta"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "meta"
      * variable = "newMeta"
      * transform = #create
      * parameter.valueString = "Meta"
    * rule
      * name = "obsnMetaProfile"
      * source.context = "src"
      * target
        * context = "newMeta"
        * contextType = #variable
        * element = "profile"
        * transform = #copy
        * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ObservationScreeningResponse"
  * rule[+]
    * name = "obsnStatus"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "status"
      * transform = #copy
      * parameter.valueString = "final"
  * rule[+]
    * name = "obsnCatSocialHist"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "category"
      * transform = #cc
      * parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/observation-category"
      * parameter[+].valueString = "social-history"
      * parameter[+].valueString = "Social History"
  * rule[+]
    * name = "obsnCatSurvey"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "category"
      * transform = #cc
      * parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/observation-category"
      * parameter[+].valueString = "survey"
      * parameter[+].valueString = "Survey"
  * rule[+]
    * name = "obsnCatFoodInsecurity"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "category"
      * transform = #cc
      * parameter[0].valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes"
      * parameter[+].valueString = "food-insecurity"
      * parameter[+].valueString = "Food Insecurity"
  * rule[+]
    * name = "obsn3Code"
    * source
      * context = "answerItem"
      * variable = "i"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "code"
      * variable = "code"
      * transform = #cc
      * parameter[0].valueString = "http://loinc.org"
      * parameter[+].valueString = "88124-3"
  * rule[+]
    * name = "subject"
    * source
      * context = "src"
      * element = "subject"
      * variable = "qSubject"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "subject"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule[0]
      * name = "reference"
      * source
        * context = "qSubject"
        * element = "reference"
        * variable = "qReference"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "reference"
        * transform = #copy
        * parameter.valueId = "qReference"
    * rule[+]
      * name = "display"
      * source
        * context = "qSubject"
        * element = "display"
        * variable = "qDisplay"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "display"
        * transform = #copy
        * parameter.valueId = "qDisplay"
  * rule[+]
    * name = "authored"
    * source
      * context = "src"
      * element = "authored"
      * variable = "authored"
    * target[0]
      * context = "observation"
      * contextType = #variable
      * element = "effective"
      * transform = #copy
      * parameter.valueId = "authored"
    * target[+]
      * context = "observation"
      * contextType = #variable
      * element = "issued"
      * transform = #copy
      * parameter.valueId = "authored"
  * rule[+]
    * name = "answer"
    * source
      * context = "answerItem"
      * element = "answer"
      * variable = "answer"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "value"
      * variable = "newCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule
      * name = "value"
      * source
        * context = "answer"
        * element = "value"
        * variable = "coding"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #copy
        * parameter.valueId = "coding"
  * rule[+]
    * name = "obsnDerivation"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "derivedFrom"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule
      * name = "id"
      * source
        * context = "src"
        * element = "id"
        * variable = "id"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "reference"
        * transform = #append
        * parameter[0].valueString = "QuestionnaireResponse/"
        * parameter[+].valueId = "id"
* group[+]
  * name = "SetObservationFullUrl"
  * typeMode = #none
  * input[0]
    * name = "observation"
    * type = "Observation"
    * mode = #source
  * input[+]
    * name = "entry"
    * mode = #target
  * rule
    * name = "id"
    * source
      * context = "observation"
      * element = "id"
      * variable = "id"
    * target
      * context = "entry"
      * contextType = #variable
      * element = "fullUrl"
      * transform = #append
      * parameter[0].valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/Observation/"
      * parameter[+].valueId = "id"
* group[+]
  * name = "TransformCondition"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "QuestionnaireResponse"
    * mode = #source
  * input[+]
    * name = "bundle"
    * type = "Bundle"
    * mode = #source
  * input[+]
    * name = "condition"
    * type = "Condition"
    * mode = #target
  * input[+]
    * name = "entry"
    * mode = #target
  * rule[0]
    * name = "conditionId"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-ConditionFoodInsecurityExample"
    * dependent
      * name = "SetConditionFullUrl"
      * variable[0] = "condition"
      * variable[+] = "entry"
  * rule[+]
    * name = "conditionMeta"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "meta"
      * variable = "newMeta"
      * transform = #create
      * parameter.valueString = "Meta"
    * rule
      * name = "conditionMetaProfile"
      * source.context = "src"
      * target
        * context = "newMeta"
        * contextType = #variable
        * element = "profile"
        * transform = #copy
        * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Condition"
  * rule[+]
    * name = "conditionClinicalStatus"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "clinicalStatus"
      * transform = #cc
      * parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/condition-clinical"
      * parameter[+].valueString = "active"
      * parameter[+].valueString = "Active"
  * rule[+]
    * name = "conditionVeriStatus"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "verificationStatus"
      * transform = #cc
      * parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
      * parameter[+].valueString = "unconfirmed"
      * parameter[+].valueString = "Unconfirmed"
  * rule[+]
    * name = "conditionCatHealthConcern"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "category"
      * variable = "newCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule
      * name = "conditionCatCodingHealthConcern"
      * source.context = "src"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "conditionCatCodingSystemHealthConcern"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/us/core/CodeSystem/condition-category"
      * rule[+]
        * name = "conditionCatCodingCodeHealthConcern"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "health-concern"
      * rule[+]
        * name = "conditionCatCodingDisplayHealthConcern"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Health Concern"
  * rule[+]
    * name = "conditionCatFoodInsecurity"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "category"
      * transform = #cc
      * parameter[0].valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes"
      * parameter[+].valueString = "food-insecurity"
      * parameter[+].valueString = "Food Insecurity"
  * rule[+]
    * name = "conditionCode"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "code"
      * variable = "newCodeCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule[0]
      * name = "conditionCodeCodingFoodInsecurity"
      * source.context = "src"
      * target
        * context = "newCodeCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "conditionCodeCodingSystemFoodInsecurity"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://snomed.info/sct"
      * rule[+]
        * name = "conditionCodeCodingCodeFoodInsecurity"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "733423003"
      * rule[+]
        * name = "conditionCodeCodingDisplayFoodInsecurity"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Food insecurity"
    * rule[+]
      * name = "conditionCodeCodingLackOfFood"
      * source.context = "src"
      * target
        * context = "newCodeCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding2"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "conditionCodeCodingSystemLackOfFood"
        * source.context = "src"
        * target
          * context = "newCoding2"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/sid/icd-10-cm"
      * rule[+]
        * name = "conditionCodeCodingCodeLackOfFood"
        * source.context = "src"
        * target
          * context = "newCoding2"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "Z59.4"
      * rule[+]
        * name = "conditionCodeCodingDisplayLackOfFood"
        * source.context = "src"
        * target
          * context = "newCoding2"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Lack of adequate food and safe drinking water"
  * rule[+]
    * name = "authored"
    * source
      * context = "src"
      * element = "authored"
      * variable = "authored"
    * target[0]
      * context = "condition"
      * contextType = #variable
      * element = "onset"
      * variable = "period"
      * transform = #create
      * parameter.valueString = "Period"
    * target[+]
      * context = "period"
      * contextType = #variable
      * element = "start"
      * transform = #copy
      * parameter.valueId = "authored"
  * rule[+]
    * name = "entry"
    * source
      * context = "bundle"
      * element = "entry"
      * variable = "entries"
    * target[0]
      * context = "condition"
      * contextType = #variable
      * element = "evidence"
      * variable = "evidence"
    * target[+]
      * context = "evidence"
      * contextType = #variable
      * element = "detail"
      * variable = "detailReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule
      * name = "resource"
      * source
        * context = "entries"
        * element = "resource"
        * variable = "obs3"
        * condition = "code.coding.code = '88124-3'"
      * target
        * context = "detailReference"
        * contextType = #variable
        * element = "reference"
        * transform = #reference
        * parameter.valueId = "obs3"
  * rule[+]
    * name = "subject"
    * source
      * context = "src"
      * element = "subject"
      * variable = "qSubject"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "subject"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule[0]
      * name = "reference"
      * source
        * context = "qSubject"
        * element = "reference"
        * variable = "qReference"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "reference"
        * transform = #copy
        * parameter.valueId = "qReference"
    * rule[+]
      * name = "display"
      * source
        * context = "qSubject"
        * element = "display"
        * variable = "qDisplay"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "display"
        * transform = #copy
        * parameter.valueId = "qDisplay"
  * rule[+]
    * name = "conditionEntryRequest"
    * source.context = "src"
    * target
      * context = "entry"
      * contextType = #variable
      * element = "request"
      * variable = "request"
    * rule[0]
      * name = "conditionRequestMethod"
      * source.context = "src"
      * target
        * context = "request"
        * contextType = #variable
        * element = "method"
        * transform = #copy
        * parameter.valueString = "POST"
    * rule[+]
      * name = "conditionRequestUrl"
      * source.context = "src"
      * target
        * context = "request"
        * contextType = #variable
        * element = "url"
        * transform = #copy
        * parameter.valueString = "Condition"
* group[+]
  * name = "SetConditionFullUrl"
  * typeMode = #none
  * input[0]
    * name = "condition"
    * type = "Condition"
    * mode = #source
  * input[+]
    * name = "entry"
    * mode = #target
  * rule
    * name = "id"
    * source
      * context = "condition"
      * element = "id"
      * variable = "id"
    * target
      * context = "entry"
      * contextType = #variable
      * element = "fullUrl"
      * transform = #append
      * parameter[0].valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/Condition/"
      * parameter[+].valueId = "id"