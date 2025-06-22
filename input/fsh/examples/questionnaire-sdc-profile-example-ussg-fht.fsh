Instance: questionnaire-sdc-profile-example-ussg-fht
InstanceOf: SDCQuestionnairePopulateObservation
Title: "SDC-LOINC USSG Family History"
Description: "LOINC US Surgeon General family history including data elements and value sets."
Usage: #example
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* meta
  * profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-pop-obsn"
  * profile[+] = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-search"
* contained[+] = length
* contained[+] = weight
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#date
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-ussg-fht"
* identifier
  * system = "http://example.org/panel-id"
  * value = "54127-6"
* version = "2015"
* name = "USSurgeonGeneralFamilyHealthPortrait"
* title = "US Surgeon General - Family Health Portrait"
* status = #active
* experimental = true
* subjectType = #Patient
* date = "2015"
* publisher = "Regenstrief Institute, Inc and the LOINC Committee"
* contact.telecom
  * system = #url
  * value = "http://loinc.org"
* description = "This represents an implementation of the \"US Surgeon General family health portrait\" form found at https://lforms-demo.nlm.nih.gov"
* useContext
  * code = $usage-context-type#species
  * valueCodeableConcept = $sct#337915000 "Homo sapiens"
* jurisdiction = urn:iso:std:iso:3166#US
* purpose = "Captures basic family history information"
* copyright = "(c) 2015 Regenstrief Institute"
* approvalDate = "2015-10-31"
* lastReviewDate = "2017-03-15"
* code = $loinc#54127-6 "US Surgeon General family health portrait [USSG-FHT]"
* item[+]
  * linkId = "0"
  * type = #group
  * item[+]
    * linkId = "0.1"
    * text = "Date Done"
    * type = #date
  * item[+]
    * linkId = "0.2"
    * text = "Time Done"
    * type = #time
  * item[+]
    * linkId = "0.3"
    * text = "Where Done"
    * type = #string
  * item[+]
    * linkId = "0.4"
    * text = "Comment"
    * type = #string
* item[+]
  * linkId = "1"
  * code = $loinc#54126-8
  * text = "Your health information"
  * type = #group
  * required = true
  * item[+]
    * linkId = "1.1"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.1"
      * code = $loinc#54125-0
      * text = "Name"
      * type = #string
      * maxLength = 200
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.2"
      * code = $loinc#54131-8
      * text = "Gender"
      * type = #choice
      * required = true
      * answerValueSet = "http://loinc.org/vs/LL1-9"
      * item
        * linkId = "1.1.2.1.1"
        * text = "Please specify"
        * type = #string
        * enableWhen
          * question = "1.1.2"
          * operator = #=
          * answerCoding = $loinc#LA46-8
        * required = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.3"
      * code = $loinc#21112-8
      * text = "Date of Birth"
      * type = #date
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.4"
      * code = $loinc#54132-6
      * text = "Were you born a twin?"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL623-0"
      * initial.valueCoding = $loinc#LA32-8 "No"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.5"
      * code = $loinc#54128-4
      * text = "Were you adopted?"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL361-7"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.6"
      * code = $loinc#54135-9
      * text = "Are your parents related to each other in any way other than marriage?"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL361-7"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.7"
      * code = $loinc#8302-2
      * text = "Height"
      * type = #decimal
      * required = true
      * item
        * linkId = "1.1.7.1.1"
        * text = "Units"
        * type = #choice
        * answerValueSet = "#length"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.8"
      * code = $loinc#29463-7
      * text = "Weight"
      * type = #decimal
      * item
        * linkId = "1.1.8.1.1"
        * text = "Units"
        * type = #choice
        * answerValueSet = "#weight"
    * item[+]
      * linkId = "1.1.9"
      * code = $loinc#39156-5
      * text = "Body mass index (BMI) [Ratio]"
      * type = #decimal
      * readOnly = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.10"
      * code = $loinc#54134-2
      * text = "Race"
      * type = #choice
      * required = true
      * answerValueSet = "http://loinc.org/vs/LL629-7"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.1.11"
      * code = $loinc#54133-4
      * text = "Ethnicity"
      * type = #choice
      * repeats = true
      * answerValueSet = "http://loinc.org/vs/LL628-9"
  * item[+]
    * linkId = "1.2"
    * code = $loinc#54137-5
    * text = "Your diseases history"
    * type = #group
    * repeats = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.2.1"
      * code = $loinc#54140-9
      * text = "Disease or Condition"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL626-3"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "1.2.2"
      * code = $loinc#54130-0
      * text = "Age at Diagnosis"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL619-8"
* item[+]
  * linkId = "2"
  * code = $loinc#54114-4
  * text = "Family member health information"
  * type = #group
  * repeats = true
  * item[+]
    * linkId = "2.1.1"
    * type = #group
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.1"
      * code = $loinc#54136-7
      * text = "Relationship to you"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL621-4"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.2"
      * code = $loinc#54138-3
      * text = "Name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.3"
      * code = $loinc#54123-5
      * text = "Gender"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL1-9"
      * item
        * linkId = "2.1.1.3.1.1"
        * text = "Please specify"
        * type = #string
        * enableWhen
          * question = "2.1.1.3"
          * operator = #=
          * answerCoding = $loinc#LA46-8
        * required = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.4"
      * code = $loinc#54139-1
      * text = "Living?"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL361-7"
      * item[+]
        * linkId = "2.1.1.4.1"
        * type = #group
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
            * valueDuration = 200 'a'
          * linkId = "2.1.1.4.1.1"
          * code = $loinc#54112-8
          * text = "Cause of Death"
          * type = #choice
          * answerValueSet = "http://loinc.org/vs/LL627-1"
          * item
            * linkId = "2.1.1.4.1.1.1"
            * text = "Please specify"
            * type = #string
            * enableWhen
              * question = "2.1.1.4.1.1"
              * operator = #=
              * answerCoding = $loinc#LA10589-2
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
            * valueDuration = 200 'a'
          * linkId = "2.1.1.4.1.2"
          * code = $loinc#54113-6
          * text = "Age at Death"
          * type = #choice
          * answerValueSet = "http://loinc.org/vs/LL619-8"
      * item[+]
        * linkId = "2.1.1.4.2"
        * type = #group
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
            * valueDuration = 200 'a'
          * linkId = "2.1.1.4.2.1"
          * code = $loinc#54124-3
          * text = "Date of Birth"
          * type = #date
        * item[+]
          * extension
            * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
            * valueDuration = 200 'a'
          * linkId = "2.1.1.4.2.2"
          * code = $loinc#54141-7
          * text = "Age"
          * type = #decimal
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.5"
      * code = $loinc#54121-9
      * text = "Was this person born a twin?"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL623-0"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.6"
      * code = $loinc#54122-7
      * text = "Was this person adopted?"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL623-0"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.7"
      * code = $loinc#54119-3
      * text = "Race"
      * type = #choice
      * repeats = true
      * answerValueSet = "http://loinc.org/vs/LL629-7"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.1.8"
      * code = $loinc#54120-1
      * text = "Ethnicity"
      * type = #choice
      * repeats = true
      * answerValueSet = "http://loinc.org/vs/LL628-9"
  * item[+]
    * linkId = "2.1.2"
    * code = $loinc#54117-7
    * text = "This family member's history of disease"
    * type = #group
    * repeats = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.2.1"
      * code = $loinc#54116-9
      * text = "Disease or Condition"
      * type = #choice
      * required = true
      * answerValueSet = "http://loinc.org/vs/LL626-3"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod"
        * valueDuration = 200 'a'
      * linkId = "2.1.2.2"
      * code = $loinc#54115-1
      * text = "Age at Diagnosis"
      * type = #choice
      * answerValueSet = "http://loinc.org/vs/LL619-8"
    * item[+]
      * linkId = "2.1.2.3"
      * text = "Mock-up item: Height"
      * type = #decimal
    * item[+]
      * linkId = "2.1.2.4"
      * text = "Mock-up item: Weight"
      * type = #decimal
    * item[+]
      * linkId = "2.1.2.5"
      * text = "Mock-up item: BMI"
      * type = #decimal

Instance: length
InstanceOf: ValueSet
Usage: #inline
* name = "LengthUnits"
* title = "Length Units"
* status = #active
* description = "Length units"
* immutable = true
* compose.include
  * system = "http://unitsofmeasure.org"
  * concept[+].code = #[in_i]
  * concept[=].display = "inch (international)"
  * concept[+].code = #cm
  * concept[=].display = "centimeters"

Instance: weight
InstanceOf: ValueSet
Usage: #inline
* name = "WeightUnits"
* title = "Weight Units"
* status = #active
* description = "Weight units"
* immutable = true
* compose.include
  * system = "http://unitsofmeasure.org"
  * concept[+].code = #[lb_av]
  * concept[=].display = "pound (US and British)"
  * concept[+].code = #kg
  * concept[=].display = "kilograms"