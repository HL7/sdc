CodeSystem: LaunchContext
Id: launchContext
Title: "Launch Context"
Description: "The standard context for Questionnaire at launch time"
* ^status = #draft
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #patient "Patient" "Patient in context at launch time (FHIR Patient resource)"
* #encounter "Encounter" "Encounter context at launch time (FHIR Encounter resource)"
* #location "Location" "Location context at launch time (FHIR Location resource)"
* #user "User" "User in context at launch time (FHIR Device, PractitionerRole, Practitioner, RelatedPerson, Organization or Patient resource)"
* #study "ResearchStudy" "ResearchStudy in context at launch time (FHIR ResearchStudy resource)"