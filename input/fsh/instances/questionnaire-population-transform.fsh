Instance: questionnaire-population-transform
InstanceOf: StructureMap
Title: "SDC Map population StructureMap example"
Description: "An example of a StructureMap used to support the population of a QuestionnaireResponse from queried data"
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/StructureMap/questionnaire-population-transform"
* name = "QuestionnairePopulationTransform"
* title = "Questionnaire Population Transform"
* status = #draft
* experimental = true
* description = "Sample structure map showing process for auto-populating a QuestionnaireResponse from a query bundle"
* structure[0]
  * url = "http://hl7.org/fhir/StructureDefinition/Bundle"
  * mode = #source
* structure[+]
  * url = "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"
  * mode = #target
* group
  * name = "main"
  * typeMode = #none
  * insert input("src", "Bundle", #source)
  * insert input("qr", "QuestionnaireResponse", #target)
  * rule[0]
    * name = "questionnaire"
    * source.context = "src"
    * insert target("qr", #variable, "questionnaire", #copy, "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-test-fhirpath-prepop-source-query")
  * rule[+]
    * name = "status"
    * source.context = "src"
    * insert target("qr", #variable, "status", #copy, "in-progress")
  * rule[+]
    * name = "authored"
    * source.context = "src"
    * insert target("qr", #variable, "authored", #evaluate, "now(\)")
  * rule[+]
    * name = "subject"
    * source
      * context = "src"
      * element = "entry"
      * listMode = #first
      * variable = "patient"
    * target[0]
      * context = "qr"
      * contextType = #variable
      * element = "subject"
      * variable = "subject"
    * target[+]
      * context = "subject"
      * contextType = #variable
      * element = "reference"
      * transform = #evaluate
      * parameter.valueString = "patient.resource.entry.fullUrl"
  * rule[+]
    * name = "grp"
    * source.context = "src"
    * target[0]
      * context = "qr"
      * contextType = #variable
      * element = "item"
      * variable = "grp"
    * target[+]
      * context = "grp"
      * contextType = #variable
      * element = "linkId"
      * transform = #copy
      * parameter.valueString = "grp"
    * rule[0]
      * name = "part-details"
      * source.context = "src"
      * target[0]
        * context = "grp"
        * contextType = #variable
        * element = "item"
        * variable = "partDetails"
      * target[+]
        * context = "partDetails"
        * contextType = #variable
        * element = "linkId"
        * transform = #copy
        * parameter.valueString = "part-details"
      * rule[0]
        * name = "patientDetails"
        * source
          * context = "src"
          * element = "entry"
          * listMode = #first
          * variable = "patient"
        * target
          * contextType = #variable
          * transform = #copy
          * parameter.valueId = "partDetails"
        * rule[0]
          * name = "participantId"
          * source
            * context = "patient"
            * element = "resource"
            * variable = "patientRes"
          * target[0]
            * context = "partDetails"
            * contextType = #variable
            * element = "item"
            * variable = "participantId"
          * target[+]
            * context = "participantId"
            * contextType = #variable
            * element = "linkId"
            * transform = #copy
            * parameter.valueString = "participant-id"
          * rule
            * name = "participantIdValue"
            * source
              * context = "patientRes"
              * element = "entry"
              * variable = "patientResEntry"
            * target[0]
              * context = "participantId"
              * contextType = #variable
              * element = "answer"
              * variable = "participantIdAnswer"
            * target[+]
              * context = "participantIdAnswer"
              * contextType = #variable
              * element = "value"
              * transform = #evaluate
              * parameter.valueString = "patientResEntry.resource.id"
        * rule[+]
          * name = "familyName"
          * source
            * context = "patient"
            * element = "resource"
            * variable = "patientRes"
          * target[0]
            * context = "partDetails"
            * contextType = #variable
            * element = "item"
            * variable = "familyName"
          * target[+]
            * context = "familyName"
            * contextType = #variable
            * element = "linkId"
            * transform = #copy
            * parameter.valueString = "family-name"
          * rule
            * name = "familyNameValue"
            * source
              * context = "patientRes"
              * element = "entry"
              * variable = "patientResEntry"
            * target[0]
              * context = "familyName"
              * contextType = #variable
              * element = "answer"
              * variable = "familyNameAnswer"
            * target[+]
              * context = "familyNameAnswer"
              * contextType = #variable
              * element = "value"
              * transform = #evaluate
              * parameter.valueString = "patientResEntry.resource.name.first().family"
        * rule[+]
          * name = "givenName"
          * source
            * context = "patient"
            * element = "resource"
            * variable = "patientRes"
          * target[0]
            * context = "partDetails"
            * contextType = #variable
            * element = "item"
            * variable = "givenName"
          * target[+]
            * context = "givenName"
            * contextType = #variable
            * element = "linkId"
            * transform = #copy
            * parameter.valueString = "given-name"
          * rule
            * name = "givenNameValue"
            * source
              * context = "patientRes"
              * element = "entry"
              * variable = "patientResEntry"
            * target[0]
              * context = "givenName"
              * contextType = #variable
              * element = "answer"
              * variable = "givenNameAnswer"
            * target[+]
              * context = "givenNameAnswer"
              * contextType = #variable
              * element = "value"
              * transform = #evaluate
              * parameter.valueString = "patientResEntry.resource.name.first().given.aggregate(iif($total.empty(), $this, $total & ' ' & $this))"
        * rule[+]
          * name = "dob"
          * source
            * context = "patient"
            * element = "resource"
            * variable = "patientRes"
          * target[0]
            * context = "partDetails"
            * contextType = #variable
            * element = "item"
            * variable = "dob"
          * target[+]
            * context = "dob"
            * contextType = #variable
            * element = "linkId"
            * transform = #copy
            * parameter.valueString = "dob"
          * rule
            * name = "dobValue"
            * source
              * context = "patientRes"
              * element = "entry"
              * variable = "patientResEntry"
            * target[0]
              * context = "dob"
              * contextType = #variable
              * element = "answer"
              * variable = "dobAnswer"
            * target[+]
              * context = "dobAnswer"
              * contextType = #variable
              * element = "value"
              * transform = #evaluate
              * parameter.valueString = "patientResEntry.resource.birthDate"
      * rule[+]
        * name = "condition-count"
        * source
          * context = "src"
          * element = "entry"
          * variable = "conditions"
          * condition = "(resource.link.url.contains('/Condition?'))"
        * target[0]
          * context = "partDetails"
          * contextType = #variable
          * element = "item"
          * variable = "conditionItem"
        * target[+]
          * context = "conditionItem"
          * contextType = #variable
          * element = "linkId"
          * transform = #copy
          * parameter.valueString = "condition-count"
        * rule
          * name = "conditionCountAnswer"
          * source.context = "conditions"
          * target[0]
            * context = "conditionItem"
            * contextType = #variable
            * element = "answer"
            * variable = "conditionCountAnswer"
          * target[+]
            * context = "conditionCountAnswer"
            * contextType = #variable
            * element = "value"
            * transform = #evaluate
            * parameter.valueString = "conditions.resource.entry.count()"
    * rule[+]
      * name = "meds"
      * source
        * context = "src"
        * element = "entry"
        * variable = "medications"
        * condition = "(resource.link.url.contains('/MedicationStatement?'))"
      * target
        * contextType = #variable
        * transform = #copy
        * parameter.valueId = "grp"
      * rule
        * name = "medEntry"
        * source
          * context = "medications"
          * element = "resource"
          * variable = "medRes"
        * target
          * contextType = #variable
          * transform = #copy
          * parameter.valueId = "grp"
        * rule
          * name = "medItem"
          * source
            * context = "medRes"
            * element = "entry"
            * variable = "med"
            * condition = "(resource is MedicationStatement)"
          * target[0]
            * context = "grp"
            * contextType = #variable
            * element = "item"
            * variable = "medsItem"
          * target[+]
            * context = "medsItem"
            * contextType = #variable
            * element = "linkId"
            * transform = #copy
            * parameter.valueString = "meds"
          * rule[0]
            * name = "medsName"
            * source
              * context = "med"
              * element = "resource"
              * variable = "medResource"
            * target[0]
              * context = "medsItem"
              * contextType = #variable
              * element = "item"
              * variable = "medsName"
            * target[+]
              * context = "medsName"
              * contextType = #variable
              * element = "linkId"
              * transform = #copy
              * parameter.valueString = "meds-name"
            * rule
              * name = "medsNameAnswer"
              * source
                * context = "medResource"
                * element = "medication"
                * variable = "medMedication"
              * target[0]
                * context = "medsName"
                * contextType = #variable
                * element = "answer"
                * variable = "medsNameAnswer"
              * target[+]
                * context = "medsNameAnswer"
                * contextType = #variable
                * element = "value"
                * transform = #evaluate
                * parameter.valueString = "medMedication.select(iif(text, text, coding.display.first()))"
          * rule[+]
            * name = "medsStatus"
            * source
              * context = "med"
              * element = "resource"
              * variable = "medResource"
            * target[0]
              * context = "medsItem"
              * contextType = #variable
              * element = "item"
              * variable = "medsStatus"
            * target[+]
              * context = "medsStatus"
              * contextType = #variable
              * element = "linkId"
              * transform = #copy
              * parameter.valueString = "med-status"
            * rule
              * name = "medsStatusAnswer"
              * source
                * context = "medResource"
                * element = "medication"
                * variable = "medsMedication"
              * target[0]
                * context = "medsStatus"
                * contextType = #variable
                * element = "answer"
                * variable = "medsStatusAnswer"
              * target[+]
                * context = "medsStatusAnswer"
                * contextType = #variable
                * element = "value"
                * transform = #evaluate
                * parameter.valueString = "medResource.status"
          * rule[+]
            * name = "medsCategory"
            * source
              * context = "med"
              * element = "resource"
              * variable = "medResource"
              * condition = "(category.coding.where(system = 'http://terminology.hl7.org/CodeSystem/medicationrequest-category').exists())"
            * target[0]
              * context = "medsItem"
              * contextType = #variable
              * element = "item"
              * variable = "medsCategory"
            * target[+]
              * context = "medsCategory"
              * contextType = #variable
              * element = "linkId"
              * transform = #copy
              * parameter.valueString = "meds-category"
            * rule
              * name = "medsCategoryAnswer"
              * source.context = "medResource"
              * target[0]
                * context = "medsCategory"
                * contextType = #variable
                * element = "answer"
                * variable = "medsCategoryAnswer"
              * target[+]
                * context = "medsCategoryAnswer"
                * contextType = #variable
                * element = "value"
                * transform = #evaluate
                * parameter.valueString = "medResource.category.coding.where(system = 'http://terminology.hl7.org/CodeSystem/medicationrequest-category').code.aggregate(iif($total.empty(), $this, $total & ' ' & $this))"