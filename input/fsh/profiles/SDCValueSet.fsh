Profile: SDCValueSet
Parent: ValueSet
Id: sdc-valueset
Title: "SDC Value Set"
Description: "Defines how ValueSet is used to reflect code lists found in data element defintions and form definitions to be used within the ONC's Structured Data Capture standard."
* ^status = #active
* ^experimental = false
* . ^definition = "Sets expectations for SDC-conformant systems around value set support for representing permitted question answers."
* obeys sdc-2 and sdc-3
* modifierExtension contains RenderingCriticalExtension named rendering-criticalExtension 0..* MS
* url MS
* version 0..1 MS
// Inter-version extension for versionAlgorithm
* extension contains $questionnaire-versionAlgorithm named versionAlgorithm 0..1 MS 
* status MS
* experimental MS
* date MS
* description 0..1 MS
* useContext 0..*
* immutable 1..1 MS
* compose MS
  * lockedDate MS
  * inactive MS
* compose.include MS
  * system MS
  * version MS
  * concept MS
  * concept.extension contains
      $valueset-label named conceptLabel 0..1 MS and
      $valueset-conceptOrder named conceptConceptOrder 0..1 MS
  * concept.extension[conceptLabel].valueString.extension contains
      $rendering-style named code-renderingStyle 0..1 and
      $rendering-xhtml named code-xhtml 0..1
  * concept.extension[conceptConceptOrder] ^comment = "The presence of a sort order implies that sort order is important."
  * concept.code MS
  * concept.display MS
  * concept.display.extension contains
      $rendering-style named codeDisplay-renderingStyle 0..1 and
      $rendering-xhtml named codeDisplay-xhtml 0..1
  * concept.designation.extension contains
      $rendering-style named designation-renderingStyle 0..1 and
      $rendering-xhtml named designation-xhtml 0..1
  * filter MS
    * property MS
    * op MS
    * value MS
  * valueSet MS
* compose.exclude MS
* expansion MS
  * extension contains
    $valueset-expansionProperty named expansionProperty 0..* MS
  * extension[expansionProperty] ^requirements = "... Allows support for itemWeight and other key properties"
  * identifier MS
  * timestamp MS
* expansion.contains MS
  * extension contains
      $valueset-label named expansionLabel 0..1 MS and
      $valueset-conceptOrder named conceptConceptOrder 0..1 MS and
      $valueset-containsProperty named containsProperty 0..* MS
  * extension[expansionLabel].valueString.extension contains
      $rendering-style named expansion-renderingStyle 0..1 and
      $rendering-xhtml named expansion-xhtml 0..1
  * extension[containsProperty] ^requirements = "... Allows support for itemWeight and other key properties"
  * extension[conceptConceptOrder] ^comment = "The presence of a sort order implies that sort order is important."
  * system MS
  * abstract MS
  * version MS
  * code MS
  * display MS
  * display.extension contains
      $rendering-style named expansionDisplay-renderingStyle 0..1 and
      $rendering-xhtml named expansionDisplay-xhtml 0..1
  * designation.extension contains
      $rendering-style named expansionDesignation-renderingStyle 0..1 and
      $rendering-xhtml named expansionDesignation-xhtml 0..1
* expansion.contains.contains MS