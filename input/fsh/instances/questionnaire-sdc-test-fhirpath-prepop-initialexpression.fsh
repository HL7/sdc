Instance: questionnaire-sdc-test-fhirpath-prepop-initialexpression
InstanceOf: SDCQuestionnairePopulateExpression
Title: "SDC Test Form - Initial Expression"
Description: "A test form with a FHIRPath based prepopulation simple example."
Usage: #example
* extension[0]
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
  * extension[0]
    * url = "name"
    * valueCoding = $launchContext#user "User"
  * extension[+]
    * url = "type"
    * valueCode = #Practitioner
  * extension[+]
    * url = "description"
    * valueString = "The practitioner that is to be used to pre-populate the form"
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-fhirpath-prepop-initialexpression"
* name = "FhirPathPrepopSimple"
* title = "Questionnaire Pre-Population"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "FhirPath based prepopulation simple example"
* item
  * linkId = "grp"
  * type = #group
  * item[0]
    * linkId = "part-details"
    * text = "Participant details"
    * type = #group
    * repeats = false
    * item[0]
      * linkId = "participant-id"
      * text = "Participant ID number"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.identifier.where(system='http://ns.electronichealth.net.au/id/medicare-number').value.first()"
      * linkId = "medicare-number"
      * text = "Medicare number"
      * type = #string
      * required = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.identifier.where(system='http://ns.electronichealth.net.au/id/dva').value.first()"
      * linkId = "dva-number"
      * text = "DVA number"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.name.first().family.first()"
      * linkId = "family-name"
      * text = "Family name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.name.first().given.first()"
      * linkId = "given-names"
      * text = "Given name(s)"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.birthDate"
      * linkId = "dob"
      * text = "Date of birth"
      * type = #date
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.telecom.where(system='phone').select(($this.where(use='mobile') | $this.where(use='home')).first().value)"
      * linkId = "contact-number"
      * text = "Contact telephone number"
      * type = #string
      * item
        * linkId = "contact-number-tooltip"
        * text = "(mobile or land line including area code)"
        * type = #text
  * item[+]
    * linkId = "provider-details"
    * text = "Provider details"
    * type = #group
    * repeats = false
    * readOnly = true
    * item[0]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%user.identifier.where(system='http://ns.electronichealth.net.au/id/hi/prn').first().value"
      * linkId = "provider-number"
      * text = "Provider number for payment"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "today()"
      * linkId = "date-consult"
      * text = "Date of consultation"
      * type = #date
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%user.name.first().select(given.first() + ' ' + family.first())"
      * linkId = "provider-name"
      * text = "Name"
      * type = #string
      * readOnly = true