Instance: questionnaire-sdc-profile-example-loinc
InstanceOf: SDCBaseQuestionnaire
Title: "SDC-LOINC AHRQ"
Description: "LOINC perspective on the AHRQ form found in the SDC - Combination set of questionnaires"
Usage: #example
* contained[+] = ll2654-3
* contained[+] = ll2655-0
* contained[+] = ll2657-6
* contained[+] = ll2659-2
* contained[+] = ll2660-0
* contained[+] = ll2661-8
* contained[+] = ll2662-6
* contained[+] = ll2663-4
* contained[+] = ll2664-2
* contained[+] = ll2665-9
* contained[+] = ll2817-6
* contained[+] = ll2668-3
* contained[+] = ll2669-1
* contained[+] = ll2828-3
* contained[+] = ll2682-4
* extension[+]
  * url = $questionnaire-versionAlgorithm
  * valueCoding = $version-algorithm#semver
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-preferredTerminologyServer"
  * valueUrl = "https://tx.fhir.org/r4"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/questionnaire-sdc-profile-example-loinc"
* identifier
  * system = "http://loinc.org/vs"
  * value = "74080-3"
* name = "MedicationorOtherSubstance"
* title = "Medication or Other Substance"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
    * valueString = "color:#0000FF"
* status = #active
* subjectType = #Patient
* date = "2012-04-01"
* publisher = "Agency for Healthcare Research and Quality (AHRQ)"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#header
  * linkId = "Medication/header"
  * type = #group
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
      * valueBoolean = true
    * linkId = "0"
    * text = "Form ID:"
    * type = #string
    * required = true
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 3
    * linkId = "74080-3/74081-1"
    * text = "Event ID:"
    * type = #string
    * required = true
  * item[+]
    * linkId = "74080-3/30947-6"
    * text = "Initial Report Date (HERF Q1)"
    * type = #string
    * required = true
* item[+]
  * linkId = "Medication/SEC00"
  * text = "Medication or Other Substance"
  * type = #group
  * item[+]
    * linkId = "Medication/SEC00.0"
    * text = "Use this form to report any patient safety event or unsafe condition involving a substance such as a medications, biological products, nutritional products, expressed human breast milk, medical gases, or contrast media. Do not complete this form if the event involves appropriateness of therapeutic choice or decision making (e.g., physician decision to prescribe medication despite known drug-drug interaction). If the event involves a device, please also complete the Device or Medical/Surgical Supply including Health Information Technology (HIT) form. Narrative detail can be captured on the Healthcare Event Reporting Form (HERF)."
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
        * valueString = "Use this form to report any patient safety event or unsafe condition involving a substance such as a medications, biological products, nutritional products, expressed human breast milk, medical gases, or contrast media. Do not complete this form if the event involves appropriateness of therapeutic choice or decision making (e.g., physician decision to prescribe medication despite known drug-drug interaction). If the event involves a device, please also complete the Device or Medical/Surgical Supply including Health Information Technology (HIT) form. Narrative detail can be captured on the Healthcare Event Reporting Form (HERF)."
    * type = #display
  * item[+]
    * linkId = "Medication/SEC01/74080-3"
    * type = #group
    * required = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 1
      * linkId = "74080-3/74076-1"
      * definition = "http://loinc.org/74076-1"
      * prefix = "1."
      * text = "What type of medication/substance was involved?"
      * type = #choice
      * required = true
      * answerValueSet = "#ll2654-3"
      * item[+]
        * extension
          * url = "http://hl7.org/fhir/StructureDefinition/minLength"
          * valueInteger = 7
        * linkId = "74080-3/74075-3"
        * definition = "http://loinc.org/vs/74075-3"
        * prefix = "2."
        * text = "What type of medication?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74076-1"
          * operator = #=
          * answerCoding = $loinc#LA20271-5 "Medications"
        * required = true
        * answerValueSet = "#ll2655-0"
        * item
          * extension
            * url = "http://hl7.org/fhir/StructureDefinition/minLength"
            * valueInteger = 0
          * linkId = "74080-3/74077-9-q"
          * definition = "http://loinc.org/74077-9"
          * prefix = "3."
          * text = "Please list all ingredients:"
          * type = #string
          * enableWhen
            * question = "74080-3/74075-3"
            * operator = #=
            * answerCoding = $loinc#LA20298-8 "Compounded preparations"
          * required = true
          * repeats = true
      * item[+]
        * extension
          * url = "http://hl7.org/fhir/StructureDefinition/minLength"
          * valueInteger = 8
        * linkId = "74080-3/74074-6"
        * prefix = "4."
        * text = "What type of biological product?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74076-1"
          * operator = #=
          * answerCoding = $loinc#LA20335-8 "Biological products"
        * answerValueSet = "#ll2657-6"
        * item
          * linkId = "74080-3/30959-1"
          * prefix = "5."
          * text = "What was the lot number of the vaccine?"
          * type = #string
          * enableWhen
            * question = "74080-3/74074-6"
            * operator = #=
            * answerCoding = $loinc#LA20283-0 "Vaccines"
          * required = true
      * item[+]
        * linkId = "74080-3/74073-8"
        * prefix = "6."
        * text = "What type of nutritional product?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74076-1"
          * operator = #=
          * answerCoding = $loinc#LA20336-6 "Nutritional products"
        * required = true
        * answerValueSet = "#ll2659-2"
        * item
          * linkId = "74080-3/74073-8/Other/Specify"
          * type = #string
          * enableWhen
            * question = "74080-3/74073-8"
            * operator = #=
            * answerCoding = $loinc#LA20318-4 "Other: PLEASE SPECIFY"
          * required = true
      * item[+]
        * linkId = "74080-3/74076-1/Other/Specify"
        * type = #string
        * enableWhen
          * question = "74080-3/74076-1"
          * operator = #=
          * answerCoding = $loinc#LA20343-2 "Other substance: PLEASE SPECIFY"
        * required = true
    * item[+]
      * linkId = "74080-3/74072-0"
      * prefix = "7."
      * text = "Which of the following best characterizes the event?"
      * type = #choice
      * enableWhen[+]
        * question = "74080-3/74076-1"
        * operator = #!=
        * answerCoding = $loinc#LA20340-8 "Radiopharmaceuticals"
      * enableWhen[+]
        * question = "74080-3/74076-1"
        * operator = #!=
        * answerCoding = $loinc#LA20341-6 "Patient food (not suspected in drug-food interactions)"
      * enableWhen[+]
        * question = "74080-3/74076-1"
        * operator = #!=
        * answerCoding = $loinc#LA20342-4 "Drug-drug, drug-food, or adverse drug reaction as a result of a prescription and/or administration of a drug and/or food prior to admission"
      * enableBehavior = #all
      * required = true
      * answerValueSet = "#ll2660-0"
    * item[+]
      * linkId = "74080-3/74071-2"
      * prefix = "8."
      * text = "What was the incorrect action?"
      * type = #choice
      * enableWhen
        * question = "74080-3/74072-0"
        * operator = #=
        * answerCoding = $loinc#LA20275-6 "Incorrect action (process failure or error) (e.g., such as administering overdose or incorrect medication)"
      * answerValueSet = "#ll2661-8"
      * item[+]
        * linkId = "74080-3/74070-4"
        * prefix = "9."
        * text = "Which best describes the incorrect dose(s)?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20303-6 "Incorrect dose(s)"
        * required = true
        * answerValueSet = "#ll2662-6"
      * item[+]
        * linkId = "Medication/74069-6"
        * prefix = "10."
        * text = "Which best describes the incorrect timing?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20305-1 "Incorrect timing"
        * required = true
        * answerValueSet = "#ll2663-4"
      * item[+]
        * linkId = "74080-3/74068-8"
        * prefix = "11."
        * text = "Which best describes the incorrect rate?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20306-9 "Incorrect rate"
        * required = true
        * answerValueSet = "#ll2664-2"
      * item[+]
        * linkId = "Medication/74067-0"
        * prefix = "12."
        * text = "Which best describes the incorrect strength or concentration?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20309-3 "Incorrect strength or concentration"
        * required = true
        * answerValueSet = "#ll2665-9"
      * item[+]
        * linkId = "Medication/74066-2"
        * prefix = "13."
        * text = "What was the expiration date?"
        * type = #string
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20311-9 "Expired or deteriorated medication/substance"
        * required = true
      * item[+]
        * linkId = "Medication/74065-4"
        * prefix = "14."
        * text = "Was there a documented history of allergies or sensitivities to the medication/substance administered?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20312-7 "Medication/substance that is known to be an allergen to the patient"
        * required = true
        * answerValueSet = "#ll2817-6"
      * item[+]
        * linkId = "Medication/74064-7"
        * prefix = "15."
        * text = "What was the contraindication (potential or actual interaction)?"
        * type = #choice
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20345-7 "Medication/substance that is known to be contraindicated for the patient"
        * required = true
        * answerValueSet = "#ll2668-3"
        * item
          * linkId = "Medication/74064-7/Other/Specify"
          * type = #string
          * enableWhen
            * question = "Medication/74064-7"
            * operator = #=
            * answerCoding = $loinc#LA20318-4 "Other: PLEASE SPECIFY"
          * required = true
      * item[+]
        * linkId = "74080-3/74071-2/Other/Specify"
        * type = #string
        * enableWhen
          * question = "74080-3/74071-2"
          * operator = #=
          * answerCoding = $loinc#LA20318-4 "Other: PLEASE SPECIFY"
        * required = true
    * item[+]
      * linkId = "74080-3/74063-9"
      * prefix = "16."
      * text = "At what stage in the process did the event originate, regardless of the stage at which it was discovered?"
      * type = #choice
      * enableWhen
        * question = "74080-3/74072-0"
        * operator = #=
        * answerCoding = $loinc#LA20275-6 "Incorrect action (process failure or error) (e.g., such as administering overdose or incorrect medication)"
      * required = true
      * answerValueSet = "#ll2669-1"
      * item
        * linkId = "74080-3/74063-9/Other/Specify"
        * type = #string
        * enableWhen
          * question = "74080-3/74063-9"
          * operator = #=
          * answerCoding = $loinc#LA20318-4 "Other: PLEASE SPECIFY"
        * required = true
  * item[+]
    * linkId = "74080-3/74078-7.0"
    * text = "Please provide the following medication details for any medications or other substances directly involved in the event."
    * type = #display
  * item[+]
    * linkId = "74080-3/74078-x"
    * text = "For an near miss, omit question 27"
    * type = #display
    * enableWhen
      * question = "74080-3/74072-0"
      * operator = #!=
      * answerCoding = $loinc#LA20314-3 "Unsafe condition"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs"
      * valueInteger = 5
    * linkId = "74080-3/74078-7"
    * type = #group
    * enableWhen[+]
      * question = "74080-3/74072-0"
      * operator = #!=
      * answerCoding = $loinc#LA20315-0 "Adverse reaction in patient to the administered substance without any apparent incorrect action"
    * enableWhen[+]
      * question = "74080-3/74072-0"
      * operator = #!=
      * answerCoding = $loinc#LA4489-6 "Unknown"
    * enableWhen[+]
      * question = "74080-3/74076-1"
      * operator = #!=
      * answerCoding = $loinc#LA20337-4 "Expressed human breast milk"
    * enableWhen[+]
      * question = "74080-3/74075-3"
      * operator = #!=
      * answerCoding = $loinc#LA20298-8 "Compounded preparations"
    * enableBehavior = #all
    * repeats = true
    * required = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74062-1"
      * prefix = "17."
      * text = "Generic name or investigational drug name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74061-3"
      * prefix = "18."
      * text = "Ingredient RXCUI (if known)"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74060-5"
      * prefix = "19."
      * text = "Brand name (if known)"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74059-7"
      * prefix = "20."
      * text = "Brand name RXCUI (if known)"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74058-9"
      * prefix = "21."
      * text = "Manufacturer (if known)"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74057-1"
      * prefix = "22."
      * text = "Strength or concentration of product"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74056-3"
      * prefix = "23."
      * text = "Clinical drug component RXCUI (if known)"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74055-5"
      * prefix = "24."
      * text = "Dosage form of Product"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "74080-3/74078-7/74054-8"
      * prefix = "25."
      * text = "Dose form RXCUI (if known)"
      * type = #string
    * item[+]
      * linkId = "74080-3/74078-7/74053-0"
      * prefix = "26."
      * text = "Was this medication/substance prescribed for this patient?"
      * type = #choice
      * enableWhen
        * question = "74080-3/74072-0"
        * operator = #!=
        * answerCoding = $loinc#LA20314-3 "Unsafe condition"
      * required = true
      * answerValueSet = "#ll2828-3"
    * item[+]
      * linkId = "Medication/74052-2"
      * prefix = "27."
      * text = "Was this medication/substance given to this patient?"
      * type = #choice
      * enableWhen
        * question = "74080-3/74072-0"
        * operator = #!=
        * answerCoding = $loinc#LA20314-3 "Unsafe condition"
      * required = true
      * answerValueSet = "#ll2828-3"
  * item[+]
    * linkId = "Medication/SEC03"
    * type = #group
    * enableWhen
      * question = "74080-3/74072-0"
      * operator = #=
      * answerCoding = $loinc#LA20304-4 "Incorrect route of administration"
    * item[+]
      * linkId = "74080-3/74051-4"
      * prefix = "28."
      * text = "What was the intended route of administration?"
      * type = #choice
      * required = true
      * answerValueSet = "#ll2682-4"
      * item
        * linkId = "74080-3/74051-4/Other/Specify"
        * type = #string
        * enableWhen
          * question = "74080-3/74051-4"
          * operator = #=
          * answerCoding = $loinc#LA20318-4 "Other: PLEASE SPECIFY"
        * required = true
    * item[+]
      * linkId = "74080-3/74050-6"
      * prefix = "29."
      * text = "What was the actual route of administration (attempted or completed)?"
      * type = #choice
      * required = true
      * answerValueSet = "#ll2682-4"
      * item
        * linkId = "74080-3/74050-6/Other/Specify"
        * type = #string
        * enableWhen
          * question = "74080-3/74050-6"
          * operator = #=
          * answerCoding = $loinc#LA20318-4 "Other: PLEASE SPECIFY"
        * required = true
  * item[+]
    * linkId = "Medication/SEC04"
    * text = "Thank you for completing these questions."
    * type = #group
    * item
      * linkId = "Medication/SEC04.0"
      * text = "OMB No. 0935-0143 Exp. Date 10/31/2014 Public reporting burden for the collection of information is estimated to average 10 minutes per response. An agency may not conduct or sponsor, and a person is not required to respond to, a collection of information unless it displays a currently valid OMB control number. Send comments regarding this burden estimate or any other aspect of this collection of information, including suggestions for reducing this burden, to: AHRQ Reports Clearance Officer, Attention: PRA, Paperwork Reduction Project (0935-0143), AHRQ, 540 Gaither Road, Room #5036, Rockville, MD 20850."
      * type = #display
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
    * valueBoolean = true
  * linkId = "Reporting"
  * text = "Reporting information"
  * type = #group
  * item[+]
    * linkId = "Reporting/who"
    * text = "Reported by:"
    * type = #string
  * item[+]
    * linkId = "Reporting/when"
    * text = "Reported date:"
    * type = #date
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#footer
  * linkId = "Medication/footer"
  * type = #group
  * item
    * linkId = "Medication/footer.0"
    * text = "AHRQ Common Formats - Hospital Version 1.2 - 2012 Medication or Other Substance"
    * type = #display

Instance: ll2654-3
InstanceOf: ValueSet
Usage: #inline
* url = "http://hl7.org/fhir/uv/sdc/ValueSet/LL2654-3"
* name = "AhrqMedicationQ1"
* title = "AHRQ_Medication_Q1"
* status = #active
* description = "The answer list for question 1 on the AHRQ \"Medication or Other Substance\" form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 1
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "a."
    * code = #LA20271-5
    * display = "Medications"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 2
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "b."
    * code = #LA20335-8
    * display = "Biological products"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 3
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "c."
    * code = #LA20336-6
    * display = "Nutritional products"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 4
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "d."
    * code = #LA20337-4
    * display = "Expressed human breast milk"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 5
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "e."
    * code = #LA20338-2
    * display = "Medical gases (e.g., oxygen, nitrogen, nitrous oxide)"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 6
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "f."
    * code = #LA20339-0
    * display = "Contrast media"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 7
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "g."
    * code = #LA20340-8
    * display = "Radiopharmaceuticals"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 8
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "h."
    * code = #LA20341-6
    * display = "Patient food (not suspected in drug-food interactions)"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 9
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "i."
    * code = #LA20342-4
    * display = "Drug-drug, drug-food, or adverse drug reaction as a result of a prescription and/or administration of a drug and/or food prior to admission"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 10
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "j."
    * code = #LA20343-2
    * display = "Other substance: PLEASE SPECIFY"

Instance: ll2655-0
InstanceOf: ValueSet
Usage: #inline
* url = "http://example.org/ValueSet/ll2655-0"
* name = "AhrqMedicationQ2"
* title = "AHRQ_Medication_Q2"
* status = #active
* description = "The answer list for question 2 on the AHRQ \"Medication or Other Substance\" form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 1
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "a."
    * code = #LA20278-0
    * display = "Prescription or over-the-counter (including herbal supplements)"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 2
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "b."
    * code = #LA20298-8
    * display = "Compounded preparations"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 3
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "c."
    * code = #LA20299-6
    * display = "Investigational drugs"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 4
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "d."
    * code = #LA4489-6
    * display = "Unknown"

Instance: ll2657-6
InstanceOf: ValueSet
Usage: #inline
* name = "AhrqMedicationQ4"
* title = "AHRQ_Medication_Q4"
* status = #active
* description = "The answer list for question 4 on the AHRQ \"Medication or Other Substance\" form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+]
    * code = #LA20283-0 
    * display = "Vaccines"
  * concept[+]
    * code = #LA20287-1 
    * display = "Other biological products (e.g., thrombolytic)"

Instance: ll2659-2
InstanceOf: ValueSet
Usage: #inline
* url = "http://example.org/ValueSet/ll2659-2"
* name = "AhrqMedicationQ6"
* title = "AHRQ_Medication_Q6"
* status = #active
* description = "The answer list for question 6 on the AHRQ \"Medication or Other Substance\" form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 1
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "a."
    * code = #LA20273-1
    * display = "Dietary supplements (other than vitamins or minerals)"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 2
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "b."
    * code = #LA16117-6
    * display = "Vitamins or minerals"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 3
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "c."
    * code = #LA20320-0
    * display = "Enteral nutritional products, including infant formula"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 4
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "d."
    * code = #LA20321-8
    * display = "Parenteral nutritional products"
  * concept[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-conceptOrder"
      * valueInteger = 5
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-label"
      * valueString = "e."
    * code = #LA20318-4
    * display = "Other: PLEASE SPECIFY"

Instance: ll2660-0
InstanceOf: ValueSet
Usage: #inline
* url = "http://example.org/ValueSet/ll2660-0"
* name = "AHRQMedicationQ7"
* title = "AHRQ_Medication_Q7"
* status = #active
* description = "The answer list for question 7 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+]
    * code = #LA20275-6
    * display = "Incorrect action (process failure or error) (e.g., such as administering overdose or incorrect medication)"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-xhtml"
        * valueString = "Incorrect action (process failure or error) (e.g., such as administering overdose or incorrect medication)"
  * concept[+]
    * code = #LA20314-3
    * display = "Unsafe condition"
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/rendering-style"
        * valueString = "color:green"
  * concept[+]
    * code = #LA20315-0
    * display = "Adverse reaction in patient to the administered substance without any apparent incorrect action"
  * concept[+]
    * code = #LA4489-6
    * display = "Unknown"

Instance: ll2661-8
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ8"
* title = "AHRQ_Medication_Q8"
* status = #active
* description = "The answer list for question 8 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20276-4 
  * concept[=].display = "Incorrect patient"
  * concept[+].code = #LA20302-8 
  * concept[=].display = "Incorrect medication/substance"
  * concept[+].code = #LA20303-6 
  * concept[=].display = "Incorrect dose(s)"
  * concept[+].code = #LA20304-4 
  * concept[=].display = "Incorrect route of administration"
  * concept[+].code = #LA20305-1 
  * concept[=].display = "Incorrect timing"
  * concept[+].code = #LA20306-9 
  * concept[=].display = "Incorrect rate"
  * concept[+].code = #LA20307-7 
  * concept[=].display = "Incorrect duration of administration or course of therapy"
  * concept[+].code = #LA20308-5 
  * concept[=].display = "Incorrect dosage form (e.g., sustained release instead of immediate release)"
  * concept[+].code = #LA20309-3 
  * concept[=].display = "Incorrect strength or concentration"
  * concept[+].code = #LA20310-1 
  * concept[=].display = "Incorrect preparation, including inappropriate cutting of tablets, error in compounding, mixing, etc."
  * concept[+].code = #LA20311-9 
  * concept[=].display = "Expired or deteriorated medication/substance"
  * concept[+].code = #LA20312-7 
  * concept[=].display = "Medication/substance that is known to be an allergen to the patient"
  * concept[+].code = #LA20345-7 
  * concept[=].display = "Medication/substance that is known to be contraindicated for the patient"
  * concept[+].code = #LA20313-5 
  * concept[=].display = "Incorrect patient/family action (e.g., self-administration error)"
  * concept[+].code = #LA20318-4 
  * concept[=].display = "Other: PLEASE SPECIFY"

Instance: ll2662-6
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ9"
* title = "AHRQ_Medication_Q9"
* status = #active
* description = "The answer list for question 9 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20277-2 
  * concept[=].display = "Overdose"
  * concept[+].code = #LA20300-2 
  * concept[=].display = "Underdose"
  * concept[+].code = #LA20301-0 
  * concept[=].display = "Missed or omitted dose"
  * concept[+].code = #LA7271-5 
  * concept[=].display = "Extra dose"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"

Instance: ll2663-4
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ10"
* title = "AHRQ_Medication_Q10"
* status = #active
* description = "The answer list for question 10 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20280-6 
  * concept[=].display = "Too early"
  * concept[+].code = #LA20290-5 
  * concept[=].display = "Too late"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"

Instance: ll2664-2
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ11"
* title = "AHRQ_Medication_Q11"
* status = #active
* description = "The answer list for question 11 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20282-2 
  * concept[=].display = "Too quickly"
  * concept[+].code = #LA20288-9 
  * concept[=].display = "Too slowly"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"

Instance: ll2665-9
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ12"
* title = "AHRQ_Medication_Q12"
* status = #active
* description = "The answer list for question 12 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20281-4 
  * concept[=].display = "Too high"
  * concept[+].code = #LA20289-7 
  * concept[=].display = "Too low"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"

Instance: ll2668-3
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ15"
* title = "AHRQ_Medication_Q15"
* status = #active
* description = "The answer list for question 15 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20274-9 
  * concept[=].display = "Drug-drug"
  * concept[+].code = #LA20316-8 
  * concept[=].display = "Drug-food"
  * concept[+].code = #LA20317-6 
  * concept[=].display = "Drug-disease"
  * concept[+].code = #LA20318-4 
  * concept[=].display = "Other: PLEASE SPECIFY"

Instance: ll2669-1
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ16"
* title = "AHRQ_Medication_Q16"
* status = #active
* description = "The answer list for question 16 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20279-8 
  * concept[=].display = "Purchasing"
  * concept[+].code = #LA20291-3 
  * concept[=].display = "Storing"
  * concept[+].code = #LA20292-1 
  * concept[=].display = "Prescribing/ordering"
  * concept[+].code = #LA20293-9 
  * concept[=].display = "Transcribing"
  * concept[+].code = #LA20294-7 
  * concept[=].display = "Preparing"
  * concept[+].code = #LA20295-4 
  * concept[=].display = "Dispensing"
  * concept[+].code = #LA20296-2 
  * concept[=].display = "Administering"
  * concept[+].code = #LA20297-0 
  * concept[=].display = "Monitoring"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"
  * concept[+].code = #LA20318-4 
  * concept[=].display = "Other: PLEASE SPECIFY"

Instance: ll2682-4
InstanceOf: ValueSet
Usage: #inline
* name = "AHRQMedicationQ28Q29"
* title = "AHRQ_Medication_Q28_Q29"
* status = #active
* description = "The answer list for questions 28 and 29 on the AHRQ 'Medication or Other Substance' form"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA20272-3 
  * concept[=].display = "Cutaneous, topical application, including ointment, spray, patch"
  * concept[+].code = #LA9451-1 
  * concept[=].display = "Subcutaneous"
  * concept[+].code = #LA9444-6 
  * concept[=].display = "Ophthalmic"
  * concept[+].code = #LA20324-2 
  * concept[=].display = "Oral, including sublingual or buccal"
  * concept[+].code = #LA9445-3 
  * concept[=].display = "Otic"
  * concept[+].code = #LA9263-0 
  * concept[=].display = "Nasal"
  * concept[+].code = #LA9427-1 
  * concept[=].display = "Inhalation"
  * concept[+].code = #LA9437-0 
  * concept[=].display = "Intravenous"
  * concept[+].code = #LA9429-7 
  * concept[=].display = "Intramuscular"
  * concept[+].code = #LA9435-4 
  * concept[=].display = "Intrathecal"
  * concept[+].code = #LA9418-0 
  * concept[=].display = "Epidural"
  * concept[+].code = #LA20332-5 
  * concept[=].display = "Gastric"
  * concept[+].code = #LA9369-5 
  * concept[=].display = "Rectal"
  * concept[+].code = #LA9459-4 
  * concept[=].display = "Vaginal"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"
  * concept[+].code = #LA20318-4 
  * concept[=].display = "Other: PLEASE SPECIFY"

Instance: ll2817-6
InstanceOf: ValueSet
Usage: #inline
* name = "AhrqYNUnk"
* title = "AHRQ_Y/N/UNK"
* status = #active
* description = "AHRQ Common Format Answer list for Yes (A15), No (A18), Unknown (UNK)"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA33-6 
  * concept[=].display = "Yes"
  * concept[+].code = #LA32-8 
  * concept[=].display = "No"
  * concept[+].code = #LA4489-6 
  * concept[=].display = "Unknown"

Instance: ll2828-3
InstanceOf: ValueSet
Usage: #inline
* name = "AhrqYN"
* title = "AHRQ_Y/N"
* status = #active
* description = "AHRQ Common Format Answer list for Yes (A15) and No (A18)"
* copyright = "This content from LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at http://loinc.org/terms-of-use"
* compose.include
  * system = "http://loinc.org"
  * concept[+].code = #LA33-6 
  * concept[=].display = "Yes" 
  * concept[+].code = #LA32-8 
  * concept[=].display = "No"