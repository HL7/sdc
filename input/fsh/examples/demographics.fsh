Instance: demographics
InstanceOf: SDCQuestionnaireExtractDefinition
Title: "Questionnaire - Demographics Example"
Usage: #example
* extension[$questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#patient
  * extension[type].valueCode = #Patient
* insert itemExtractionContext(#application/x-fhir-query, Patient?_id={{%25patient.id}})
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/demographics"
* name = "DemographicExample"
* title = "Questionnaire - Demographics Example"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "A sample questionnaire using context-based population and extraction"
* item[0]
  * insert item(patient.id,Patient.id,(internal use\), #string)
  * readOnly = true
  * insert hidden()
  * insert initialExpression(%patient.id)
* item[+]
  * insert item(patient.birthDate, Patient.birthDate, Date of birth, #date)
  * required = true
  * insert initialExpression(%patient.birthDate)
* item[+]
  * insert item(patient.name,Patient.name,Name(s\),#group)
  * repeats = true
  * insert itemPopulationContext(patientName, #text/fhirpath, %patient.name)
  * item[0]
    * insert item(patient.name.family,Patient.name.family,Family name,#string)
    * required = true
    * insert initialExpression(%patientName.family)
  * item[+]
    * insert item(patient.name.given,Patient.name.given,Given name(s\),#string)
    * required = true
    * repeats = true
    * insert initialExpression(%patientName.given)
* item[+]
  * insert item(relative,RelatedPerson,[[Relatives, caregivers and other personal relationships]],#group)
  * repeats = true
  * insert itemPopulationContext(relative, #application/x-fhir-query, RelatedPerson?patient={{%patient.id}})
  * insert itemExtractionContext(#application/x-fhir-query, RelatedPerson?patient={{%patient.id}})
  * item[0]
    * insert hidden()
    * insert initialExpression(%relative.id)
    * insert item(relative.id,RelatedPerson.id,(internal use\),#string)
    * readOnly = true
  * item[+]
    * insert initialExpression(%relative.relationship)
    * insert item(relative.relationship,RelatedPerson.relationship,Name(s\),#choice)
    * required = true
    * repeats = true
    * answerValueSet = "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
  * item[+]
    * insert item(relative.name,RelatedPerson.name,Name(s\),#group)
    * repeats = true
    * insert itemPopulationContext(relativeName, #text/fhirpath, %relative.name)
    * item[0]
      * insert item(relative.name.family,RelatedPerson.name.family,Family name,#string)
      * required = true
      * insert initialExpression(%relativeName.family)
    * item[+]
      * insert item(relative.name.given,RelatedPerson.name.given,Given name(s\),#string)
      * required = true
      * repeats = true
      * insert initialExpression(%relativeName.given)