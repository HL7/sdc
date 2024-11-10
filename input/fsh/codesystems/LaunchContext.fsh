CodeSystem: LaunchContext
Id: launchContext
Title: "Launch Context"
Description: "The standard context for Questionnaire at launch time"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #patient "Patient" "Patient in context at launch time (FHIR Patient resource). There can be at most 1 resource passed in for this context."
* #encounter "Encounter" "Encounter context at launch time (FHIR Encounter resource). There can be at most 1 resource passed in for this context."
* #location "Location" "Location context at launch time (FHIR Location resource). There can be at most 1 resource passed in for this context."
* #user "User" "User in context at launch time (FHIR Device, PractitionerRole, Practitioner, RelatedPerson, Organization or Patient resource). There can be at most 1 resource passed in for this context."
* #study "ResearchStudy" "ResearchStudy in context at launch time (FHIR ResearchStudy resource). There can be at most 1 resource passed in for this context."
* #clinical "Clinical" "Indicates the current clinical resource being manipulated or reviewed by the user launching the Questionnaire.  Common uses included 'current diagnostic report', 'current diagnostic image', 'current order', etc.  In a situation where multiple clinical resources are being reviewed simultaneously, there could be multiple resources passed in as context.  (i.e. the 'clinical' variable set in the FHIRPath engine will be a collection.)"