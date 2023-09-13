Logical: SDCExample
Parent: Element
Id: structuredefinition-sdc-profile-example
Title: "Patient Gender"
Description: "Data element SDC Profile Example"
* ^identifier.system = "http://nlm.nih.gov/some_other_text/data_element_identifier"
* ^identifier.value = "DE42AHRQ"
* ^status = #draft
* ^publisher = "Health Level Seven, International"
* ^contact.telecom.system = #other
* ^contact.telecom.value = "http://hl7.org"
* ^type = "DataelementSdcProfileExample"
* gender 0..1 CodeableConcept "The gender (i.e., the behavioral, cultural, or psychological traits typically associated with one sex) of a living subject as defined for administrative purposes."
* gender from http://hl7.org/fhir/ValueSet/administrative-gender (required)
  * ^base.path = "dataelement-sdc-profile-example.gender"
  * ^base.min = 0
  * ^base.max = "1"