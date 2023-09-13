Instance: questionnaire-sdc-test-fhirpath-prepop-candexpr
InstanceOf: SDCQuestionnairePopulateExpression
Title: "SDC Test Form - Candidate Expression"
Description: "A test form with a FHIRPath based prepopulation example that includes a candidate expression."
Usage: #example
* extension
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
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-fhirpath-prepop-candexpr"
* name = "FhirPathPrepopCandExpr"
* title = "Questionnaire Pre-Population with a Candidate Expression"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "FhirPath based prepopulation example that includes a Candidate expression"
// Todo: Create Ruleset for item (when optional argument functionality is released)
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
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.name.first().family.first()"
      * linkId = "family-name"
      * text = "Family name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%patient.name.first().given.first()"
      * linkId = "given-names"
      * text = "Given name(s)"
      * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-candidateExpression"
      * valueExpression
        * description = "Set of active Patient contacts"
        * name = "selectedContact"
        * language = #application/x-fhir-query
        * expression = "RelatedPerson?patient={{%patient.id}}&active=true"
    * linkId = "contacts"
    * text = "Contacts"
    * type = #group
    * repeats = true
    * item[0]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%selectedContact.name.first().select(text | given.first() & ' ' & family)"
      * linkId = "cont-name"
      * text = "Contact Name"
      * type = #string
      * repeats = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%selectedContact.telecom.where(system='phone').first().value"
      * linkId = "cont-number"
      * text = "Contact Number"
      * type = #string
      * repeats = true