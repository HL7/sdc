Instance: questionnaire-sdc-test-fhirpath-prepop-source-query
InstanceOf: SDCQuestionnairePopulateStructureMap
Title: "SDC Test Form - Source Query"
Description: "A test form with a FhirPath based prepopulation and StructureMap population that leverages a source query to extract data outside the launch context."
Usage: #example
* contained[+] = PrePopQuery
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * extension[+]
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
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceQueries"
  * valueReference = Reference(PrePopQuery)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-sourceStructureMap"
  * valueCanonical = "http://hl7.org/fhir/uv/sdc/StructureMap/QuestionnairePopulationTransform"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-fhirpath-prepop-source-query"
* name = "FhirPathPrepopSourceQuery"
* title = "Questionnaire Pre-Population"
* status = #active
* experimental = true
* subjectType = #Patient
* description = "FhirPath based prepopulation example that leverages a source query to extract data outside the launch context"
* item
  * linkId = "grp"
  * type = #group
  * item[+]
    * linkId = "part-details"
    * text = "Participant details"
    * type = #group
    * repeats = false
    * item[+]
      * linkId = "participant-id"
      * text = "Participant ID number"
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
          * expression = "%PrePopQuery.entry.first().resource.total"
      * linkId = "condition-count"
      * text = "Number of active Conditions"
      * type = #integer
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemPopulationContext"
      * valueExpression
        * description = "The set of MedicationRequests from the search context"
        * name = "mrItem"
        * language = #text/fhirpath
        * expression = "%PrePopQuery.entry.skip(1).first().resource"
    * linkId = "meds"
    * text = "Medications"
    * type = #group
    * repeats = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%mrItem.medication.select(iif(text.exists(), text, coding.display.first()))"
      * linkId = "med-name"
      * text = "Name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%mrItem.status.toString()"
      * linkId = "med-status"
      * text = "Status"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
        * valueExpression
          * language = #text/fhirpath
          * expression = "%mrItem.category.coding.where(system='http://terminology.hl7.org/CodeSystem/medicationrequest-category').code"
      * linkId = "med-category"
      * text = "Standard Category"
      * type = #choice
      * repeats = true
      * answerValueSet = "http://hl7.org/fhir/ValueSet/medicationrequest-category"

Instance: PrePopQuery
InstanceOf: Bundle
Usage: #inline
* type = #batch
* entry[+]
  * fullUrl = "urn:uuid:43c8e58d-099f-425c-a219-564266a518dc"
  * request
    * method = #GET
    * url = "Patient?_id={{%37patient.id}}"
* entry[+]
  * fullUrl = "urn:uuid:88f151c0-a954-468a-88bd-5ae15c08e059"
  * request
    * method = #GET
    * url = "Condition?patient={{%37patient.id}}&active=true"
* entry[+]
  * fullUrl = "urn:uuid:88f151c0-a954-468a-88bd-5ae15c08e060"
  * request
    * method = #GET
    * url = "MedicationStatement?patient={{%37patient.id}}&active=true&_include=MedicationStatement:medication"