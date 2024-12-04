ValueSet: QuestionnaireContextSpecies
Id: species
Title: "Questionnaire Context Species"
Description: "Species for defining the context of Questionnaires"
* ^status = #active
* ^experimental = true
* ^publisher = "HL7 International - FHIR Infrastructure"
* ^contact.telecom.system = #other
* ^contact.telecom.value = "http:\\\\healthit.gov"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement."
* include codes from system SNOMED_CT where concept is-a #410607006