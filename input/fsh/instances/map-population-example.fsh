Instance: map-population-example
InstanceOf: Bundle
Title: "SDC Map population source bundle example"
Description: "An example of a Batch response containing search results used as an input to a map-based population process"
Usage: #example
* type = #batch-response
* entry[0]
  * resource = 2c256377-0dbf-4311-a123-14d87f22c5
  * insert entryResponse("200", "W/", "1899-12-30T00:00:00.000Z")
* entry[+]
  * resource = 7b29ddd9-fdbf-4e6c-81f3-38f2d51934
  * insert entryResponse("200", "W/", "1899-12-30T00:00:00.000Z")
* entry[+]
  * resource = 94e7a07b-0f81-4586-ad73-ef8ce3b7b7
  * insert entryResponse("200", "W/", "1899-12-30T00:00:00.000Z")


Instance: Inline-Instance-for-map-population-example-1
InstanceOf: Bundle
Usage: #inline
* id = "2c256377-0dbf-4311-a123-14d87f22c5"
* meta.lastUpdated = "2021-12-24T20:45:02.548Z"
* type = #searchset
* total = 1
* link
  * relation = "self"
  * url = "http://example.org/fhir/Patient?_format=application/fhir+xml&search-id=6d767ae9-7ce7-434e-b148-0603d44788&&_id=a0df9da6%2D3157%2D4b72%2D95f1%2D729853718c09&_sort=_id"
* entry
  * fullUrl = "http://example.org/fhir/Patient/a0df9da6-3157-4b72-95f1-729853718c09"
  * resource
    * resourceType = "Patient"
    * id = "a0df9da6-3157-4b72-95f1-729853718c09"
    * insert meta("3", "2021-11-09T22:00:59.865Z")
    * identifier
      * use = #official
      * type = $v2-0203#JHN
      * system = "https://fhir.infoway-inforoute.ca/NamingSystem/ca-on-patient-hcn"
      * value = "1234567890"
    * insert name("Doe","Jane")
    * insert telecom(#phone,"1 (555\) 867 5309",1 ) 
    * insert telecom(#email,"janedoe@example.com",2 )
    * gender = #female
    * birthDate = "1951-02-19"
    * address
      * use = #home
      * type = #physical
      * line = "123 Any Street"
      * city = "Waterloo"
      * state = "ON"
      * postalCode = "N2L 3G1"
    * contact
      * relationship = $v3-RoleCode#SPS "spouse"
        * text = "Emergency Contact"
      * insert name("Doe","John")
      * insert telecom(#phone,"(555\) 555 1212",1 ) 
      * address
        * line[0] = "50 Another St."
        * line[+] = "Unit 2"
        * city = "Waterloo"
        * state = "ON"
        * postalCode = "N2L 3G2"
    * communication
      * language = urn:ietf:bcp:47#en
        * text = "English"
    * generalPractitioner
      * reference = "http://example.org/fhir/PractitionerRole/76ff8f74-03c7-436f-a3e0-71ac9503c1a2"
  * search.mode = #match

Instance: Inline-Instance-for-map-population-example-2
InstanceOf: Bundle
Usage: #inline
* id = "7b29ddd9-fdbf-4e6c-81f3-38f2d51934"
* meta.lastUpdated = "2021-12-24T20:45:02.610Z"
* type = #searchset
* total = 1
* link.relation = "self"
* link.url = "http://example.org/fhir/Condition?_format=application/fhir+xml&search-id=91f69619-1772-4f74-9560-7748c900b1&&patient=Patient/a0df9da6%2D3157%2D4b72%2D95f1%2D729853718c09&clinical-status=active&_sort=_id"
* entry
  * fullUrl = "http://example.org/fhir/Condition/7cd8b889-5456-43d4-935c-abc10791ebd6"
  * resource
    * resourceType = "Condition"
    * id = "7cd8b889-5456-43d4-935c-abc10791ebd6"
    * insert meta("3", "2021-11-09T22:00:59.965Z")
    * clinicalStatus = $condition-clinical#active "Active"
    * verificationStatus = $condition-ver-status#confirmed
    * category = $loinc#75326-9 "Problem"
    * code
      * coding.version = "http://snomed.info/sct/20611000087101"
      * coding = $sct#95651005 "Chronic progressive paraparesis"
      * text = "Chronic Progressive Paraparesis"
    * subject.reference = "http://example.org/fhir/Patient/a0df9da6-3157-4b72-95f1-729853718c09"
    * onsetDateTime = "2014"
    * asserter.reference = "http://example.org/fhir/PractitionerRole/76ff8f74-03c7-436f-a3e0-71ac9503c1a2"
  * search.mode = #match

Instance: Inline-Instance-for-map-population-example-3
InstanceOf: Bundle
Usage: #inline
* id = "94e7a07b-0f81-4586-ad73-ef8ce3b7b7"
* meta.lastUpdated = "2021-12-24T20:45:02.719Z"
* type = #searchset
* total = 1
* link
  * relation = "self"
  * url = "http://example.org/fhir/MedicationStatement?_format=application/fhir+xml&search-id=27c5cc22-a00c-499f-b217-a60cb94df7&&patient=Patient/a0df9da6%2D3157%2D4b72%2D95f1%2D729853718c09&status=active&_include=MedicationStatement%3Amedication&_sort=_id"
* entry[0]
  * fullUrl = "http://example.org/fhir/MedicationStatement/fe376aa6-83fb-4d0e-be60-ad959c57114f"
  * resource
    * resourceType = "MedicationStatement"
    * id = "fe376aa6-83fb-4d0e-be60-ad959c57114f"
    * insert meta("3", "2021-11-09T22:01:00.007Z")
    * status = #active
    * medicationReference.reference = "http://example.org/fhir/Medication/c6222017-94f6-4dbc-8958-fcdf9df3356a"
    * subject.reference = "http://example.org/fhir/Patient/a0df9da6-3157-4b72-95f1-729853718c09"
    * effectivePeriod.start = "2014"
    * informationSource.reference = "http://example.org/fhir/PractitionerRole/76ff8f74-03c7-436f-a3e0-71ac9503c1a2"
    * dosage
      * text = "40 mg/day"
      * timing.repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d
      * doseAndRate
        * doseQuantity = 40 'mg' "mg"
  * search.mode = #match
* entry[+]
  * fullUrl = "http://example.org/fhir/MedicationStatement/01e65f9e-5412-4ac9-a1c2-c408ed485702"
  * resource
    * resourceType = "MedicationStatement"
    * id = "01e65f9e-5412-4ac9-a1c2-c408ed485702"
    * insert meta("3", "2021-11-09T22:01:00.007Z")
    * status = #active
    * medicationCodeableConcept
      * coding[0]
        * system = "http://example.org/medications"
      * coding[+]
        * system = "http://example.org/medications2"
        * display = "Another med"
    * subject.reference = "http://example.org/fhir/Patient/a0df9da6-3157-4b72-95f1-729853718c09"
    * effectivePeriod.start = "2014"
    * informationSource.reference = "http://example.org/fhir/PractitionerRole/76ff8f74-03c7-436f-a3e0-71ac9503c1a2"
    * dosage
      * text = "40 mg/day"
      * timing.repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d
      * doseAndRate
        * doseQuantity = 40 'mg' "mg"
  * search.mode = #match
* entry[+]
  * fullUrl = "http://example.org/fhir/MedicationStatement/f59e4516-d2c6-4a2f-936b-d2c460bb92c6"
  * resource
    * resourceType = "MedicationStatement"
    * id = "f59e4516-d2c6-4a2f-936b-d2c460bb92c6"
    * insert meta("3", "2021-11-09T22:01:00.007Z")
    * status = #active
    * medicationCodeableConcept
      * text = "SomeMed"
    * subject.reference = "http://example.org/fhir/Patient/a0df9da6-3157-4b72-95f1-729853718c09"
    * effectivePeriod.start = "2014"
    * informationSource.reference = "http://example.org/fhir/PractitionerRole/76ff8f74-03c7-436f-a3e0-71ac9503c1a2"
    * dosage
      * text = "40 mg/day"
      * timing.repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d
      * doseAndRate
        * doseQuantity = 40 'mg' "mg"
  * search.mode = #match
* entry[+]
  * fullUrl = "http://example.org/fhir/Medication/c6222017-94f6-4dbc-8958-fcdf9df3356a"
  * resource
    * resourceType = "Medication"
    * id = "c6222017-94f6-4dbc-8958-fcdf9df3356a"
    * insert meta("3", "2021-11-09T22:01:00.033Z")
    * text
      * status = #generated
      * div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: c6222017-94f6-4dbc-8958-fcdf9df3356a</p><p><b>meta</b>: </p><p><b>code</b>: Simvastatin 40 mg oral tablet <span style=\"background: LightGoldenRodYellow \">(Details : {SNOMED CT code \"320000009\" := \"320000009\", given as \"Simvastatin 40 mg oral tablet\"})</span></p><p><b>form</b>: Film-coated tablet <span style=\"background: LightGoldenRodYellow \">(Details : {SNOMED CT code \"385057009\" := \"385057009\", given as \"Film-coated tablet\"})</span></p></div>"
    * code
      * coding.version = "http://snomed.info/sct/20611000087101"
      * coding = $sct#320000009 "Simvastatin 40 mg oral tablet"
      * text = "Simvastatin 40 mg oral tablet"
    * form
      * coding.version = "http://snomed.info/sct/20611000087101"
      * coding = $sct#385057009 "Film-coated tablet"
    * ingredient
      * itemCodeableConcept
        * coding.version = "http://snomed.info/sct/20611000087101"
        * coding = $sct#387584000 "Simvastatin"
      * strength
        * numerator = 40 'mg' "mcg"
        * denominator = 1 '1*'
  * search.mode = #include