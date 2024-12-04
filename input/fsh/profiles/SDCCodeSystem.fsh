Profile: SDCCodeSystem
Parent: CodeSystem
Id: sdc-codesystem
Title: "SDC Code System"
Description: "Defines how CodeSystem is used to reflect code lists found in data element defintions and form definitions to be used within the ONC's Structured Data Capture standard."
* ^status = #active
* . ^definition = "Sets expectations for SDC-conformant systems around value set support for representing permitted question answers."
* modifierExtension contains RenderingCriticalExtension named rendering-criticalExtension 0..* MS
* url MS
* name 0..1
* status MS
* experimental MS
* date MS
* description 0..1 MS
* caseSensitive 1..1 MS
* compositional 0..0
* versionNeeded 0..0
* content MS
* concept MS
  * code MS
  * display MS
    * extension contains
        $rendering-style named conceptDisplayLabel-renderingStyle 0..1 and
        $rendering-xhtml named conceptDisplayLabel-xhtml 0..1
  * definition MS
  * designation
    * value.extension contains
        $rendering-style named conceptDisplayLabel-renderingStyle 0..1 and
        $rendering-xhtml named conceptDisplayLabel-xhtml 0..1
  * concept MS