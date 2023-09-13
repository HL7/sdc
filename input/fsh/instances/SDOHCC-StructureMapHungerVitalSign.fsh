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
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaireresponse"
  * mode = #source
  * alias = "questionnaireResponse"
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Bundle"
  * mode = #target
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/Observation"
  * mode = #target
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
    * name = "rule-1"
    * source.context = "src"
    * target
      * context = "bundle"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-BundleHungerVitalSignExample"
  * rule[+]
    * name = "rule-2"
    * source.context = "src"
    * target
      * context = "bundle"
      * contextType = #variable
      * element = "type"
      * transform = #copy
      * parameter.valueString = "transaction"
  * rule[+]
    * name = "rule-3"
    * source
      * context = "src"
      * element = "item"
      * variable = "answerItem1"
      * condition = "linkId = '/88122-7'"
    * target[0]
      * context = "bundle"
      * contextType = #variable
      * element = "entry"
      * variable = "entry"
    * target[+]
      * context = "entry"
      * contextType = #variable
      * element = "resource"
      * variable = "observation1"
      * transform = #create
      * parameter.valueString = "sdohccObservation"
    * dependent[0]
      * name = "TransformObservation"
      * variable[0] = "src"
      * variable[+] = "answerItem1"
      * variable[+] = "observation1"
      * variable[+] = "entry"
    * dependent[+]
      * name = "TransformObservation1"
      * variable[0] = "src"
      * variable[+] = "answerItem1"
      * variable[+] = "observation1"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-4"
    * source
      * context = "src"
      * element = "item"
      * variable = "answerItem2"
      * condition = "linkId = '/88123-5'"
    * target[0]
      * context = "bundle"
      * contextType = #variable
      * element = "entry"
      * variable = "entry"
    * target[+]
      * context = "entry"
      * contextType = #variable
      * element = "resource"
      * variable = "observation2"
      * transform = #create
      * parameter.valueString = "sdohccObservation"
    * dependent[0]
      * name = "TransformObservation"
      * variable[0] = "src"
      * variable[+] = "answerItem2"
      * variable[+] = "observation2"
      * variable[+] = "entry"
    * dependent[+]
      * name = "TransformObservation2"
      * variable[0] = "src"
      * variable[+] = "answerItem2"
      * variable[+] = "observation2"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-5"
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
      * parameter.valueString = "sdohccObservation"
    * dependent[0]
      * name = "TransformObservation"
      * variable[0] = "src"
      * variable[+] = "answerItem3"
      * variable[+] = "observation3"
      * variable[+] = "entry"
    * dependent[+]
      * name = "TransformObservation3"
      * variable[0] = "src"
      * variable[+] = "answerItem3"
      * variable[+] = "bundle"
      * variable[+] = "observation3"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-6"
    * source.context = "src"
    * target[0]
      * context = "bundle"
      * contextType = #variable
      * element = "entry"
      * variable = "entry"
    * target[+]
      * context = "entry"
      * contextType = #variable
      * element = "resource"
      * variable = "groupObservation"
      * transform = #create
      * parameter.valueString = "sdohccObservation"
    * dependent
      * name = "TransformGroupObservation"
      * variable[0] = "src"
      * variable[+] = "bundle"
      * variable[+] = "groupObservation"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-7"
    * source
      * context = "src"
      * element = "item"
      * condition = "linkId = '/88124-3' and answer.valueCoding.code ='LA19952-3'"
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
      * parameter.valueString = "sdohccCondition"
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
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "observation"
    * type = "sdohccObservation"
    * mode = #target
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-8"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "status"
      * transform = #copy
      * parameter.valueString = "final"
  * rule[+]
    * name = "rule-9"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "meta"
      * variable = "newMeta"
      * transform = #create
      * parameter.valueString = "Meta"
    * rule
      * name = "rule-10"
      * source.context = "src"
      * target
        * context = "newMeta"
        * contextType = #variable
        * element = "profile"
        * transform = #copy
        * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ObservationScreeningResponse"
  * rule[+]
    * name = "rule-11"
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
    * name = "rule-12"
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
    * name = "rule-13"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "category"
      * variable = "newCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule
      * name = "rule-14"
      * source.context = "src"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "rule-15"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes"
      * rule[+]
        * name = "rule-16"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "food-insecurity"
      * rule[+]
        * name = "rule-17"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Food Insecurity"
  * rule[+]
    * name = "rule-18"
    * source
      * context = "src"
      * element = "authored"
      * variable = "authored"
    * target[0]
      * context = "observation"
      * contextType = #variable
      * element = "issued"
      * transform = #copy
      * parameter.valueId = "authored"
    * target[+]
      * context = "observation"
      * contextType = #variable
      * element = "effective"
      * transform = #copy
      * parameter.valueId = "authored"
  * rule[+]
    * name = "rule-19"
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
      * name = "rule-20"
      * source
        * context = "answer"
        * element = "valueCoding"
        * variable = "coding"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #copy
        * parameter.valueId = "coding"
  * rule[+]
    * name = "rule-21"
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
      * name = "rule-22"
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
      * name = "rule-23"
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
* group[+]
  * name = "TransformObservation1"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "item"
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "observation"
    * type = "sdohccObservation"
    * mode = #target
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-24"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-ObservationResponseHungerVitalSignQuestion1Example"
    * dependent
      * name = "SetObservationFullUrl"
      * variable[0] = "observation"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-25"
    * source
      * context = "item"
      * variable = "i"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "code"
      * variable = "code"
      * transform = #cc
      * parameter[0].valueString = "http://loinc.org"
      * parameter[+].valueString = "88122-7"
  * rule[+]
    * name = "rule-26"
    * source
      * context = "src"
      * element = "subject"
      * variable = "qSubject"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "performer"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule[0]
      * name = "rule-27"
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
      * name = "rule-28"
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
    * name = "rule-29"
    * source
      * context = "src"
      * element = "id"
      * variable = "id"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "derivedFrom"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule
      * name = "rule-30"
      * source.context = "id"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "reference"
        * transform = #append
        * parameter[0].valueString = "QuestionnaireResponse/"
        * parameter[+].valueId = "id"
* group[+]
  * name = "TransformObservation2"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "item"
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "observation"
    * type = "sdohccObservation"
    * mode = #target
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-31"
    * source.context = "src"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-ObservationResponseHungerVitalSignQuestion2Example"
    * dependent
      * name = "SetObservationFullUrl"
      * variable[0] = "observation"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-32"
    * source
      * context = "item"
      * variable = "i"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "code"
      * variable = "code"
      * transform = #cc
      * parameter[0].valueString = "http://loinc.org"
      * parameter[+].valueString = "88123-5"
  * rule[+]
    * name = "rule-33"
    * source
      * context = "src"
      * element = "subject"
      * variable = "qSubject"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "performer"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule[0]
      * name = "rule-34"
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
      * name = "rule-35"
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
    * name = "rule-36"
    * source
      * context = "src"
      * element = "id"
      * variable = "id"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "derivedFrom"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule
      * name = "rule-37"
      * source.context = "id"
      * target
        * context = "newReference"
        * contextType = #variable
        * element = "reference"
        * transform = #append
        * parameter[0].valueString = "QuestionnaireResponse/"
        * parameter[+].valueId = "id"
* group[+]
  * name = "TransformObservation3"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "item"
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "bundle"
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "observation"
    * type = "sdohccObservation"
    * mode = #target
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-38"
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
    * name = "rule-39"
    * source
      * context = "item"
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
    * name = "rule-40"
    * source
      * context = "bundle"
      * element = "entry"
      * variable = "entries"
    * target
      * context = "observation"
      * contextType = #variable
      * element = "derivedFrom"
      * variable = "df"
      * transform = #create
      * parameter.valueString = "Reference"
    * dependent
      * name = "TransformObservationDerived"
      * variable[0] = "entries"
      * variable[+] = "df"
* group[+]
  * name = "TransformObservationDerived"
  * typeMode = #none
  * input[0]
    * name = "entries"
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "df"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-41"
    * source
      * context = "entries"
      * element = "resource"
      * variable = "obs1"
      * condition = "code.coding.code = '88122-7'"
    * target
      * context = "df"
      * contextType = #variable
      * element = "reference"
      * transform = #reference
      * parameter.valueId = "obs1"
  * rule[+]
    * name = "rule-42"
    * source
      * context = "entries"
      * element = "resource"
      * variable = "obs2"
      * condition = "code.coding.code = '88123-5'"
    * target
      * context = "df"
      * contextType = #variable
      * element = "reference"
      * transform = #reference
      * parameter.valueId = "obs2"
* group[+]
  * name = "TransformGroupObservation"
  * typeMode = #none
  * input[0]
    * name = "src"
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "bundle"
    * type = "Bundle"
    * mode = #source
  * input[+]
    * name = "groupObservation"
    * type = "Observation"
    * mode = #target
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-43"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "meta"
      * variable = "newMeta"
      * transform = #create
      * parameter.valueString = "Meta"
    * rule
      * name = "rule-44"
      * source.context = "src"
      * target
        * context = "newMeta"
        * contextType = #variable
        * element = "profile"
        * transform = #copy
        * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ObservationScreeningResponse"
  * rule[+]
    * name = "rule-45"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "id"
      * transform = #copy
      * parameter.valueString = "SDOHCC-ObservationResponseHungerVitalSignGroupingExample"
    * dependent
      * name = "SetObservationFullUrl"
      * variable[0] = "groupObservation"
      * variable[+] = "entry"
  * rule[+]
    * name = "rule-46"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "status"
      * transform = #copy
      * parameter.valueString = "final"
  * rule[+]
    * name = "rule-47"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "category"
      * transform = #cc
      * parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/observation-category"
      * parameter[+].valueString = "social-history"
      * parameter[+].valueString = "Social History"
  * rule[+]
    * name = "rule-48"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "category"
      * transform = #cc
      * parameter[0].valueString = "http://terminology.hl7.org/CodeSystem/observation-category"
      * parameter[+].valueString = "survey"
      * parameter[+].valueString = "Survey"
  * rule[+]
    * name = "rule-49"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "category"
      * variable = "newCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule
      * name = "rule-50"
      * source.context = "src"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "rule-51"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes"
      * rule[+]
        * name = "rule-52"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "food-insecurity"
      * rule[+]
        * name = "rule-53"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Food Insecurity"
  * rule[+]
    * name = "rule-54"
    * source
      * context = "src"
      * element = "authored"
      * variable = "authored"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "effective"
      * transform = #copy
      * parameter.valueId = "authored"
  * rule[+]
    * name = "rule-55"
    * source
      * context = "src"
      * element = "subject"
      * variable = "qSubject"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "subject"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule[0]
      * name = "rule-56"
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
      * name = "rule-57"
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
    * name = "rule-58"
    * source.context = "src"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "code"
      * transform = #cc
      * parameter[0].valueString = "http://loinc.org"
      * parameter[+].valueString = "88121-9"
      * parameter[+].valueString = "Hunger Vital Sign [HVS]"
  * rule[+]
    * name = "rule-59"
    * source
      * context = "bundle"
      * element = "entry"
      * variable = "entries"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "hasMember"
      * variable = "df"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule[0]
      * name = "rule-60"
      * source
        * context = "entries"
        * element = "resource"
        * variable = "obs1"
        * condition = "code.coding.code = '88122-7'"
      * target
        * context = "df"
        * contextType = #variable
        * element = "reference"
        * transform = #reference
        * parameter.valueId = "obs1"
    * rule[+]
      * name = "rule-61"
      * source
        * context = "entries"
        * element = "resource"
        * variable = "obs2"
        * condition = "code.coding.code = '88123-5'"
      * target
        * context = "df"
        * contextType = #variable
        * element = "reference"
        * transform = #reference
        * parameter.valueId = "obs2"
    * rule[+]
      * name = "rule-62"
      * source
        * context = "entries"
        * element = "resource"
        * variable = "obs3"
        * condition = "code.coding.code = '88124-3'"
      * target
        * context = "df"
        * contextType = #variable
        * element = "reference"
        * transform = #reference
        * parameter.valueId = "obs3"
  * rule[+]
    * name = "rule-63"
    * source
      * context = "src"
      * element = "id"
      * variable = "id"
    * target
      * context = "groupObservation"
      * contextType = #variable
      * element = "derivedFrom"
      * variable = "newReference"
      * transform = #create
      * parameter.valueString = "Reference"
    * rule
      * name = "rule-64"
      * source.context = "id"
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
    * type = "Any"
    * mode = #target
  * rule
    * name = "rule-65"
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
    * type = "questionnaireResponse"
    * mode = #source
  * input[+]
    * name = "bundle"
    * type = "Any"
    * mode = #source
  * input[+]
    * name = "condition"
    * type = "sdohccCondition"
    * mode = #target
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule[0]
    * name = "rule-66"
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
    * name = "rule-67"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "meta"
      * variable = "newMeta"
      * transform = #create
      * parameter.valueString = "Meta"
    * rule
      * name = "rule-68"
      * source.context = "src"
      * target
        * context = "newMeta"
        * contextType = #variable
        * element = "profile"
        * transform = #copy
        * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Condition"
  * rule[+]
    * name = "rule-69"
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
    * name = "rule-70"
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
    * name = "rule-71"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "category"
      * variable = "newCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule
      * name = "rule-72"
      * source.context = "src"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "rule-73"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/us/core/CodeSystem/condition-category"
      * rule[+]
        * name = "rule-74"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "health-concern"
      * rule[+]
        * name = "rule-75"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Health Concern"
  * rule[+]
    * name = "rule-76"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "category"
      * variable = "newCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule
      * name = "rule-77"
      * source.context = "src"
      * target
        * context = "newCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "rule-78"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/us/sdoh-clinicalcare/CodeSystem/SDOHCC-CodeSystemTemporaryCodes"
      * rule[+]
        * name = "rule-79"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "food-insecurity"
      * rule[+]
        * name = "rule-80"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Food Insecurity"
  * rule[+]
    * name = "rule-81"
    * source.context = "src"
    * target
      * context = "condition"
      * contextType = #variable
      * element = "code"
      * variable = "newCodeCC"
      * transform = #create
      * parameter.valueString = "CodeableConcept"
    * rule[0]
      * name = "rule-82"
      * source.context = "src"
      * target
        * context = "newCodeCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "rule-83"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://snomed.info/sct"
      * rule[+]
        * name = "rule-84"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "733423003"
      * rule[+]
        * name = "rule-85"
        * source.context = "src"
        * target
          * context = "newCoding"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Food insecurity"
    * rule[+]
      * name = "rule-86"
      * source.context = "src"
      * target
        * context = "newCodeCC"
        * contextType = #variable
        * element = "coding"
        * variable = "newCoding2"
        * transform = #create
        * parameter.valueString = "Coding"
      * rule[0]
        * name = "rule-87"
        * source.context = "src"
        * target
          * context = "newCoding2"
          * contextType = #variable
          * element = "system"
          * transform = #copy
          * parameter.valueString = "http://hl7.org/fhir/sid/icd-10-cm"
      * rule[+]
        * name = "rule-88"
        * source.context = "src"
        * target
          * context = "newCoding2"
          * contextType = #variable
          * element = "code"
          * transform = #copy
          * parameter.valueString = "Z59.4"
      * rule[+]
        * name = "rule-89"
        * source.context = "src"
        * target
          * context = "newCoding2"
          * contextType = #variable
          * element = "display"
          * transform = #copy
          * parameter.valueString = "Lack of adequate food and safe drinking water"
  * rule[+]
    * name = "rule-90"
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
    * name = "rule-91"
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
      * name = "rule-92"
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
    * name = "rule-93"
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
      * name = "rule-94"
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
      * name = "rule-95"
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
* group[+]
  * name = "SetConditionFullUrl"
  * typeMode = #none
  * input[0]
    * name = "condition"
    * type = "sdohccCondition"
    * mode = #source
  * input[+]
    * name = "entry"
    * type = "Any"
    * mode = #target
  * rule
    * name = "rule-96"
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