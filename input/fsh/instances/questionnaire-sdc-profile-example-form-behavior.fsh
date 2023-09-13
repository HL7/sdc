Instance: questionnaire-sdc-profile-example-form-behavior
InstanceOf: SDCQuestionnaireBehave
Title: "SDC-Advanced Form Behavior"
Description: "Demo questionnaire showing most of the advanced form behavior capabilities of SDC. Each example here is itemized in the Examples page."
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "weight"
    * language = #text/fhirpath
    * expression = "%resource.repeat(item).where(linkId='3.3.1').item.answer.valueDecimal"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = "height"
    * language = #text/fhirpath
    * expression = "%resource.repeat(item).where(linkId='3.3.2').item.answer.valueDecimal*0.0254"
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/cqf-library"
  * valueCanonical = "http://example.org/Library/MeasurementLimits"
* extension[+]
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#patient "Patient"
  * extension[+]
    * url = "type"
    * valueCode = #Patient
  * extension[+]
    * url = "description"
    * valueString = "The patient that is to be used to pre-populate the form"
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-endpoint"
  * valueUri = "http://example.org/QuestionnaireResponse/create"
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-entryMode"
  * valueCode = #sequential
* url = "http://build.fhir.org/ig/HL7/sdc/questionnaire-sdc-profile-example-form-behavior"
* name = "SDCAdvancedRenderingExample"
* status = #draft
* item[0]
  * linkId = "1"
  * text = "Value constraints"
  * type = #group
  * item[0]
    * linkId = "1.1"
    * text = "First Name"
    * type = #string
    * maxLength = 50
  * item[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/minLength"
    * extension.valueInteger = 2
    * linkId = "1.2"
    * text = "Last Name"
    * type = #string
  * item[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/regex"
    * extension.valueString = "[A-Z][0-9][A-Z] [0-9][A-Z][0-9]"
    * linkId = "1.3"
    * text = "Postal Code (A1A 1A1)"
    * type = #string
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/minValue"
      * valueDecimal = 1
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
      * valueDecimal = 100
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces"
      * valueInteger = 2
    * linkId = "1.4"
    * text = "Enter your weight in kg"
    * type = #decimal
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet"
      * valueCanonical = "http://hl7.org/fhir/ValueSet/ucum-bodyweight"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minQuantity"
      * valueQuantity = 10 'kg'
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxQuantity"
      * valueQuantity = 100 'kg'
    * linkId = "1.5"
    * text = "Body Weight"
    * type = #quantity
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/mimeType"
      * valueCode = #image/jpeg
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/mimeType"
      * valueCode = #application/pdf
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/maxSize"
      * valueDecimal = 1048576
    * linkId = "1.6"
    * text = "Attach Proof of Citizenship"
    * type = #attachment
* item[+]
  * linkId = "2"
  * text = "Value constraints"
  * type = #group
  * item[0]
    * linkId = "2.1"
    * text = "(I/We) worried whether (my/our) food would run out before (I/we) got money to buy more."
    * type = #choice
    * answerOption[0]
      * valueCoding = $loinc#LA28397-0 "Often true"
    * answerOption[+]      
      * valueCoding = $loinc#LA6729-3 "Sometimes true"
    * answerOption[+]       
      * valueCoding = $loinc#LA28398-8 "Never true"
    * answerOption[+]       
      * valueCoding = $loinc#LA15775-2 "Don't know/refused"
  * item[+]
    * linkId = "2.3"
    * text = "Activity Level"
    * type = #choice
    * answerValueSet = "http://loinc.org/vs/LL4882-8"
  * item[+]
    * linkId = "2.5"
    * text = "Applicable health conditions"
    * type = #choice
    * repeats = true
    * answerValueSet = "#vsConditionsAll"
    * extension[0]
      * extension[0]
        * url = "option"
        * valueCoding = $conditions#3
      * extension[+]
        * url = "expression"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "%patient.gender!='male'"
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerOptionsToggleExpression"
    * extension[+]
      * extension[0]
        * url = "option"
        * valueCoding = $conditions#4
      * extension[+]
        * url = "expression"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "%patient.gender!='female'"
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerOptionsToggleExpression"
  * item[+]
    * linkId = "2.6"
    * text = "Email*"
    * type = #string
    * required = true
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression.description = "current date"
      * valueExpression.language = #text/fhirpath
      * valueExpression.expression = "today()"
    * linkId = "2.7"
    * text = "Current Date:"
    * type = #date
    * readOnly = true
  * item[+]
    * linkId = "2.7.1"
    * text.extension
      * url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
      * valueExpression.description = "Substitute in current date"
      * valueExpression.language = #text/fhirpath
      * valueExpression.expression = "'Please only enter data that has been validated as of ' + today()"
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel"
      * valueString = "Other event (specify)"
    * linkId = "2.8"
    * text = "Heart History (check all that applies)"
    * type = #open-choice
    * repeats = true
    * answerOption[0].valueCoding = $procedures#U1 "Heart attack"
    * answerOption[+].valueCoding = $procedures#U2 "Heart surgery"
    * answerOption[+].valueCoding = $procedures#U3 "Cardiac catheterization"
    * answerOption[+].valueCoding = $procedures#U4 "Coronary angioplasty (PTCA)"
    * answerOption[+].valueCoding = $procedures#U5 "Cardiac pacemaker"
  * item[+]
    * linkId = "2.9"
    * text = "Heart History (check at least 2):"
    * type = #choice
    * required = true
    * repeats = true
    * answerOption[0].valueCoding = $procedures#U1 "Heart attack"
    * answerOption[+].valueCoding = $procedures#U2 "Heart surgery"
    * answerOption[+].valueCoding = $procedures#U3 "Cardiac catheterization"
    * answerOption[+].valueCoding = $procedures#U4 "Coronary angioplasty (PTCA)"
    * answerOption[+].valueCoding = $procedures#U5 "Cardiac pacemaker"
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minOccurs"
      * valueUnsignedInt = 2
  * item[+]
    * linkId = "2.10"
    * text = "Heart History (check no more than 3):"
    * type = #choice
    * required = true
    * repeats = true
    * answerOption[0].valueCoding = $procedures#U1 "Heart attack"
    * answerOption[+].valueCoding = $procedures#U2 "Heart surgery"
    * answerOption[+].valueCoding = $procedures#U3 "Cardiac catheterization"
    * answerOption[+].valueCoding = $procedures#U4 "Coronary angioplasty (PTCA)"
    * answerOption[+].valueCoding = $procedures#U5 "Cardiac pacemaker"
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxOccurs"
      * valueUnsignedInt = 3 
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
      * valueCodeableConcept = $questionnaire-item-control#check-box "Check-box"
    * linkId = "2.11"
    * text = "What treatments do you now have for heart disease? (select all that applies)"
    * type = #choice
    * repeats = true
    * answerOption[0].valueCoding = $treatments#noTreatment "NoTreatment"
    * answerOption[+].valueCoding = $treatments#aspirin "Aspirin"
    * answerOption[+].valueCoding = $treatments#otherMeds "Other medicines, tablets, or pills"
    * answerOption[+].valueCoding = $treatments#diet "Diet"
    * answerOption[+].valueCoding = $treatments#exercise "Exercise"
    * answerOption[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-optionExclusive"
        * valueBoolean = true
      * valueCoding = $treatments#none "None of the above"
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
      * valueCoding = $unitsofmeasure#mL "mL"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
      * valueCoding = $unitsofmeasure#L "L"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
      * valueCoding = $unitsofmeasure#g "g"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption"
      * valueCoding = $unitsofmeasure#mg "mg"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-unitOpen"
      * valueCode = #optionsOrType
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-unitSupplementalSystem"
      * valueCanonical = "http://example.org/SomeUnitCodeSystem"
    * linkId = "2.12"
    * text = "Dosage"
    * type = #quantity
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet"
      * valueCanonical = "http://hl7.org/fhir/ValueSet/age-units"
    * linkId = "2.13"
    * text = "Specify age:"
    * type = #quantity
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceResource"
      * valueCode = #Practitioner
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-referenceProfile"
      * valueCanonical = "http://example.org/fhir/StructureDefinition/my-practitioner"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-lookupQuestionnaire"
      * valueCanonical = "http://example.org/Questionnaire/1234"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-answerExpression"
      * valueExpression
        * description = "all active practitioners"
        * language = #application/x-fhir-query
        * expression = "Practitioner?active=true&_sort=family,given"
    * extension[+]
      * extension[0]
        * url = "path"
        * valueString = "name.where(use='official').family + ', ' + name.where(use='official').given.first()"
      * extension[+]
        * url = "forDisplay"
        * valueBoolean = true
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * linkId = "2.14"
    * text = "Select your preferred practitioner:"
    * type = #reference
* item[+]
  * linkId = "3"
  * text = "Calculation"
  * type = #group
  * item[0]
    * extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
    * extension.valueExpression.description = "deadline for submission"
    * extension.valueExpression.language = #text/fhirpath
    * extension.valueExpression.expression = "today() + 7 days"
    * linkId = "3.1"
    * text = "Deadline for submission (7 days from now)"
    * type = #date
    * readOnly = true
  * item[+]
    * linkId = "3.2"
    * type = #group
    * item[0]
      * extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * extension.valueExpression.description = "patient's last name"
      * extension.valueExpression.language = #text/fhirpath
      * extension.valueExpression.expression = "%patient.name.where(use='official').given.first()"
      * linkId = "3.2.1"
      * text = "Last Name:"
      * type = #string
      * readOnly = true
    * item[+]
      * extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * extension.valueExpression.description = "patient's first name"
      * extension.valueExpression.language = #text/fhirpath
      * extension.valueExpression.expression = "%patient.name.where(use='official').family()"
      * linkId = "3.2.2"
      * text = "First Name:"
      * type = #string
      * readOnly = true
    * item[+]
      * extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * extension.valueExpression.description = "patient's gender"
      * extension.valueExpression.language = #text/fhirpath
      * extension.valueExpression.expression = "%patient.gender"
      * linkId = "3.2.3"
      * text = "Gender:"
      * type = #string
      * readOnly = true
  * item[+]
    * linkId = "3.3"
    * text = "Calculated Expression"
    * type = #group
    * item[0]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
      * extension.valueCoding = $unitsofmeasure#kg
      * linkId = "3.3.1"
      * text = "Weight (kg)"
      * type = #decimal
    * item[+]
      * extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
      * extension.valueCoding = $unitsofmeasure#[in_i]
      * linkId = "3.3.2"
      * text = "Body Height (inches)"
      * type = #decimal
    * item[+]
      * extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
      * extension.valueExpression.description = "BMI Calculation"
      * extension.valueExpression.language = #text/fhirpath
      * extension.valueExpression.expression = "(%weight/(%height.power(2))).round(1)"
      * linkId = "3.3.3"
      * text = "Your Body Mass Index (BMI)"
      * type = #decimal
      * readOnly = true
  * item[+]
    * linkId = "3.4"
    * text = "CQF-related Example"
    * type = #group
    * item[0]
      * extension[0]
        * url = "http://hl7.org/fhir/StructureDefinition/minValue"
        * valueDecimal.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
        * valueDecimal.extension.valueString = "min_weight"
        * valueDecimal = 1
      * extension[+]
        * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
        * valueDecimal.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue"
        * valueDecimal.extension.valueString = "max_weight"
        * valueDecimal = 100
      * linkId = "3.4.1"
      * text = "Enter weight in kg"
      * type = #decimal
    * item[+]
      * linkId = "3.4.2"
      * text = "Enter email address"
      * type = #string
      * required.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
      * required.extension.valueExpression.description = "current date"
      * required.extension.valueExpression.language = #text/fhirpath
      * required.extension.valueExpression.expression = "%patient.active"
      * required = false
  * item[+]
    * linkId = "3.5"
    * text.extension.url = "http://hl7.org/fhir/StructureDefinition/cqf-expression"
    * text.extension.valueExpression.description = "last immunization date"
    * text.extension.valueExpression.language = #text/fhirpath
    * text.extension.valueExpression.expression = "'Your last immunization was on '+ %Immunization.occurrenceDateTime.substring(0,10) + '.'"
    * type = #display
* item[+]
  * linkId = "4"
  * text = "Other Controls"
  * type = #group
  * item[0]
    * linkId = "4.1"
    * text = "Marital Status"
    * type = #choice
    * answerValueSet = "http://hl7.org/fhir/ValueSet/marital-status"
    * initial.valueCoding = $v3-MaritalStatus#D "Divorced"
  * item[+]
    * type = #group
    * linkId = "4.2"      
    * item[0]
      * linkId = "4.2.1"
      * text = "Choose Gender"
      * type = #choice
      * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
    * item[+]
      * linkId = "4.2.2"
      * text = "Are you pregnant? (enableWhen = gender is Female)"
      * type = #choice
      * enableWhen.question = "4.2.1"
      * enableWhen.operator = #=
      * enableWhen.answerCoding = $administrative-gender#female
      * answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
    * item[+]
      * linkId = "4.2.3"
      * text = "Are you diabetic? (enableWhen = gender is Female)"
      * type = #choice
      * enableWhen.question = "4.2.1"
      * enableWhen.operator = #=
      * enableWhen.answerCoding = $administrative-gender#female
      * answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
    * item[+]
      * linkId = "4.2.4"
      * text = "Have you been diagnosed with Gestational Diabetes? (enableBehavior = only when pregnant and diabetic)"
      * type = #choice
      * enableWhen[0]
        * question = "4.2.2"
        * operator = #=
        * answerCoding = $v2-0136#Y
      * enableWhen[+]
        * question = "4.2.3"
        * operator = #=
        * answerCoding = $v2-0136#Y
      * enableBehavior = #all
      * answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
        * valueString = "MM/DD/YYYY"
      * linkId = "4.2.5"
      * text = "Enter your birthdate (MM/DD/YYYY)"
      * type = #date
      * answerValueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-enableWhenExpression"
        * valueExpression.description = "if last 2 questions were answered"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "%resource.repeat(item).where(linkId='4.2.b.1').answer.value.code ='female' and today().toString().substring(0, 4).toInteger() - %resource.repeat(item).where(linkId='4.2.b.5').answer.value.toString().substring(0, 4).toInteger() >= 40"
      * linkId = "4.2.6"
      * text = "Have you had mammogram before?(enableWhenExpression = only when gender is female and age > 40)"
      * type = #choice
      * answerValueSet = "http://hl7.org/fhir/ValueSet/yesnodontknow"
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-signatureRequired"
      * valueCodeableConcept = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.8 "Signature Witness Signature"
      * valueCodeableConcept.text = "the signature of a witness to any other signature."
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-usageMode"
      * valueCode = #capture
    * linkId = "4.4"
    * text = "Signature of Patient"
    * type = #attachment
    * required = true
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
      * valueExpression.description = "active practitioners that speak at least one of the patient's language"
      * valueExpression.language = #application/x-fhir-query
      * valueExpression.expression = "Practitioner?communication=&active=true"
    * extension[+]
      * extension[0].url = "path"
      * extension[=].valueString = "name.first().family"
      * extension[+].url = "label"
      * extension[=].valueString = "LAST NAME"
      * extension[+].url = "width"
      * extension[=].valueQuantity = 40 '%'
      * extension[+].url = "forDisplay"
      * extension[=].valueBoolean = true
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * extension[+]
      * extension[0].url = "path"
      * extension[=].valueString = "name.first().given.first()"
      * extension[+].url = "label"
      * extension[=].valueString = "FIRST NAME"
      * extension[+].url = "width"
      * extension[=].valueQuantity = 40 '%'
      * extension[+].url = "forDisplay"
      * extension[=].valueBoolean = true
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * extension[+]
      * extension[0].url = "path"
      * extension[=].valueString = "gender"
      * extension[+].url = "label"
      * extension[=].valueString = "GENDER"
      * extension[+].url = "width"
      * extension[=].valueQuantity = 20 '%'
      * extension[+].url = "forDisplay"
      * extension[=].valueBoolean = false
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-choiceColumn"
    * linkId = "4.5"
    * text = "All the practitioners below can speak the patient's language. Choose all preferred practioners:"
    * type = #reference
    * repeats = true
  * item[+]
    * extension[0]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
      * valueExpression.description = "Home address of the patient"
      * valueExpression.language = #text/fhirpath
      * valueExpression.expression = "%patient.address.where(use='home')[0]"
    * extension[+]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
      * valueExpression.description = "Home address of the patient"
      * valueExpression.language = #text/fhirpath
      * valueExpression.expression = "%patient.address.where(use='home')[0]"
    * linkId = "4.6"
    * type = #group
    * item[0]
      * linkId = "4.6.1"
      * text = "Home Address"
      * type = #display 
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression.description = "Address Line 1"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "line[0]"
      * linkId = "4.6.2"
      * definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.line"
      * text = "Address"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression.description = "City"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "city"
      * linkId = "4.6.3"
      * definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.city"
      * text = "City"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression.description = "State"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "state"
      * linkId = "4.6.4"
      * definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.state"
      * text = "Province"
      * type = #choice
      * answerOption[0].valueCoding = $provinces#Alberta "Alberta"
      * answerOption[+].valueCoding = $provinces#BritishColumbia "British Columbia"
      * answerOption[+].valueCoding = $provinces#Manitoba "Manitoba"
      * answerOption[+].valueCoding = $provinces#NewBrunswick "New Brunswick"
      * answerOption[+].valueCoding = $provinces#NewfoundlandAndLabrador "Newfoundland and Labrador"
      * answerOption[+].valueCoding = $provinces#NovaScotia "Nova Scotia"
      * answerOption[+].valueCoding = $provinces#Ontario "Ontario"
      * answerOption[+].valueCoding = $provinces#PrinceEdwardIsland "Prince Edward Island"
      * answerOption[+].valueCoding = $provinces#Quebec "Quebec"
      * answerOption[+].valueCoding = $provinces#Saskatchewan "Saskatchewan"
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression.description = "Postal Code"
        * valueExpression.language = #text/fhirpath
        * valueExpression.expression = "postalCode"
      * linkId = "4.6.5"
      * definition = "http://hl7.org/fhir/StructureDefinition/Patient#Patient.address.postalCode"
      * text = "Postal Code"
      * type = #string



      
