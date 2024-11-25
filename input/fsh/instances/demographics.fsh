Instance: demographics
InstanceOf: SDCQuestionnaireExtractDefinition
Title: "Questionnaire - Demographics Example"
Usage: #example
* extension[$questionnaire-launchContext]
  * extension[name].valueCoding = $launchContext#patient
  * extension[type].valueCode = #Patient
* insert definitionExtract(http://hl7.org/fhir/StructureDefinition/Patient)
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/demographics"
* name = "DemographicExample"
* title = "Questionnaire - Demographics Example"
* status = #draft
* experimental = true
* subjectType = #Patient
* description = "A sample questionnaire using context-based population and extraction"
* item[0]
  * insert item(patient.id,http://hl7.org/fhir/StructureDefinition/Patient#Patient.id, (internal use\), #string)
  * readOnly = true
  * insert hidden()
  * insert initialExpression(%patient.id)
* item[+]
  * insert item(patient.birthDate, http://hl7.org/fhir/StructureDefinition/Patient#Patient.birthDate, Date of birth, #date)
  * required = true
  * insert initialExpression(%patient.birthDate)
* item[+]
  * insert item(patient.name,http://hl7.org/fhir/StructureDefinition/Patient#Patient.name,Name(s\),#group)
  * repeats = true
  * insert itemPopulationContext(patientName, #text/fhirpath, %patient.name)
  * item[0]
    * insert item(patient.name.family, http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.family, Family name,#string)
    * required = true
    * insert initialExpression(%patientName.family)
  * item[+]
    * insert item(patient.name.given,http://hl7.org/fhir/StructureDefinition/Patient#Patient.name.given,Given name(s\),#string)
    * required = true
    * repeats = true
    * insert initialExpression(%patientName.given)
* item[+]
  * insert item(relative,,[[Relatives, caregivers and other personal relationships]],#group)
  * repeats = true
  * insert itemPopulationContext(relative, #application/x-fhir-query, RelatedPerson?patient={{%patient.id}})
  * insert definitionExtract(http://hl7.org/fhir/StructureDefinition/RelatedPerson)
  * item[0]
    * insert hidden()
    * insert initialExpression(%relative.id)
    * insert item(relative.id,http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.id,(internal use\),#string)
    * readOnly = true
  * item[+]
    * insert initialExpression(%relative.relationship)
    * insert item(relative.relationship,http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.relationship,Name(s\),#choice)
    * required = true
    * repeats = true
    * answerValueSet = "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
  * item[+]
    * insert item(relative.name,http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name,Name(s\),#group)
    * repeats = true
    * insert itemPopulationContext(relativeName, #text/fhirpath, %relative.name)
    * item[0]
      * insert item(relative.name.family,http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.family,Family name,#string)
      * required = true
      * insert initialExpression(%relativeName.family)
    * item[+]
      * insert item(relative.name.given,http://hl7.org/fhir/StructureDefinition/RelatedPerson#RelatedPerson.name.given,Given name(s\),#string)
      * required = true
      * repeats = true
      * insert initialExpression(%relativeName.given)