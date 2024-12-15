Instance: questionnaire-sdc-profile-example
InstanceOf: Bundle
Title: "SDC-Combination"
Description: "Set of several examples - medication, AHRQ and NCI forms"
Usage: #example
* meta.lastUpdated = "2014-05-15T17:25:15Z"
* type = #collection
* entry[+]
  * fullUrl = "http://example.org/AHRQ/form/Questionnaire/F8-1.2"
  * resource = F8-1.2
* entry[+]
  * fullUrl = "http://example.org/AHRQ/form/Questionnaire/HERF-1.2"
  * resource = HERF-1.2
* entry[+]
  * fullUrl = "http://example.org/AHRQ/form/Questionnaire/3921052v1.0"
  * resource = 3921052v1.0
* entry[+]
  * fullUrl = "http://example.org/AHRQ/form/Questionnaire/2674812v4.0"
  * resource = 2674812v4.0
* entry[+]
  * fullUrl = "http://example.org/AHRQ/form/Questionnaire/3265657v2.0"
  * resource = 3265657v2.0

Instance: F8-1.2
InstanceOf: Questionnaire
Usage: #inline
* meta.lastUpdated = "2014-05-15T17:25:15Z"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e551-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE270-cs"
  * name = "MedicationDE270cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1197
    * display = "Medications"
    * definition = "A legal drug that is used to prevent, treat, or relieve symptoms of a disease or abnormal condition."
  * concept[+]
    * code = #A1200
    * display = "Biological products"
    * definition = "Organisms or complex pharmaceutical substances, preparations, or agents of organic origin, usually obtained by biological methods or assay."
  * concept[+]
    * code = #A1203
    * display = "Nutritional products"
  * concept[+]
    * code = #A1206
    * display = "Expressed human breast milk"
  * concept[+]
    * code = #A1209
    * display = "Medical gases (e.g., oxygen, nitrogen, nitrous oxide)"
  * concept[+]
    * code = #A1212
    * display = "Contrast media"
  * concept[+]
    * code = #A1213
    * display = "Radiopharmaceuticals"
  * concept[+]
    * code = #A1214
    * display = "Patient food (not suspected in drug-food interactions"
  * concept[+]
    * code = #A1216
    * display = "Drug-drug, drug-food, or adverse drug reaction as a result of a prescription and/or administration of a drug and/or food frior to admission"
  * concept[+]
    * code = #A1215
    * display = "Other substance: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e551-vs"
  * name = "D1e551vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE270-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e551-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE270-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e639-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE273-cs"
  * name = "MedicationDE273cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1218
    * display = "Prescription or over-the-counter (including herbal supplements)"
  * concept[+]
    * code = #A1221
    * display = "Compounded preparations"
  * concept[+]
    * code = #A1224
    * display = "Investigational drugs"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e639-vs"
  * url = "http://hl7.org/fhir/uv/sdc/ValueSet/d1e639-vs"
  * name = "D1e639vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE273-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e639-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE273-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e910cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE279-cs"
  * name = "MedicationDE279cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1233
    * display = "Vaccines"
  * concept[+]
    * code = #A1236
    * display = "Other biological products (e.g., thrombolytic)"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e910-vs"
  * name = "D1e910vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE279-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e910cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE279-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e1125-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE285-cs"
  * name = "MedicationDE285cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1242
    * display = "Dietary supplements (other than vitamins or minerals)"
  * concept[+]
    * code = #A1245
    * display = "Vitamins or minerals"
  * concept[+]
    * code = #A1248
    * display = "Enteral nutritional products, including infant formula"
  * concept[+]
    * code = #A1251
    * display = "Parenteral nutritional products"
  * concept[+]
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e1125-vs"
  * name = "D1e1125vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE285-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e1125-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE285-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e1558-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE288-cs"
  * name = "MedicationDE288cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1257
    * display = "Incorrect action (process failure or error) (e.g., such as administering overdose or incorrect medication)"
  * concept[+]
    * code = #A1260
    * display = "Unsafe condition"
  * concept[+]
    * code = #A1263
    * display = "Adverse reaction in patient to the administered substance without any apparent incorrect action"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e1558-vs"
  * name = "D1e1558vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE288-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e1558-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE288-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e1746-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE291-cs"
  * name = "MedicationDE291cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A585
    * display = "Incorrect patient"
  * concept[+]
    * code = #A1272
    * display = "Incorrect medication/substance"
  * concept[+]
    * code = #A1275
    * display = "Incorrect dose(s)"
  * concept[+]
    * code = #A1278
    * display = "Incorrect route of administration"
  * concept[+]
    * code = #A1281
    * display = "Incorrect timing"
  * concept[+]
    * code = #A1284
    * display = "Incorrect rate"
  * concept[+]
    * code = #A1287
    * display = "Incorrect duration of administration or course of therapy"
  * concept[+]
    * code = #A1290
    * display = "Incorrect dosage form (e.g., sustained release instead of immediate release)"
  * concept[+]
    * code = #A1293
    * display = "Incorrect strength or concentration"
  * concept[+]
    * code = #A1296
    * display = "Incorrect preparation, including inappropriate cutting of tablets, error in compounding, mixing, etc."
  * concept[+]
    * code = #A1299
    * display = "Expired or deteriorated medication/substance"
  * concept[+]
    * code = #A1301
    * display = "Medication/substance that is known to be an allergen to the patient"
  * concept[+]
    * code = #A1305
    * display = "Medication/substance that is known to be contraindicated for the patient"
  * concept[+]
    * code = #A1308
    * display = "Incorrect patient/family action (e.g., self-administration error)"
  * concept[+]
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e1746-vs"
  * name = "D1e746vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE291-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e1746-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE291-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e1863-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE294-cs"
  * name = "MedicationDE294cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1314
    * display = "Overdose"
  * concept[+]
    * code = #A1317
    * display = "Underdose"
  * concept[+]
    * code = #A1320
    * display = "Missed or omitted dose"
  * concept[+]
    * code = #A1323
    * display = "Extra dose"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e1863-vs"
  * name = "D1e863vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE294-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e1863-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE294-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e2109-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE297-cs"
  * name = "MedicationDE297cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1329
    * display = "Too early"
  * concept[+]
    * code = #A1332
    * display = "Too late"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e2109-vs"
  * name = "D1e2109vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE297-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e2109-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE297-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e2272-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE300-cs"
  * name = "MedicationDE300cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1338
    * display = "Too quickly"
  * concept[+]
    * code = #A1341
    * display = "Too slowly"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e2272-vs"
  * name = "D1e2272vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE300-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e2272-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE300-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e2489-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE303-cs"
  * name = "MedicationDE303cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1347
    * display = "Too high"
  * concept[+]
    * code = #A1350
    * display = "Too low"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e2489-vs"
  * name = "D1e2489vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE303-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e2489-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE303-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e2768-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE309-cs"
  * name = "MedicationDE309cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A15
    * display = "Yes"
  * concept[+]
    * code = #A18
    * display = "No"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e2768-vs"
  * name = "D1e2768vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE309-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e2768-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE303-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e2928-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE312-cs"
  * name = "MedicationDE312cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1368
    * display = "Drug-drug"
  * concept[+]
    * code = #A1371
    * display = "Drug-food"
  * concept[+]
    * code = #A1374
    * display = "Drug-disease"
  * concept[+]
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e2928-vs"
  * name = "D1e2928vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE312-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e2928-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE312-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e3159-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE315-cs"
  * name = "MedicationDE315cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A1380
    * display = "Purchasing"
  * concept[+]
    * code = #A1383
    * display = "Storing"
  * concept[+]
    * code = #A1386
    * display = "Prescribing/ordering"
  * concept[+]
    * code = #A1389
    * display = "Transcribing"
  * concept[+]
    * code = #A1392
    * display = "Preparing"
  * concept[+]
    * code = #A1395
    * display = "Dispensing"
  * concept[+]
    * code = #A1398
    * display = "Administering"
  * concept[+]
    * code = #A1401
    * display = "Monitoring"
  * concept[+]
    * code = #UNK
    * display = "Unknown"
  * concept[+]
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e3159-vs"
  * name = "D1e3159vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE315-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e3159-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE315-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e4024-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE333-cs"
  * name = "MedicationDE333cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A15
    * display = "Yes"
  * concept[+]
    * code = #A18 
    * display = "No"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e4024-vs"
  * name = "D1e4024vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE333-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e4024-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE333-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e4118-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE336-cs"
  * name = "MedicationDE336cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+]
    * code = #A15
    * display = "Yes"
  * concept[+]
    * code = #A18 
    * display = "No"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e4118-vs"
  * name = "D1e4118vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE336-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e4118-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE336-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e4236-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE348-cs"
  * name = "MedicationDE348cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #A1440
    * display = "Cutaneous, topical application, including ointment, spray, patch"
  * concept[+] 
    * code = #A1443
    * display = "Subcutaneous"
  * concept[+] 
    * code = #A1444
    * display = "Ophthalmic"
  * concept[+] 
    * code = #A1446
    * display = "Oral, including sublingual or buccal"
  * concept[+] 
    * code = #A1447
    * display = "Otic"
  * concept[+] 
    * code = #A1449
    * display = "Nasal"
  * concept[+] 
    * code = #A1450
    * display = "Inhalation"
  * concept[+] 
    * code = #A1452
    * display = "Intravenous"
  * concept[+] 
    * code = #A1455
    * display = "Intramuscular"
  * concept[+] 
    * code = #A1458
    * display = "Intrathecal"
  * concept[+] 
    * code = #A1461
    * display = "Epidural"
  * concept[+] 
    * code = #A1464
    * display = "Gastric"
  * concept[+] 
    * code = #A1467
    * display = "Rectal"
  * concept[+] 
    * code = #A1470
    * display = "Vaginal"
  * concept[+] 
    * code = #UNK
    * display = "Unknown"
  * concept[+] 
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e4236-vs"
  * name = "D1e4236vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE348-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e4236-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE348-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e4716-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#Medication/DE351-cs"
  * name = "MedicationDE351cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #A1440
    * display = "Cutaneous, topical application, including ointment, spray, patch"
  * concept[+] 
    * code = #A1443
    * display = "Subcutaneous"
  * concept[+] 
    * code = #A1444
    * display = "Ophthalmic"
  * concept[+] 
    * code = #A1446
    * display = "Oral, including sublingual or buccal"
  * concept[+] 
    * code = #A1447
    * display = "Otic"
  * concept[+] 
    * code = #A1449
    * display = "Nasal"
  * concept[+] 
    * code = #A1450
    * display = "Inhalation"
  * concept[+] 
    * code = #A1452
    * display = "Intravenous"
  * concept[+] 
    * code = #A1455
    * display = "Intramuscular"
  * concept[+] 
    * code = #A1458
    * display = "Intrathecal"
  * concept[+] 
    * code = #A1461
    * display = "Epidural"
  * concept[+] 
    * code = #A1464
    * display = "Gastric"
  * concept[+] 
    * code = #A1467
    * display = "Rectal"
  * concept[+] 
    * code = #A1470
    * display = "Vaginal"
  * concept[+] 
    * code = #UNK
    * display = "Unknown"
  * concept[+] 
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e4716-vs"
  * name = "D1e4716vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#Medication/DE351-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e4716-cs"
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#DE351-cs"
* extension[$questionnaire-versionAlgorithm].valueCoding = $version-algorithm#semver
* extension[$questionnaire-copyrightLabel].valueString = "(c) 2013"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/F8-1.2"
* identifier
  * system = "http://Medication"
  * value = "form_identifier/F8/1.2"
* name = "MedicationOrOtherSubstances"
* title = "Medication or Other Substance"
* status = #active
* subjectType = #Patient
* date = "2012-04-01"
* publisher = "Agency for Healthcare Research and Quality (AHRQ)"
* useContext
  * code = $usage-context-type#venue
  * valueCodeableConcept.text = "Acute Care Hospitals"
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#header
  * linkId = "Medication/header"
  * type = #group
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 3
    * linkId = "Medication/DE2"
    * text = "Event ID:"
    * type = #string
    * required = true
  * item[+]
    * linkId = "Medication/DE30"
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
    * type = #display
  * item[+]
    * linkId = "Medication/SEC01/74080-3"
    * type = #group
    * required = true
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 1
      * linkId = "Medication/DE270"
      * definition = "http://AHRQ.gov/data_element_identifier#Type%20of%20substance%20involved"
      * text = "What type of medication/substance was involved?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e551-vs"
      * item[+]
        * extension
          * url = "http://hl7.org/fhir/StructureDefinition/minLength"
          * valueInteger = 7
        * linkId = "Medication/DE273"
        * definition = "http://AHRQ.gov/data_element_identifier#Type%20of%20medication%20involved"
        * text = "What type of medication?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e639-vs"
        * item
          * extension
            * url = "http://hl7.org/fhir/StructureDefinition/minLength"
            * valueInteger = 0
          * linkId = "Medication/DE276"
          * definition = "http://AHRQ.gov/data_element_identifier#Compounded%20preparation%20ingredients"
          * text = "Please list all ingredients:"
          * type = #string
          * repeats = true
      * item[+]
        * extension
          * url = "http://hl7.org/fhir/StructureDefinition/minLength"
          * valueInteger = 8
        * linkId = "Medication/DE279"
        * text = "What type of biological product?"
        * type = #open-choice
        * answerValueSet = "#d1e910-vs"
        * item
          * linkId = "Medication/DE282"
          * text = "What was the lot number of the vaccine?"
          * type = #string
          * required = true
      * item[+]
        * linkId = "Medication/DE285"
        * text = "What type of nutritional product?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e1125-vs"
    * item[+]
      * linkId = "Medication/DE288"
      * text = "Which of the following best characterizes the event?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e1558-vs"
    * item[+]
      * linkId = "Medication/DE291"
      * text = "What was the incorrect action?"
      * type = #open-choice
      * answerValueSet = "#d1e1746-vs"
      * item[+]
        * linkId = "Medication/DE294"
        * text = "Which best describes the incorrect dose(s)?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e1863-vs"
      * item[+]
        * linkId = "Medication/DE297"
        * text = "Which best describes the incorrect timing?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e2109-vs"
      * item[+]
        * linkId = "Medication/DE300"
        * text = "Which best describes the incorrect rate?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e2272-vs"
      * item[+]
        * linkId = "Medication/DE303"
        * text = "Which best describes the incorrect strength or concentration?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e2489-vs"
      * item[+]
        * linkId = "Medication/DE306"
        * text = "What was the expiration date?"
        * type = #string
        * required = true
      * item[+]
        * linkId = "Medication/DE309"
        * text = "Was there a documented history of allergies or sensitivities to the medication/substance administered?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e2768-vs"
      * item[+]
        * linkId = "Medication/DE312"
        * text = "What was the contraindication (potential or actual interaction)?"
        * type = #open-choice
        * required = true
        * answerValueSet = "#d1e2928-vs"
    * item[+]
      * linkId = "Medication/DE315"
      * text = "At what stage in the process did the event originate, regardless of the stage at which it was discovered?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e3159-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs"
      * valueInteger = 5
    * linkId = "Medication/SEC02/74078-7"
    * type = #group
    * repeats = true
    * required = true
    * item[+]
      * linkId = "Medication/SEC02/74078-7.0"
      * text = "Please provide the following medication details for any medications or other substances directly involved in the event."
      * type = #display
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE318"
      * text = "Generic name or investigational drug name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE319"
      * text = "Ingredient"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE321"
      * text = "Brand name"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE322"
      * text = "Brand name RXCUI"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE324"
      * text = "Manufacturer"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE327"
      * text = "Strength or concentration of product"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE328"
      * text = "Clinical Component RXCUI"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE330"
      * text = "Dosage form of Product"
      * type = #string
    * item[+]
      * extension
        * url = "http://hl7.org/fhir/StructureDefinition/minLength"
        * valueInteger = 0
      * linkId = "Medication/DE331"
      * text = "Dose form RXCUI"
      * type = #string
    * item[+]
      * linkId = "Medication/DE333"
      * text = "Was this medication/substance prescribed for this patient?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e4024-vs"
    * item[+]
      * linkId = "Medication/DE336"
      * text = "Was this medication/substance given to this patient?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e4118-vs"
  * item[+]
    * linkId = "Medication/SEC03"
    * type = #group
    * item[+]
      * linkId = "Medication/DE348"
      * text = "What was the intended route of administration?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e4236-vs"
    * item[+]
      * linkId = "Medication/DE351"
      * text = "What was the actual route of administration (attempted or completed)?"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e4716-vs"
  * item[+]
    * linkId = "Medication/SEC04"
    * text = "STOP"
    * type = #group
    * item
      * linkId = "Medication/SEC04.0"
      * text = "The form is complete."
      * type = #display
  * item[+]
    * linkId = "Medication/SEC05"
    * text = "Thank you for completing these questions."
    * type = #group
    * item
      * linkId = "Medication/SEC05.0"
      * text = "OMB No. 0935-0143 Exp. Date 10/31/2014 Public reporting burden for the collection of information is estimated to average 10 minutes per response. An agency may not conduct or sponsor, and a person is not required to respond to, a collection of information unless it displays a currently valid OMB control number. Send comments regarding this burden estimate or any other aspect of this collection of information, including suggestions for reducing this burden, to: AHRQ Reports Clearance Officer, Attention: PRA, Paperwork Reduction Project (0935-0143), AHRQ, 540 Gaither Road, Room #5036, Rockville, MD 20850."
      * type = #display
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

Instance: HERF-1.2
InstanceOf: Questionnaire
Usage: #inline
* meta.lastUpdated = "2014-05-15T17:25:15Z"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e5879-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#HERF/DE3-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #A3
    * display = "Incident"
    * definition = "A patient safety event that reached the patient, whether or not the patient was harmed."
  * concept[+] 
    * code = #A6
    * display = "Near Miss"
    * definition = "A patient safety event that did not reach the patient."
  * concept[+] 
    * code = #A9
    * display = "Unsafe Condition"
    * definition = "Any circumstance that increases the probability of a patient safety event."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e5879-vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#HERF/DE3-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e5879-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e6177-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#HERF/DE21-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #A42
    * display = "Blood or Blood Product"
  * concept[+] 
    * code = #A44
    * display = "Device or Medical/Surgical Supply, including Health Information Technology (HIT)"
  * concept[+] 
    * code = #A48
    * display = "Fall"
  * concept[+] 
    * code = #A51
    * display = "Healthcare-associated Infection"
  * concept[+] 
    * code = #A54
    * display = "Medication or Other Substance"
  * concept[+] 
    * code = #A57
    * display = "Perinatal"
  * concept[+] 
    * code = #A60
    * display = "Pressure Ulcer"
  * concept[+] 
    * code = #A63
    * display = "Surgery or Anesthesia (includes invasive procedure)"
  * concept[+] 
    * code = #A64
    * display = "Venous Thromboembolism"
  * concept[+] 
    * code = #A66
    * display = "Other: PLEASE SPECIFY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e6177-vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#HERF/DE21-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e6177-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e6853-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#HERF/DE42-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #M
    * display = "Male"
  * concept[+] 
    * code = #F
    * display = "Female"
  * concept[+] 
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e6853-vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#HERF/DE42-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e6853-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e7006-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#HERF/Hidden-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #A15
    * display = "Yes"
  * concept[+] 
    * code = #A18
    * display = "No"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e7006-vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#HERF/Hidden-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e7006-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e7220-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#HERF/DE43-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #M
    * display = "Male"
  * concept[+] 
    * code = #F
    * display = "Female"
  * concept[+] 
    * code = #UNK
    * display = "Unknown"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e7220-vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#HERF/DE43-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e7220-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e7422-cs"
  * url = "http://example.org/AHRQ/form/question_identifier#HERF/DE33-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #A15
    * display = "Yes"
  * concept[+] 
    * code = #A18
    * display = "No"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e7422-vs"
  * status = #active
  * compose.include.system = "http://example.org/AHRQ/form/question_identifier#HERF/DE33-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e7422-cs"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/HERF-1.2"
* identifier
  * system = "http://example.org/AHRQ"
  * value = "identifier/HERF/1.2"
* title = "Healthcare Event Reporting Form (HERF) Hospital Version 1.2"
* status = #active
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#header
  * linkId = "HERF/header"
  * type = #group
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 3
    * linkId = "HERF/DE2"
    * text = "Event ID"
    * type = #string
    * required = true
  * item[+]
    * linkId = "HERF/DE30"
    * text = "Initial Report Date"
    * type = #string
    * required = true
* item[+]
  * linkId = "HERF/SEC01"
  * type = #group
  * item[+]
    * linkId = "HERF/DE30b"
    * text = "Report Date"
    * type = #string
    * required = true
  * item[+]
    * linkId = "HERF/DE3"
    * text = "What is being reported?"
    * type = #open-choice
    * required = true
    * answerValueSet = "#d1e5879-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs"
      * valueInteger = 0
    * linkId = "HERF/DE15"
    * text = "Briefly describe the event that occurred or unsafe condition"
    * type = #string
    * required = true
    * repeats = true
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs"
      * valueInteger = 0
    * linkId = "HERF/DE18"
    * text = "Briefly describe the location where the event occurred or where the unsafe condition exists"
    * type = #string
    * required = true
    * repeats = true
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs"
      * valueInteger = 10
    * linkId = "HERF/DE21"
    * text = "Which of the following categories are associated with the event or unsafe condition?"
    * type = #open-choice
    * required = true
    * repeats = true
    * answerValueSet = "#d1e6177-vs"
* item[+]
  * linkId = "HERF/SEC01.1"
  * text = "PATIENT INFORMATION (COMPLETE ONLY IF INCIDENT)"
  * type = #group
  * enableWhen
    * question = "HERF/DE3"
    * operator = #=
    * answerCoding = $question_identifier#A3
  * item[+]
    * linkId = "HERF/DE3.0"
    * text = "Please complete the patient identifiers below. Additional patient information is captured on the Patient Information Form (PIF). (When reporting a perinatal incident that affected a mother and a neonate, please complete the patient identifiers below for the mother (Q8 – Q11) and the neonate (Q12 – Q15). Please also complete a separate PIF for the neonate involved.)"
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "MM/DD/YYYY"
    * linkId = "HERF/DE9a"
    * text = "Event Discovery Date"
    * type = #string
    * required = true
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "HHMM"
    * linkId = "HERF/DE9b"
    * text = "Event Discovery Time"
    * type = #string
    * required = true
* item[+]
  * linkId = "HERF/SEC02"
  * text = "Patient Information (COMPLETE ONLY IF INCIDENT):"
  * type = #group
  * enableWhen
    * question = "HERF/DE3"
    * operator = #=
    * answerCoding = $question_identifier#A3
  * item[+]
    * linkId = "HERF/SEC02.0"
    * text = "Please complete the patient identifiers below. Additional patient information is captured on the Patient Information Form (PIF). (When reporting a perinatal incident that affected a mother and a neonate, please complete the patient identifiers below for the mother (Q8 – Q11) and the neonate (Q12 – Q15). Please also complete a separate PIF for the neonate involved.)"
    * type = #display
  * item[+]
    * linkId = "HERF/DE46"
    * text = "Patient's Name"
    * type = #string
    * required = true
  * item[+]
    * linkId = "HERF/DE47"
    * text = "Patient's Date of Birth"
    * type = #string
  * item[+]
    * linkId = "HERF/DE49"
    * text = "Patient's Medical Record #"
    * type = #string
    * required = true
  * item[+]
    * linkId = "HERF/DE42"
    * text = "Patients' Gender"
    * type = #open-choice
    * answerValueSet = "#d1e6853-vs"
* item[+]
  * linkId = "HERF/SEC03"
  * text = "Neonatal Patient Information:"
  * type = #group
  * item[+]
    * linkId = "HERF/SEC03.0"
    * text = "COMPLETE ONLY FOR NEONATE AFFECTED BY PERINATAL INCIDENT"
    * type = #display
  * item[+]
    * linkId = "HERF/Hidden"
    * text = "Is this event a perinatal incident that affected a neonate?"
    * type = #open-choice
    * answerValueSet = "#d1e7006-vs"
    * item[+]
      * linkId = "HERF/DE34"
      * text = "Neonate's Name"
      * type = #string
    * item[+]
      * linkId = "HERF/DE37"
      * text = "Neonate's Date of Birth"
      * type = #string
    * item[+]
      * linkId = "HERF/DE40"
      * text = "Neonate's Medical Record #"
      * type = #string
      * required = true
    * item[+]
      * linkId = "HERF/DE43"
      * text = "Neonate's Gender"
      * type = #open-choice
      * required = true
      * answerValueSet = "#d1e7220-vs"
* item[+]
  * linkId = "HERF/SEC04"
  * text = "REPORT AND EVENT REPORTER INFORMATION"
  * type = #group
  * item
    * linkId = "HERF/DE33"
    * text = "Anonymous Reporter"
    * type = #open-choice
    * answerValueSet = "#d1e7422-vs"
    * item[+]
      * linkId = "HERF/DE50"
      * text = "Reporter's Name"
      * type = #string
      * required = true
    * item[+]
      * linkId = "HERF/DE52"
      * text = "Telephone Number"
      * type = #string
      * required = true
    * item[+]
      * linkId = "HERF/DE53"
      * text = "Email Address"
      * type = #string
      * required = true
    * item[+]
      * linkId = "HERF/DE36"
      * text = "Reporter's Job or Position"
      * type = #string
* item[+]
  * linkId = "HERF/SEC05"
  * text = "Thank you for completing these questions."
  * type = #group
  * item
    * linkId = "HERF/SEC05.0"
    * text = "OMB No. 0935-0143 Exp. Date 10/31/2014 Public reporting burden for the collection of information is estimated to average 10 minutes per response. An agency may not conduct or sponsor, and a person is not required to respond to, a collection of information unless it displays a currently valid OMB control number. Send comments regarding this burden estimate or any other aspect of this collection of information, including suggestions for reducing this burden, to: AHRQ Reports Clearance Officer, Attention: PRA, Paperwork Reduction Project (0935-0143), AHRQ, 540 Gaither Road, Room #5036, Rockville, MD 20850."
    * type = #display
* item[+]
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
    * valueCodeableConcept = $questionnaire-item-control#footer
  * linkId = "HERF/footer"
  * type = #group
  * item
    * linkId = "HERF/footer.0"
    * text = "AHRQ Common Formats - Hospital Version 1.2 - 2012 Medication or Other Substance"
    * type = #display

Instance: 3921052v1.0
InstanceOf: Questionnaire
Usage: #inline
* id = "3921052v1.0"
* meta.lastUpdated = "2014-05-15T17:25:15Z"
* language = #en
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e8086-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921060v1.0-cs"
  * name = "D1e8086cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Primary
    * display = "Primary Diagnosis"
    * definition = "Occurring first in time or sequence; original; of greatest rank or importance or value.: The investigation, analysis and recognition of the presence and nature of disease, condition, or injury from expressed signs and symptoms; also, the scientific determination of any kind; the concise results of such an investigation."
  * concept[+] 
    * code = #Secondary
    * display = "Secondary Diagnosis"
    * definition = "Derived as a result of a primary condition; not direct or immediate; of second rank or importance or value.: The investigation, analysis and recognition of the presence and nature of disease, condition, or injury from expressed signs and symptoms; also, the scientific determination of any kind; the concise results of such an investigation."
  * concept[+] 
    * code = #Treatment-related
    * display = "Treatment related secondary malignancy Diagnosis"
    * definition = "A disorder characterized by development of a malignancy most probably as a result of treatment for a previously existing malignancy.: The investigation, analysis and recognition of the presence and nature of disease, condition, or injury from expressed signs and symptoms; also, the scientific determination of any kind; the concise results of such an investigation."
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Not known, not observed, not recorded, or refused."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e8086-vs"
  * name = "D1e8086vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921060v1.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e8086-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e8407-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921071v1.0-cs"
  * name = "D1e8407cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Initial same as Current"
    * display = "Initial diagnosis same as current"
    * definition = "Initial diagnosis same as current"
  * concept[+] 
    * code = #"At Progression"
    * display = "Disease Progression"
    * definition = "Cancer that continues to grow or spread."
  * concept[+] 
    * code = #"At Restaging"
    * display = "Restaging"
    * definition = "Two or more adjacent copies of an identical pattern.: The extent of a cancer within the body, especially whether the disease has spread from the original site to other parts of the body."
  * concept[+] 
    * code = #"Initial Diagnosis"
    * display = "First Diagnosis"
    * definition = "Preceding all others in time or space or degree.: The investigation, analysis and recognition of the presence and nature of disease, condition, or injury from expressed signs and symptoms; also, the scientific determination of any kind; the concise results of such an investigation."
  * concept[+] 
    * code = #"Current Diagnosis"
    * display = "Current Diagnosis"
    * definition = "Occurring in or belonging to the present time.: The investigation, analysis and recognition of the presence and nature of disease, condition, or injury from expressed signs and symptoms; also, the scientific determination of any kind; the concise results of such an investigation."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e8407-vs"
  * name = "D1e8407vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921071v1.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e8407-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e8830-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921081v1.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Cytologic
    * display = "Cytological Procedure"
    * definition = "Technique or procedure for manipulation of cells and analysis of cell properties and subcellular features."
  * concept[+] 
    * code = #Histologic
    * display = "Histological Procedure"
    * definition = "Technique or procedure used for the study of the microanatomy of tissues and their cellular structure; usually involves microscopic examination of tissue slices."
  * concept[+] 
    * code = #"Histologic and Cytologic"
    * display = "Histologic and Cytologic Procedures"
    * definition = "Pertaining to the combined microscopic physical features of cells and their surrounding extracellular environment in tissues.: The light microscopic study of normal and abnormal cells in fine needle aspirates (FNAs), body cavity fluids, and smears.: Having been established or verified."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e8830-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921081v1.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e8830-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e9025-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921085v1.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #G1
    * display = "Well Differentiated"
    * definition = "Describes tumor cells that generally retain the appearance of normal cells and tend to grow and spread at a slower rate than undifferentiated or poorly differentiated tumor cells."
  * concept[+] 
    * code = #G2
    * display = "Moderately Differentiated"
    * definition = "Definition not available."
  * concept[+] 
    * code = #G3
    * display = "Poorly Differentiated"
    * definition = "Describes tumor cells that generally have lost most of the appearance of normal cells. They tend to grow and spread."
  * concept[+] 
    * code = #G4
    * display = "Undifferentiated"
    * definition = "A term used to describe cells or tissues that do not have specialized (\"mature\") structures or functions. Undifferentiated cancer cells often grow and spread quickly."
  * concept[+] 
    * code = #GB
    * display = "Borderline Histologic Grade"
    * definition = "Straddling the dividing line between two categories.: The degree of abnormality of cancer cells, a measure of differentiation, the extent to which cancer cells are similar in appearance and function to healthy cells of the same tissue type. The degree of differentiation often relates to the clinical behavior of the particular tumor. Based on the microscopic findings, tumor grade is commonly described by one of four degrees of severity. Histopathologic grade of a tumor may be used to plan treatment and estimate the future course, outcome, and overall prognosis of disease. Certain types of cancers, such as soft tissue sarcoma, primary brain tumors, lymphomas, and breast have special grading systems."
  * concept[+] 
    * code = #GX
    * display = "Grade Cannot be Assessed"
    * definition = "An operation in which a term denies or inverts the meaning of another term or construction.: Having determined the value, significance, or extent of.: The degree of abnormality of cancer cells, a measure of differentiation, the extent to which cancer cells are similar in appearance and function to healthy cells of the same tissue type. The degree of differentiation often relates to the clinical behavior of the particular tumor. Based on the microscopic findings, tumor grade is commonly described by one of four degrees of severity. Histopathologic grade of a tumor may be used to plan treatment and estimate the future course, outcome, and overall prognosis of disease. Certain types of cancers, such as soft tissue sarcoma, primary brain tumors, lymphomas, and breast have special grading systems."
  * concept[+] 
    * code = #"High Grade"
    * display = "High Grade"
    * definition = "Used to describe tumor samples that exhibit poorly differentiated or undifferentiated cells. They are generally expected to be fast growing and aggressive."
  * concept[+] 
    * code = #"Low Grade"
    * display = "Low Grade"
    * definition = "Used to describe tumor samples that exhibit well to moderately well differentiated cells. They are generally expected to be slow growing and less aggressive."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e9025-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3921052v1.0/question_identifier#3921085v1.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e9025-cs"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/3921052v1.0"
* identifier
  * system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier"
  * value = "3921052v1.0/"
* title = "Diagnosis NCI Standard Template"
* status = #active
* date = "2013-10-16"
* publisher = "National Cancer Institute (NCI)"
* useContext
  * code = $usage-contexts#form-type
  * valueCodeableConcept.text = "CRF"
* item[+]
  * linkId = "3921053v1.0"
  * text = "Mandatory Diagnosis Questions"
  * type = #group
  * required = true
  * item[+]
    * linkId = "3921053v1.0.0"
    * text = "These items must be included when this data is collected for reporting."
    * type = #display
  * item[+]
    * linkId = "3921059v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#62667v3.0"
    * text = "Date of Current Pathologic Diagnosis"
    * type = #string
  * item[+]
    * linkId = "3921060v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3914869v1.0"
    * text = "Diagnosis Type"
    * type = #open-choice
    * answerValueSet = "#d1e8086-vs"
  * item[+]
    * linkId = "3921065v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3914972v1.0"
    * text = "Primary Site"
    * type = #string
* item[+]
  * linkId = "3921066v1.0"
  * text = "Conditional Diagnosis Questions"
  * type = #group
  * item[+]
    * linkId = "3921066v1.0.0"
    * text = "There are business rules to indicate situations under which these elements should be used on a case report form."
    * type = #display
  * item[+]
    * linkId = "3921071v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2816923v1.0"
    * text = "Diagnosis Time Point"
    * type = #open-choice
    * answerValueSet = "#d1e8407-vs"
* item[+]
  * linkId = "3921077v1.0"
  * text = "Optional Diagnosis Questions"
  * type = #group
  * item[+]
    * linkId = "3921077v1.0.0"
    * text = "There is no requirement for inclusion of these elements on the case report form. If the design and scientific questions posed in the study dictate the need to collect this type of data, these elements should be included."
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 1
    * linkId = "3921079v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#64320v3.0"
    * text = "Reviewing Pathologist"
    * type = #string
  * item[+]
    * linkId = "3921080v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2004425v4.0"
    * text = "MedDRA disease code"
    * type = #string
  * item[+]
    * linkId = "3921081v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3914983v1.0"
    * text = "Assessment Method"
    * type = #open-choice
    * answerValueSet = "#d1e8830-vs"
  * item[+]
    * linkId = "3921085v1.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2785839v2.0"
    * text = "Tumor grade"
    * type = #open-choice
    * answerValueSet = "#d1e9025-vs"

Instance: 2674812v4.0
InstanceOf: Questionnaire
Usage: #inline
* id = "2674812v4.0"
* meta.lastUpdated = "2014-05-15T17:25:15Z"
* language = #en
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e9892-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702892v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Female
    * display = "Female Gender"
    * definition = "An individual who reports belonging to the cultural gender role distinction of female."
  * concept[+] 
    * code = #Male
    * display = "Male Gender"
    * definition = "An individual who reports belonging to the cultural gender role distinction of male."
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Not known, not observed, not recorded, or refused."
  * concept[+] 
    * code = #Unspecified
    * display = "Unspecified"
    * definition = "Not stated explicitly or in detail."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e9892-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702892v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e9892-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e10146-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702904v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"American Indian or Alaska Native"
    * display = "American Indian or Alaska Native"
    * definition = "A person having origins in any of the original peoples of North and South America (including Central America), and who maintains tribal affiliation or community attachment."
  * concept[+] 
    * code = #Asian
    * display = "Asian"
    * definition = "A person having origins in any of the original peoples of the Far East, Southeast Asia, or the Indian subcontinent including, for example, Cambodia, China, India, Japan, Korea, Malaysia, Pakistan, the Philippine Islands, Thailand, and Vietnam."
  * concept[+] 
    * code = #"Black or African American"
    * display = "Black or African American"
    * definition = "A person having origins in any of the black racial groups of Africa. Terms such as \"Haitian\" or \"Negro\" can be used in addition to \"Black or African American.\""
  * concept[+] 
    * code = #"Native Hawaiian or other Pacific Islander"
    * display = "Native Hawaiian or Other Pacific Islander"
    * definition = "A person having origins in any of the original peoples of Hawaii, Guam, Samoa, or other Pacific Islands."
  * concept[+] 
    * code = #"Not Reported"
    * display = "Not Reported"
    * definition = "Not provided or available"
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Could not be determined or unsure"
  * concept[+] 
    * code = #White
    * display = "White"
    * definition = "A person having origins in any of the original peoples of Europe, the Middle East, or North Africa."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e10146-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702904v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e10146-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e10593-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702898v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Hispanic or Latino"
    * display = "Hispanic or Latino"
    * definition = "A person of Mexican, Puerto Rican, Cuban, Central or South American or other Spanish culture or origin, regardless of race."
  * concept[+] 
    * code = #"Not Hispanic or Latino"
    * display = "Not Hispanic or Latino"
    * definition = "A person not meeting the definition for Hispanic or Latino."
  * concept[+] 
    * code = #"Not reported"
    * display = "Not Reported"
    * definition = "Not provided or available"
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Could not be determined or unsure"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e10593-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702898v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e10593-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e10923-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702916v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Managed Care/Medicare"
    * display = "Managed Care/Medicare"
    * definition = "An arrangement whereby a third-party payer (e.g., insurance company, federal government, or corporation) mediates between physicians and patients, negotiating fees for service and overseeing the types of treatment given. Managed care has virtually replaced unmanaged indemnity plans, where payment is automatic and oversight procedures are minimal. Whereas 96% of American workers had unmanaged indemnity in 1984, only 28% did in 1988. Typically, in managed care, the third-party payer requires second opinions and pre-certification review for patients requiring hospital admission. They obtain wholesale prices from doctors, and carry out cost-containment measures, including auditing hospitals and reviewing claims. Managed care has figured heavily in the national debate over health care.: A program under the U.S. Social Security Administration that reimburses hospitals and physicians for medical care provided to qualifying people over 65 years old."
  * concept[+] 
    * code = #Medicaid
    * display = "Medicaid"
    * definition = "A jointly funded program of the United States federal and state governments that provides hospital expense and medical expense coverage to some people with low-income and certain aged and disabled individuals."
  * concept[+] 
    * code = #"Medicaid and Medicare"
    * display = "Medicare And Medicaid"
    * definition = "A program under the U.S. Social Security Administration that reimburses hospitals and physicians for medical care provided to qualifying people over 65 years old.: An article which expresses the relation of connection or addition. It is used to conjoin a word with a word, a clause with a clause, or a sentence with a sentence.: A jointly funded program of the United States federal and state governments that provides hospital expense and medical expense coverage to some people with low-income and certain aged and disabled individuals."
  * concept[+] 
    * code = #Medicare
    * display = "Medicare"
    * definition = "A program under the U.S. Social Security Administration that reimburses hospitals and physicians for medical care provided to qualifying people over 65 years old."
  * concept[+] 
    * code = #"Medicare and Private Insurance"
    * display = "Medicare And Private Insurance"
    * definition = "A program under the U.S. Social Security Administration that reimburses hospitals and physicians for medical care provided to qualifying people over 65 years old.: An article which expresses the relation of connection or addition. It is used to conjoin a word with a word, a clause with a clause, or a sentence with a sentence.: Not public; kept secret or restricted.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
  * concept[+] 
    * code = #"Military or Veterans Sponsored, NOS"
    * display = "Military Or Veterans Sponsored Insurance, Not Otherwise Specified"
    * definition = "The armed forces of a country.: Or; used to connect words, phrases, or clauses representing alternatives; used to connect alternative terms for the same thing; used in correlation; used to correct or rephrase what was previously said; otherwise.: A division of the Executive Branch of the United States government concerned with overall planning, promoting, and administering programs pertaining to veterans. The Department of Veterans Affairs (VA) was established March 15, 1989 as a Cabinet-level position.: A person or organization that supports or champions something.: Not characterized in any other way.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
  * concept[+] 
    * code = #"Military Sponsored (Including CHAMPUS & TriCare)"
    * display = "Military Insurance"
    * definition = "The armed forces of a country.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
  * concept[+] 
    * code = #"No Means of Payment (No Insurance)"
    * display = "No Insurance"
    * definition = "The non-affirmative response to a question.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
  * concept[+] 
    * code = #Other
    * display = "Other"
    * definition = "Not otherwise specified."
  * concept[+] 
    * code = #"Private Insurance"
    * display = "Private Insurance"
    * definition = "Not public; kept secret or restricted.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
  * concept[+] 
    * code = #"Self-Pay (No Insurance)"
    * display = "Self Payment"
    * definition = "The individual as the object of his own reflective consciousness.: Payment; a sum of money paid."
  * concept[+] 
    * code = #"State Supplemental Health Insurance"
    * display = "State Supplemental Health Insurance"
    * definition = "A U.S. State is any one of the fifty states which is a member of the federation known as the United States of America. Other US geographic areas, such as Puerto Rico and the District of Columbia, are essentially equivalent to State when used in an address. (from Wikipedia and NCI): Something added to complete a thing, make up for a deficiency, or extend or strengthen the whole; serving to complete or make an addition.: The state of the organism when it functions optimally without evidence of disease.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Not known, not observed, not recorded, or refused."
  * concept[+] 
    * code = #"Veterans Sponsored"
    * display = "Veterans Administration Sponsor Insurance"
    * definition = "A division of the Executive Branch of the United States government concerned with overall planning, promoting, and administering programs pertaining to veterans. The Department of Veterans Affairs (VA) was established March 15, 1989 as a Cabinet-level position.: A person or organization that supports or champions something.: A mechanism for guarding against financial aspects of risk by making payments in the form of premiums to an insurance company, which pays an agreed-upon sum to the insured in the event of loss."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e10923-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702916v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e10923-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e11887-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702942v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Bachelor's Degree"
    * display = "Bachelor's Degree"
    * definition = "Bachelor's degree is an award (baccalaureate or equivalent degree, as determined by the Secretary of the U.S. Department of Education) conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of studies, that normally requires at least four years of full-time equivalent college-level work. This includes bachelor's degrees conferred in a five-year cooperative program."
  * concept[+] 
    * code = #"Doctoral degree or professional degree"
    * display = "Professional Doctorate or Doctorate Degree"
    * definition = "A doctorate awarded in certain fields where most holders of the degree are not engaged primarily in scholarly research and academic activities, but rather in a profession, such as law, medicine, music, or ministry.: Or; used to connect words, phrases, or clauses representing alternatives; used to connect alternative terms for the same thing; used in correlation; used to correct or rephrase what was previously said; otherwise.: The Doctor's Degree is the highest award a student can earn for graduate study. The doctor's degree classification includes such degrees in any field."
  * concept[+] 
    * code = #"Grade School"
    * display = "Grade School"
    * definition = "A school for young children; usually the first 6 or 8 grades."
  * concept[+] 
    * code = #"Graduate or professional degree"
    * display = "Graduation Or Professional Degree"
    * definition = "Conferral or receipt of an academic degree or diploma marking the completion of a defined set of coursework.: Or; used to connect words, phrases, or clauses representing alternatives; used to connect alternative terms for the same thing; used in correlation; used to correct or rephrase what was previously said; otherwise.: An occupation requiring special education, especially in the liberal arts or sciences.: An academic degree is an award conferred by a college, university, or other postsecondary education institution as official recognition for the successful completion of a program of studies."
  * concept[+] 
    * code = #"High school graduate (including equivalency)"
    * display = "High School Completion or General Equivalency Diploma (GED) Completion"
    * definition = "Indicates that a person has attended high school and has received a high school diploma.: Or; used to connect words, phrases, or clauses representing alternatives; used to connect alternative terms for the same thing; used in correlation; used to correct or rephrase what was previously said; otherwise.: Indicates that a person has received a General Equivalency Diploma in lieu of a high school diploma."
  * concept[+] 
    * code = #"Master's Degree"
    * display = "Master's Degree"
    * definition = "The Master's Degree is an award that requires the successful completion of a program of study of at least the full-time equivalent of 1 but not more than two academic years of work beyond the bachelor's degree."
  * concept[+] 
    * code = #"No formal education"
    * display = "No Formal Schooling"
    * definition = "Indicates that a person has never attended an educational program or formal schooling."
  * concept[+] 
    * code = #"Not high school graduate"
    * display = "Not High School Graduate"
    * definition = "Indicates a person has attended high school but did not complete high school and did not receive a high school diploma."
  * concept[+] 
    * code = #"Some college or associate degree"
    * display = "Some College or Associates Degree"
    * definition = "An institution of higher education created to educate and grant degrees; often a part of a university.: At least a small amount or number of.: Or; used to connect words, phrases, or clauses representing alternatives; used to connect alternative terms for the same thing; used in correlation; used to correct or rephrase what was previously said; otherwise.: A degree granted by a two-year college on successful completion of the undergraduates course of studies."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e11887-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702942v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e11887-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e12384-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702952v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Other country"
    * display = "Other country"
    * definition = "Other country of birth."
  * concept[+] 
    * code = #"Other country, specify"
    * display = "OTHER COUNTRY, SPECIFY"
    * definition = "OTHER COUNTRY, SPECIFY"
  * concept[+] 
    * code = #USA
    * display = "USA"
    * definition = "USA"
  * concept[+] 
    * code = #"USA, specify the 2 letter State code, eg NY"
    * display = "USA, SPECIFY THE 2 LETTER STATE CODE, EG NY"
    * definition = "USA, SPECIFY THE 2 LETTER STATE CODE, EG NY"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e12384-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702952v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e12384-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e12630-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702957v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"10th Grade"
    * display = "10th Grade"
    * definition = "Indicates that 10th grade is the highest level of educational achievement"
  * concept[+] 
    * code = #"11th Grade"
    * display = "11th Grade"
    * definition = "Indicates that 11th grade is the highest level of educational achievement"
  * concept[+] 
    * code = #"12th Grade No Diploma"
    * display = "12th Grade"
    * definition = "Indicates that a person was in school through 12th grade but that they did not receive a high school diploma."
  * concept[+] 
    * code = #"1st Grade"
    * display = "1st Grade"
    * definition = "Indicates that 1st grade is the highest level of educational achievement."
  * concept[+] 
    * code = #"2nd Grade"
    * display = "2nd Grade"
    * definition = "Indicates that 2nd grade is the highest level of educational achievement."
  * concept[+] 
    * code = #"3rd Grade"
    * display = "3rd Grade"
    * definition = "Indicates that 3rd grade is the highest level of educational achievement."
  * concept[+] 
    * code = #"4th Grade"
    * display = "4th Grade"
    * definition = "Indicates that 4th grade is the highest level of educational achievement."
  * concept[+] 
    * code = #"5th Grade"
    * display = "5th Grade"
    * definition = "Indicates that 5th grade is the highest level of educational achievement."
  * concept[+] 
    * code = #"6th Grade"
    * display = "6th Grade"
    * definition = "Indicates that 6th grade is the highest level of educational achievement."
  * concept[+] 
    * code = #"7th Grade"
    * display = "7th Grade"
    * definition = "Indicates that 7th grade is the highest level of educational achievement"
  * concept[+] 
    * code = #"8th Grade"
    * display = "8th Grade"
    * definition = "Indicates that 8th grade is the highest level of educational achievement"
  * concept[+] 
    * code = #"9th Grade"
    * display = "9th Grade"
    * definition = "Indicates that 9th grade is the highest level of educational achievement"
  * concept[+] 
    * code = #"Academic Doctorate Degree"
    * display = "Academic Doctorate Degree Completion"
    * definition = "Indicates that a person has received a degree the highest award earned for graduate study."
  * concept[+] 
    * code = #"Associate Degree"
    * display = "Associate Degree"
    * definition = "Indicates that a person has received a degree from a 2 year college program."
  * concept[+] 
    * code = #"Bachelor Degree"
    * display = "Bachelor's Degree Completion"
    * definition = "Indicates that a person has received a degree for successful completion of a program of studies that normally requires at least 4-5 years of full-time equivalent college-level work."
  * concept[+] 
    * code = #"Don't Know"
    * display = "Does Not Know"
    * definition = "The answer is not known by the person answering."
  * concept[+] 
    * code = #"General Equivalency Diploma"
    * display = "General Equivalency Diploma"
    * definition = "Indicates that a person has received a General Equivalency Diploma in lieu of a high school diploma."
  * concept[+] 
    * code = #"High School Graduate"
    * display = "High School Graduate"
    * definition = "Indicates that a person has attended high school and has received a high school diploma."
  * concept[+] 
    * code = #Kindergarten
    * display = "Kindergarten Completion"
    * definition = "Indicates that kindergarten is the highest level of education achievement."
  * concept[+] 
    * code = #"Master's Degree"
    * display = "Master's Degree Completion"
    * definition = "Indicates that a person has received a degree for completion of at least one year of prescribed study beyond the bachelor's degree."
  * concept[+] 
    * code = #"No Formal Schooling"
    * display = "Never Attended"
    * definition = "Indicates that a person never attended school or only attended kindergarten."
  * concept[+] 
    * code = #Preschool
    * display = "Preschool Completion"
    * definition = "Indicates that preschool is the highest level of education achievement."
  * concept[+] 
    * code = #"Professional Doctorate Degree"
    * display = "Professional Doctorate Degree Completion"
    * definition = "Indicates that a person has received a degree allowing them to practice a profession, such as law, medicine, music, or ministry."
  * concept[+] 
    * code = #Refused
    * display = "Refuse"
    * definition = "To decline to do, accept, give, or allow something."
  * concept[+] 
    * code = #"Some College, No Degree"
    * display = "Some College"
    * definition = "Indicates that a person has attended college but that they did not receive any degree."
  * concept[+] 
    * code = #"VoTech Program"
    * display = "Vocational Degree"
    * definition = "Indicates that a person has received a degree from a occupational, technical, or vocational program."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e12630-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702957v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e12630-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e14027-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702985v4.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Divorced
    * display = "Divorced: C51776"
    * definition = "A person whose marriage has been legally dissolved and has not remarried."
  * concept[+] 
    * code = #"Domestic Partnership"
    * display = "Domestic Partner"
    * definition = "A person who is a member of an unmarried couple, including same sex couples, living together in longstanding relationships, that are registered or unregistered."
  * concept[+] 
    * code = #Married
    * display = "Married: C51773"
    * definition = "A person currently joined in matrimony. Classify common law marriage as married. Includes married couples living together and not living together."
  * concept[+] 
    * code = #"Never Married"
    * display = "Never married"
    * definition = "A person who has never been married or whose only marriages have been annulled."
  * concept[+] 
    * code = #Separated
    * display = "SEPARATED"
    * definition = "A person living apart from his/her spouse by legal arrangement."
  * concept[+] 
    * code = #Widowed
    * display = "WIDOWED"
    * definition = "A person who is no longer married because of the death of his/her spouse and who has not remarried."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e14027-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/2674812v4.0/question_identifier#3702985v4.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e14027-cs"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/2674812v4.0"
* identifier
  * system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier"
  * value = "2674812v4.0/"
* title = "Demography NCI Standard Template"
* status = #active
* date = "2013-03-22"
* publisher = "National Cancer Institute (NCI)"
* useContext[+]
  * code = $usage-contexts#form-type
  * valueCodeableConcept.text = "CRF"
* useContext[+]
  * code = $usage-contexts#form-type
  * valueCodeableConcept.text = "Demographic"
* item[+]
  * linkId = "3702891v4.0"
  * text = "Mandatory Demography Questions"
  * type = #group
  * required = true
  * item[+]
    * linkId = "3702891v4.0.0"
    * text = "These items must be included when this data is collected for reporting"
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 4
    * linkId = "3702892v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2200604v3.0"
    * text = "Gender"
    * type = #open-choice
    * answerValueSet = "#d1e9892-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 5
    * linkId = "3702904v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2192199v1.0"
    * text = "Race"
    * type = #open-choice
    * answerValueSet = "#d1e10146-vs"
  * item[+]
    * linkId = "3702903v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#793v5.1"
    * text = "Patient's Date of Birth"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 7
    * linkId = "3702898v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2192217v2.0"
    * text = "Ethnicity"
    * type = #open-choice
    * answerValueSet = "#d1e10593-vs"
* item[+]
  * linkId = "3702912v4.0"
  * text = "Conditional Demography Questions"
  * type = #group
  * item[+]
    * linkId = "3702912v4.0.0"
    * text = "There are business rules to indicate situations under which these elements should be used on a case report form."
    * type = #display
  * item[+]
    * linkId = "3702914v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2179606v2.0"
    * text = "ZIP Code"
    * type = #string
  * item[+]
    * linkId = "3702916v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2865130v1.0"
    * text = "Payment Method"
    * type = #open-choice
    * answerValueSet = "#d1e10923-vs"
  * item[+]
    * linkId = "3702932v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#315v4.0"
    * text = "Country of Residence"
    * type = #string
  * item[+]
    * linkId = "3702934v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2003745v5.0"
    * text = "Date Completed"
    * type = #string
  * item[+]
    * linkId = "3702936v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2200286v1.0"
    * text = "CDC Race Code"
    * type = #string
  * item[+]
    * linkId = "3702938v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2200284v2.0"
    * text = "CDC Ethnicity Code"
    * type = #string
* item[+]
  * linkId = "3702940v4.0"
  * text = "Optional Demography Questions"
  * type = #group
  * item[+]
    * linkId = "3702940v4.0.0"
    * text = "There is no requirement for inclusion of these elements on the case report form. If the design and scientific questions posed in the study dictate the need to collect this type of data, these elements should be included."
    * type = #display
  * item[+]
    * linkId = "3702942v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2681552v1.0"
    * text = "Highest Education Level"
    * type = #open-choice
    * answerValueSet = "#d1e11887-vs"
  * item[+]
    * linkId = "3702952v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2001708v5.0"
    * text = "Country of Birth"
    * type = #open-choice
    * answerValueSet = "#d1e12384-vs"
  * item[+]
    * linkId = "3702957v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2674076v2.0"
    * text = "Highest Education Level"
    * type = #open-choice
    * answerValueSet = "#d1e12630-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "9999.99"
    * linkId = "3702984v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2943243v1.0"
    * text = "Census Tract Code at Enrollment"
    * type = #string
  * item[+]
    * linkId = "3702985v4.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2188083v2.0"
    * text = "Marital Status"
    * type = #open-choice
    * answerValueSet = "#d1e14027-vs"

Instance: 3265657v2.0
InstanceOf: Questionnaire
Usage: #inline
* id = "3265657v2.0"
* meta.lastUpdated = "2014-05-15T17:25:15Z"
* language = #en
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e14927-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3556214v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Abdominal distension"
    * display = "Abdominal distension"
    * definition = "A disorder characterized by swelling of the abdomen."
  * concept[+] 
    * code = #"Abdominal infection"
    * display = "Abdominal infection"
    * definition = "A disorder characterized by an infectious process involving the abdominal cavity."
  * concept[+] 
    * code = #"Abdominal pain"
    * display = "Abdominal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the abdominal region."
  * concept[+] 
    * code = #"Abdominal soft tissue necrosis"
    * display = "Abdominal soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the abdominal wall."
  * concept[+] 
    * code = #"Abducens nerve disorder"
    * display = "Abducens nerve disorder"
    * definition = "A disorder characterized by involvement of the abducens nerve (sixth cranial nerve)."
  * concept[+] 
    * code = #"Accessory nerve disorder"
    * display = "Accessory nerve disorder"
    * definition = "A disorder characterized by involvement of the accessory nerve (eleventh cranial nerve)."
  * concept[+] 
    * code = #Acidosis
    * display = "Acidosis"
    * definition = "A disorder characterized by abnormally high acidity (high hydrogen-ion concentration) of the blood and other body tissues."
  * concept[+] 
    * code = #"Acoustic nerve disorder NOS"
    * display = "Acoustic nerve disorder NOS"
    * definition = "A disorder characterized by involvement of the acoustic nerve (eighth cranial nerve)."
  * concept[+] 
    * code = #"Activated partial thromboplastin time prolonged"
    * display = "Activated partial thromboplastin time prolonged"
    * definition = "An abnormal laboratory test result in which the partial thromboplastin time is found to be greater than the control value. As a possible indicator of coagulopathy, a prolonged partial thromboplastin time (PTT) may occur in a variety of diseases and disorders, both primary and related to treatment."
  * concept[+] 
    * code = #"Acute coronary syndrome"
    * display = "Acute coronary syndrome"
    * definition = "A disorder characterized by signs and symptoms related to acute ischemia of the myocardium secondary to coronary artery disease. The clinical presentation covers a spectrum of heart diseases from unstable angina to myocardial infarction."
  * concept[+] 
    * code = #"Acute kidney injury"
    * display = "Acute kidney injury"
    * definition = "A disorder characterized by the acute loss of renal function and is traditionally classified as pre-renal (low blood flow into kidney), renal (kidney damage) and post-renal causes (ureteral or bladder outflow obstruction)."
  * concept[+] 
    * code = #"Adrenal insufficiency"
    * display = "Adrenal insufficiency"
    * definition = "A disorder that occurs when the adrenal cortex does not produce enough of the hormone cortisol and in some cases, the hormone aldosterone. It may be due to a disorder of the adrenal cortex as in Addison's disease or primary adrenal insufficiency."
  * concept[+] 
    * code = #"Adult respiratory distress syndrome"
    * display = "Adult respiratory distress syndrome"
    * definition = "A disorder characterized by progressive and life-threatening pulmonary distress in the absence of an underlying pulmonary condition, usually following major trauma or surgery."
  * concept[+] 
    * code = #Agitation
    * display = "Agitation"
    * definition = "A disorder characterized by a state of restlessness associated with unpleasant feelings of irritability and tension."
  * concept[+] 
    * code = #Akathisia
    * display = "Akathisia"
    * definition = "A disorder characterized by an uncomfortable feeling of inner restlessness and inability to stay still; this is a side effect of some psychotropic drugs."
  * concept[+] 
    * code = #"Alanine aminotransferase increased"
    * display = "Alanine aminotransferase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of alanine aminotransferase (ALT or SGPT) in the blood specimen."
  * concept[+] 
    * code = #"Alcohol intolerance"
    * display = "Alcohol intolerance"
    * definition = "A disorder characterized by an increase in sensitivity to the adverse effects of alcohol, which can include nasal congestion, skin flushes, heart dysrhythmias, nausea, vomiting, indigestion and headaches."
  * concept[+] 
    * code = #"Alkaline phosphatase increased"
    * display = "Alkaline phosphatase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of alkaline phosphatase in a blood specimen."
  * concept[+] 
    * code = #Alkalosis
    * display = "Alkalosis"
    * definition = "A disorder characterized by abnormally high alkalinity (low hydrogen-ion concentration) of the blood and other body tissues."
  * concept[+] 
    * code = #"Allergic reaction"
    * display = "Allergic reaction"
    * definition = "A disorder characterized by an adverse local or general response from exposure to an allergen."
  * concept[+] 
    * code = #"Allergic rhinitis"
    * display = "Allergic rhinitis"
    * definition = "A disorder characterized by an inflammation of the nasal mucous membranes caused by an IgE-mediated response to external allergens. The inflammation may also involve the mucous membranes of the sinuses, eyes, middle ear, and pharynx. Symptoms include sneezing, nasal congestion, rhinorrhea and itching."
  * concept[+] 
    * code = #Alopecia
    * display = "Alopecia"
    * definition = "A disorder characterized by a decrease in density of hair compared to normal for a given individual at a given age and body location."
  * concept[+] 
    * code = #Amnesia
    * display = "Amnesia"
    * definition = "A disorder characterized by systematic and extensive loss of memory."
  * concept[+] 
    * code = #"Anal fistula"
    * display = "Anal fistula"
    * definition = "A disorder characterized by an abnormal communication between the opening in the anal canal to the perianal skin."
  * concept[+] 
    * code = #"Anal hemorrhage"
    * display = "Anal hemorrhage"
    * definition = "A disorder characterized by bleeding from the anal region."
  * concept[+] 
    * code = #"Anal mucositis"
    * display = "Anal mucositis"
    * definition = "A disorder characterized by inflammation of the mucous membrane of the anus."
  * concept[+] 
    * code = #"Anal necrosis"
    * display = "Anal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the anal region."
  * concept[+] 
    * code = #"Anal pain"
    * display = "Anal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the anal region."
  * concept[+] 
    * code = #"Anal stenosis"
    * display = "Anal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the anal canal."
  * concept[+] 
    * code = #"Anal ulcer"
    * display = "Anal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the anal canal."
  * concept[+] 
    * code = #Anaphylaxis
    * display = "Anaphylaxis"
    * definition = "A disorder characterized by an acute inflammatory reaction resulting from the release of histamine and histamine-like substances from mast cells, causing a hypersensitivity immune response. Clinically, it presents with breathing difficulty, dizziness, hypotension, cyanosis and loss of consciousness and may lead to death."
  * concept[+] 
    * code = #Anemia
    * display = "Anemia"
    * definition = "A disorder characterized by an reduction in the amount of hemoglobin in 100 ml of blood. Signs and symptoms of anemia may include pallor of the skin and mucous membranes, shortness of breath, palpitations of the heart, soft systolic murmurs, lethargy, and fatigability."
  * concept[+] 
    * code = #"Ankle fracture"
    * display = "Ankle fracture"
    * definition = "A finding of damage to the ankle joint characterized by a break in the continuity of the ankle bone. Symptoms include marked discomfort, swelling and difficulty moving the affected leg and foot."
  * concept[+] 
    * code = #"Anorectal infection"
    * display = "Anorectal infection"
    * definition = "A disorder characterized by an infectious process involving the anal area and the rectum."
  * concept[+] 
    * code = #Anorexia
    * display = "Anorexia"
    * definition = "A disorder characterized by a loss of appetite."
  * concept[+] 
    * code = #Anorgasmia
    * display = "Anorgasmia"
    * definition = "A disorder characterized by an inability to achieve orgasm."
  * concept[+] 
    * code = #Anxiety
    * display = "Anxiety"
    * definition = "A disorder characterized by apprehension of danger and dread accompanied by restlessness, tension, tachycardia, and dyspnea unattached to a clearly identifiable stimulus."
  * concept[+] 
    * code = #"Aortic injury"
    * display = "Aortic injury"
    * definition = "A finding of damage to the aorta."
  * concept[+] 
    * code = #"Aortic valve disease"
    * display = "Aortic valve disease"
    * definition = "A disorder characterized by a defect in aortic valve function or structure."
  * concept[+] 
    * code = #Aphonia
    * display = "Aphonia"
    * definition = "A disorder characterized by the inability to speak. It may result from injuries to the vocal cords or may be functional (psychogenic)."
  * concept[+] 
    * code = #Apnea
    * display = "Apnea"
    * definition = "A disorder characterized by cessation of breathing."
  * concept[+] 
    * code = #Appendicitis
    * display = "Appendicitis"
    * definition = "A disorder characterized by acute inflammation to the vermiform appendix caused by a pathogenic agent."
  * concept[+] 
    * code = #"Appendicitis perforated"
    * display = "Appendicitis perforated"
    * definition = "A disorder characterized by acute inflammation to the vermiform appendix caused by a pathogenic agent with gangrenous changes resulting in the rupture of the appendiceal wall. The appendiceal wall rupture causes the release of inflammatory and bacterial contents from the appendiceal lumen into the abdominal cavity."
  * concept[+] 
    * code = #Arachnoiditis
    * display = "Arachnoiditis"
    * definition = "A disorder characterized by inflammation of the arachnoid membrane and adjacent subarachnoid space."
  * concept[+] 
    * code = #"Arterial injury"
    * display = "Arterial injury"
    * definition = "A finding of damage to an artery."
  * concept[+] 
    * code = #"Arteritis infective"
    * display = "Arteritis infective"
    * definition = "A disorder characterized by an infectious process involving an artery."
  * concept[+] 
    * code = #Arthralgia
    * display = "Arthralgia"
    * definition = "A disorder characterized by a sensation of marked discomfort in a joint."
  * concept[+] 
    * code = #Arthritis
    * display = "Arthritis"
    * definition = "A disorder characterized by inflammation involving a joint."
  * concept[+] 
    * code = #Ascites
    * display = "Ascites"
    * definition = "A disorder characterized by accumulation of serous or hemorrhagic fluid in the peritoneal cavity."
  * concept[+] 
    * code = #"Aspartate aminotransferase increased"
    * display = "Aspartate aminotransferase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of aspartate aminotransferase (AST or SGOT) in a blood specimen."
  * concept[+] 
    * code = #Aspiration
    * display = "Aspiration"
    * definition = "A disorder characterized by inhalation of solids or liquids into the lungs."
  * concept[+] 
    * code = #Asystole
    * display = "Asystole"
    * definition = "A disorder characterized by a dysrhythmia without cardiac electrical activity. Typically, this is accompanied by cessation of the pumping function of the heart."
  * concept[+] 
    * code = #Ataxia
    * display = "Ataxia"
    * definition = "A disorder characterized by lack of coordination of muscle movements resulting in the impairment or inability to perform voluntary activities."
  * concept[+] 
    * code = #Atelectasis
    * display = "Atelectasis"
    * definition = "A disorder characterized by the collapse of part or the entire lung."
  * concept[+] 
    * code = #"Atrial fibrillation"
    * display = "Atrial fibrillation"
    * definition = "A disorder characterized by a dysrhythmia without discernible P waves and an irregular ventricular response due to multiple reentry circuits. The rhythm disturbance originates above the ventricles."
  * concept[+] 
    * code = #"Atrial flutter"
    * display = "Atrial flutter"
    * definition = "A disorder characterized by a dysrhythmia with organized rhythmic atrial contractions with a rate of 200-300 beats per minute. The rhythm disturbance originates in the atria."
  * concept[+] 
    * code = #"Atrioventricular block complete"
    * display = "Atrioventricular block complete"
    * definition = "A disorder characterized by a dysrhythmia with complete failure of atrial electrical impulse conduction through the AV node to the ventricles."
  * concept[+] 
    * code = #"Atrioventricular block first degree"
    * display = "Atrioventricular block first degree"
    * definition = "A disorder characterized by a dysrhythmia with a delay in the time required for the conduction of an electrical impulse through the atrioventricular (AV) node beyond 0.2 seconds; prolongation of the PR interval greater than 200 milliseconds."
  * concept[+] 
    * code = #"Autoimmune disorder"
    * display = "Autoimmune disorder"
    * definition = "A disorder resulting from loss of function or tissue destruction of an organ or multiple organs, arising from humoral or cellular immune responses of the individual to his own tissue constituents."
  * concept[+] 
    * code = #"Avascular necrosis"
    * display = "Avascular necrosis"
    * definition = "A disorder characterized by necrotic changes in the bone tissue due to interruption of blood supply. Most often affecting the epiphysis of the long bones, the necrotic changes result in the collapse and the destruction of the bone structure."
  * concept[+] 
    * code = #Azoospermia
    * display = "Azoospermia"
    * definition = "A disorder characterized by laboratory test results that indicate complete absence of spermatozoa in the semen."
  * concept[+] 
    * code = #"Back pain"
    * display = "Back pain"
    * definition = "A disorder characterized by marked discomfort sensation in the back region."
  * concept[+] 
    * code = #"Bile duct stenosis"
    * display = "Bile duct stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the bile duct."
  * concept[+] 
    * code = #"Biliary anastomotic leak"
    * display = "Biliary anastomotic leak"
    * definition = "A finding of leakage of bile due to breakdown of a biliary anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Biliary fistula"
    * display = "Biliary fistula"
    * definition = "A disorder characterized by an abnormal communication between the bile ducts and another organ or anatomic site."
  * concept[+] 
    * code = #"Biliary tract infection"
    * display = "Biliary tract infection"
    * definition = "A disorder characterized by an infectious process involving the biliary tract."
  * concept[+] 
    * code = #"Bladder anastomotic leak"
    * display = "Bladder anastomotic leak"
    * definition = "A finding of leakage of urine due to breakdown of a bladder anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Bladder infection"
    * display = "Bladder infection"
    * definition = "A disorder characterized by an infectious process involving the bladder."
  * concept[+] 
    * code = #"Bladder perforation"
    * display = "Bladder perforation"
    * definition = "A disorder characterized by a rupture in the bladder wall."
  * concept[+] 
    * code = #"Bladder spasm"
    * display = "Bladder spasm"
    * definition = "A disorder characterized by a sudden and involuntary contraction of the bladder wall."
  * concept[+] 
    * code = #Bloating
    * display = "Bloating"
    * definition = "A disorder characterized by subject-reported feeling of uncomfortable fullness of the abdomen."
  * concept[+] 
    * code = #"Blood and lymphatic system disorders - Other, Specify"
    * display = "Blood and lymphatic system disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Blood antidiuretic hormone abnormal"
    * display = "Blood antidiuretic hormone abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of antidiuretic hormone in the blood specimen."
  * concept[+] 
    * code = #"Blood bilirubin increased"
    * display = "Blood bilirubin increased"
    * definition = "A finding based on laboratory test results that indicate an abnormally high level of bilirubin in the blood. Excess bilirubin is associated with jaundice."
  * concept[+] 
    * code = #"Blood corticotrophin decreased"
    * display = "Blood corticotrophin decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of corticotrophin in a blood specimen."
  * concept[+] 
    * code = #"Blood gonadotrophin abnormal"
    * display = "Blood gonadotrophin abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of gonadotrophin hormone in a blood specimen."
  * concept[+] 
    * code = #"Blood prolactin abnormal"
    * display = "Blood prolactin abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of prolactin hormone in a blood specimen."
  * concept[+] 
    * code = #"Blurred vision"
    * display = "Blurred vision"
    * definition = "A disorder characterized by visual perception of unclear or fuzzy images."
  * concept[+] 
    * code = #"Body odor"
    * display = "Body odor"
    * definition = "A disorder characterized by an abnormal body smell resulting from the growth of bacteria on the body."
  * concept[+] 
    * code = #"Bone infection"
    * display = "Bone infection"
    * definition = "A disorder characterized by an infectious process involving the bones."
  * concept[+] 
    * code = #"Bone marrow hypocellular"
    * display = "Bone marrow hypocellular"
    * definition = "A disorder characterized by the inability of the bone marrow to produce hematopoietic elements."
  * concept[+] 
    * code = #"Bone pain"
    * display = "Bone pain"
    * definition = "A disorder characterized by marked discomfort sensation in the bones."
  * concept[+] 
    * code = #"Brachial plexopathy"
    * display = "Brachial plexopathy"
    * definition = "A disorder characterized by regional paresthesia of the brachial plexus, marked discomfort and muscle weakness, and limited movement in the arm or hand."
  * concept[+] 
    * code = #"Breast atrophy"
    * display = "Breast atrophy"
    * definition = "A disorder characterized by underdevelopment of the breast."
  * concept[+] 
    * code = #"Breast infection"
    * display = "Breast infection"
    * definition = "A disorder characterized by an infectious process involving the breast."
  * concept[+] 
    * code = #"Breast pain"
    * display = "Breast pain"
    * definition = "A disorder characterized by marked discomfort sensation in the breast region."
  * concept[+] 
    * code = #"Bronchial fistula"
    * display = "Bronchial fistula"
    * definition = "A disorder characterized by an abnormal communication between the bronchus and another organ or anatomic site."
  * concept[+] 
    * code = #"Bronchial infection"
    * display = "Bronchial infection"
    * definition = "A disorder characterized by an infectious process involving the bronchi."
  * concept[+] 
    * code = #"Bronchial obstruction"
    * display = "Bronchial obstruction"
    * definition = "A disorder characterized by blockage of a bronchus passage, most often by bronchial secretions and exudates."
  * concept[+] 
    * code = #"Bronchial stricture"
    * display = "Bronchial stricture"
    * definition = "A disorder characterized by a narrowing of the bronchial tube."
  * concept[+] 
    * code = #"Bronchopleural fistula"
    * display = "Bronchopleural fistula"
    * definition = "A disorder characterized by an abnormal communication between a bronchus and the pleural cavity."
  * concept[+] 
    * code = #"Bronchopulmonary hemorrhage"
    * display = "Bronchopulmonary hemorrhage"
    * definition = "A disorder characterized by bleeding from the bronchial wall and/or lung parenchyma."
  * concept[+] 
    * code = #Bronchospasm
    * display = "Bronchospasm"
    * definition = "A disorder characterized by a sudden contraction of the smooth muscles of the bronchial wall."
  * concept[+] 
    * code = #Bruising
    * display = "Bruising"
    * definition = "A finding of injury of the soft tissues or bone characterized by leakage of blood into surrounding tissues."
  * concept[+] 
    * code = #"Bullous dermatitis"
    * display = "Bullous dermatitis"
    * definition = "A disorder characterized by inflammation of the skin characterized by the presence of bullae which are filled with fluid."
  * concept[+] 
    * code = #Burn
    * display = "Burn"
    * definition = "A finding of impaired integrity to the anatomic site of an adverse thermal reaction. Burns can be caused by exposure to chemicals, direct heat, electricity, flames and radiation. The extent of damage depends on the length and intensity of exposure and time until provision of treatment."
  * concept[+] 
    * code = #"Buttock pain"
    * display = "Buttock pain"
    * definition = "A disorder characterized by marked discomfort sensation in the buttocks."
  * concept[+] 
    * code = #"Capillary leak syndrome"
    * display = "Capillary leak syndrome"
    * definition = "A disorder characterized by leakage of intravascular fluids into the extravascular space. This syndrome is observed in patients who demonstrate a state of generalized leaky capillaries following shock syndromes, low-flow states, ischemia-reperfusion injuries, toxemias, medications, or poisoning. It can lead to generalized edema and multiple organ failure."
  * concept[+] 
    * code = #"Carbon monoxide diffusing capacity decreased"
    * display = "Carbon monoxide diffusing capacity decreased"
    * definition = "A finding based on lung function test results that indicate a decrease in the lung capacity to absorb carbon monoxide."
  * concept[+] 
    * code = #"Cardiac arrest"
    * display = "Cardiac arrest"
    * definition = "A disorder characterized by cessation of the pumping function of the heart."
  * concept[+] 
    * code = #"Cardiac disorders - Other, Specify"
    * display = "Cardiac disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Cardiac troponin I increased"
    * display = "Cardiac troponin I increased"
    * definition = "A laboratory test result which indicates increased levels of cardiac troponin I in a biological specimen."
  * concept[+] 
    * code = #"Cardiac troponin T increased"
    * display = "Cardiac troponin T increased"
    * definition = "A laboratory test result which indicates increased levels of cardiac troponin T in a biological specimen."
  * concept[+] 
    * code = #Cataract
    * display = "Cataract"
    * definition = "A disorder characterized by partial or complete opacity of the crystalline lens of one or both eyes. This results in a decrease in visual acuity and eventual blindness if untreated."
  * concept[+] 
    * code = #"Catheter related infection"
    * display = "Catheter related infection"
    * definition = "A disorder characterized by an infectious process that arises secondary to catheter use."
  * concept[+] 
    * code = #"CD4 lymphocytes decreased"
    * display = "CD4 lymphocytes decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of CD4 lymphocytes in a blood specimen."
  * concept[+] 
    * code = #"Cecal hemorrhage"
    * display = "Cecal hemorrhage"
    * definition = "A disorder characterized by bleeding from the cecum."
  * concept[+] 
    * code = #"Cecal infection"
    * display = "Cecal infection"
    * definition = "A disorder characterized by an infectious process involving the cecum."
  * concept[+] 
    * code = #"Central nervous system necrosis"
    * display = "Central nervous system necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the brain and/or spinal cord."
  * concept[+] 
    * code = #"Cerebrospinal fluid leakage"
    * display = "Cerebrospinal fluid leakage"
    * definition = "A disorder characterized by loss of cerebrospinal fluid into the surrounding tissues."
  * concept[+] 
    * code = #"Cervicitis infection"
    * display = "Cervicitis infection"
    * definition = "A disorder characterized by an infectious process involving the uterine cervix."
  * concept[+] 
    * code = #Cheilitis
    * display = "Cheilitis"
    * definition = "A disorder characterized by inflammation of the lip."
  * concept[+] 
    * code = #"Chest pain - cardiac"
    * display = "Chest pain - cardiac"
    * definition = "A disorder characterized by substernal discomfort due to insufficient myocardial oxygenation."
  * concept[+] 
    * code = #"Chest wall pain"
    * display = "Chest wall pain"
    * definition = "A disorder characterized by marked discomfort sensation in the chest wall region."
  * concept[+] 
    * code = #Chills
    * display = "Chills"
    * definition = "A disorder characterized by a sensation of cold that often marks a physiologic response to sweating after a fever."
  * concept[+] 
    * code = #Cholecystitis
    * display = "Cholecystitis"
    * definition = "A disorder characterized by inflammation involving the gallbladder. It may be associated with the presence of gallstones."
  * concept[+] 
    * code = #"Cholesterol high"
    * display = "Cholesterol high"
    * definition = "A finding based on laboratory test results that indicate higher than normal levels of cholesterol in a blood specimen."
  * concept[+] 
    * code = #"Chronic kidney disease"
    * display = "Chronic kidney disease"
    * definition = "A disorder characterized by gradual and usually permanent loss of kidney function resulting in renal failure."
  * concept[+] 
    * code = #Chylothorax
    * display = "Chylothorax"
    * definition = "A disorder characterized by milky pleural effusion (abnormal collection of fluid) resulting from accumulation of lymph fluid in the pleural cavity."
  * concept[+] 
    * code = #"Cognitive disturbance"
    * display = "Cognitive disturbance"
    * definition = "A disorder characterized by a conspicuous change in cognitive function."
  * concept[+] 
    * code = #Colitis
    * display = "Colitis"
    * definition = "A disorder characterized by inflammation of the colon."
  * concept[+] 
    * code = #"Colonic fistula"
    * display = "Colonic fistula"
    * definition = "A disorder characterized by an abnormal communication between the large intestine and another organ or anatomic site."
  * concept[+] 
    * code = #"Colonic hemorrhage"
    * display = "Colonic hemorrhage"
    * definition = "A disorder characterized by bleeding from the colon."
  * concept[+] 
    * code = #"Colonic obstruction"
    * display = "Colonic obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the colon."
  * concept[+] 
    * code = #"Colonic perforation"
    * display = "Colonic perforation"
    * definition = "A disorder characterized by a rupture in the colonic wall."
  * concept[+] 
    * code = #"Colonic stenosis"
    * display = "Colonic stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the colon."
  * concept[+] 
    * code = #"Colonic ulcer"
    * display = "Colonic ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the colon."
  * concept[+] 
    * code = #"Concentration impairment"
    * display = "Concentration impairment"
    * definition = "A disorder characterized by a deterioration in the ability to concentrate."
  * concept[+] 
    * code = #"Conduction disorder"
    * display = "Conduction disorder"
    * definition = "A disorder characterized by pathological irregularities in the cardiac conduction system."
  * concept[+] 
    * code = #Confusion
    * display = "Confusion"
    * definition = "A disorder characterized by a lack of clear and orderly thought and behavior."
  * concept[+] 
    * code = #"Congenital, familial and genetic disorders - Other, Specify"
    * display = "Congenital, familial and genetic disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Conjunctivitis
    * display = "Conjunctivitis"
    * definition = "A disorder characterized by inflammation, swelling and redness to the conjunctiva of the eye."
  * concept[+] 
    * code = #"Conjunctivitis infective"
    * display = "Conjunctivitis infective"
    * definition = "A disorder characterized by an infectious process involving the conjunctiva. Clinical manifestations include pink or red color in the eyes."
  * concept[+] 
    * code = #Constipation
    * display = "Constipation"
    * definition = "A disorder characterized by irregular and infrequent or difficult evacuation of the bowels."
  * concept[+] 
    * code = #"Constrictive pericarditis"
    * display = "Constrictive pericarditis"
    * definition = "A disorder characterized by a thickened and fibrotic pericardial sac; these fibrotic changes impede normal myocardial function by restricting myocardial muscle action."
  * concept[+] 
    * code = #"Corneal infection"
    * display = "Corneal infection"
    * definition = "A disorder characterized by an infectious process involving the cornea."
  * concept[+] 
    * code = #"Corneal ulcer"
    * display = "Corneal ulcer"
    * definition = "A disorder characterized by an area of epithelial tissue loss on the surface of the cornea. It is associated with inflammatory cells in the cornea and anterior chamber."
  * concept[+] 
    * code = #Cough
    * display = "Cough"
    * definition = "A disorder characterized by sudden, often repetitive, spasmodic contraction of the thoracic cavity, resulting in violent release of air from the lungs and usually accompanied by a distinctive sound."
  * concept[+] 
    * code = #"CPK increased"
    * display = "CPK increased"
    * definition = "A finding based on laboratory test results that indicate an increase in levels of creatine phosphokinase in a blood specimen."
  * concept[+] 
    * code = #"Cranial nerve infection"
    * display = "Cranial nerve infection"
    * definition = "A disorder characterized by an infectious process involving a cranial nerve."
  * concept[+] 
    * code = #"Creatinine increased"
    * display = "Creatinine increased"
    * definition = "A finding based on laboratory test results that indicate increased levels of creatinine in a biological specimen."
  * concept[+] 
    * code = #Cushingoid
    * display = "Cushingoid"
    * definition = "A disorder characterized by signs and symptoms that resemble Cushing's disease or syndrome: buffalo hump obesity, striations, adiposity, hypertension, diabetes, and osteoporosis, usually due to exogenous corticosteroids."
  * concept[+] 
    * code = #"Cystitis noninfective"
    * display = "Cystitis noninfective"
    * definition = "A disorder characterized by inflammation of the bladder which is not caused by an infection of the urinary tract."
  * concept[+] 
    * code = #"Cytokine release syndrome"
    * display = "Cytokine release syndrome"
    * definition = "A disorder characterized by nausea, headache, tachycardia, hypotension, rash, and shortness of breath; it is caused by the release of cytokines from the cells."
  * concept[+] 
    * code = #"Death neonatal"
    * display = "Death neonatal"
    * definition = "A disorder characterized by cessation of life occurring during the first 28 days of life."
  * concept[+] 
    * code = #"Death NOS"
    * display = "Death NOS"
    * definition = "A cessation of life that cannot be attributed to a CTCAE term associated with Grade 5."
  * concept[+] 
    * code = #Dehydration
    * display = "Dehydration"
    * definition = "A disorder characterized by excessive loss of water from the body. It is usually caused by severe diarrhea, vomiting or diaphoresis."
  * concept[+] 
    * code = #"Delayed orgasm"
    * display = "Delayed orgasm"
    * definition = "A disorder characterized by sexual dysfunction characterized by a delay in climax."
  * concept[+] 
    * code = #"Delayed puberty"
    * display = "Delayed puberty"
    * definition = "A disorder characterized by unusually late sexual maturity."
  * concept[+] 
    * code = #Delirium
    * display = "Delirium"
    * definition = "A disorder characterized by the acute and sudden development of confusion, illusions, movement changes, inattentiveness, agitation, and hallucinations. Usually, it is a reversible condition."
  * concept[+] 
    * code = #Delusions
    * display = "Delusions"
    * definition = "A disorder characterized by false personal beliefs held contrary to reality, despite contradictory evidence and common sense."
  * concept[+] 
    * code = #"Dental caries"
    * display = "Dental caries"
    * definition = "A disorder characterized by the decay of a tooth, in which it becomes softened, discolored and/or porous."
  * concept[+] 
    * code = #"Depressed level of consciousness"
    * display = "Depressed level of consciousness"
    * definition = "A disorder characterized by a decrease in ability to perceive and respond."
  * concept[+] 
    * code = #Depression
    * display = "Depression"
    * definition = "A disorder characterized by melancholic feelings of grief or unhappiness."
  * concept[+] 
    * code = #"Dermatitis radiation"
    * display = "Dermatitis radiation"
    * definition = "A finding of cutaneous inflammatory reaction occurring as a result of exposure to biologically effective levels of ionizing radiation."
  * concept[+] 
    * code = #"Device related infection"
    * display = "Device related infection"
    * definition = "A disorder characterized by an infectious process involving the use of a medical device."
  * concept[+] 
    * code = #Diarrhea
    * display = "Diarrhea"
    * definition = "A disorder characterized by frequent and watery bowel movements."
  * concept[+] 
    * code = #"Disseminated intravascular coagulation"
    * display = "Disseminated intravascular coagulation"
    * definition = "A disorder characterized by systemic pathological activation of blood clotting mechanisms which results in clot formation throughout the body. There is an increase in the risk of hemorrhage as the body is depleted of platelets and coagulation factors."
  * concept[+] 
    * code = #Dizziness
    * display = "Dizziness"
    * definition = "A disorder characterized by a disturbing sensation of lightheadedness, unsteadiness, giddiness, spinning or rocking."
  * concept[+] 
    * code = #"Dry eye"
    * display = "Dry eye"
    * definition = "A disorder characterized by dryness of the cornea and conjunctiva."
  * concept[+] 
    * code = #"Dry mouth"
    * display = "Dry mouth"
    * definition = "A disorder characterized by reduced salivary flow in the oral cavity."
  * concept[+] 
    * code = #"Dry skin"
    * display = "Dry skin"
    * definition = "A disorder characterized by flaky and dull skin; the pores are generally fine, the texture is a papery thin texture."
  * concept[+] 
    * code = #"Duodenal fistula"
    * display = "Duodenal fistula"
    * definition = "A disorder characterized by an abnormal communication between the duodenum and another organ or anatomic site."
  * concept[+] 
    * code = #"Duodenal hemorrhage"
    * display = "Duodenal hemorrhage"
    * definition = "A disorder characterized by bleeding from the duodenum."
  * concept[+] 
    * code = #"Duodenal infection"
    * display = "Duodenal infection"
    * definition = "A disorder characterized by an infectious process involving the duodenum."
  * concept[+] 
    * code = #"Duodenal obstruction"
    * display = "Duodenal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of stomach contents through the duodenum."
  * concept[+] 
    * code = #"Duodenal perforation"
    * display = "Duodenal perforation"
    * definition = "A disorder characterized by a rupture in the duodenal wall."
  * concept[+] 
    * code = #"Duodenal stenosis"
    * display = "Duodenal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the duodenum."
  * concept[+] 
    * code = #"Duodenal ulcer"
    * display = "Duodenal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the duodenal wall."
  * concept[+] 
    * code = #Dysarthria
    * display = "Dysarthria"
    * definition = "A disorder characterized by slow and slurred speech resulting from an inability to coordinate the muscles used in speech."
  * concept[+] 
    * code = #Dysesthesia
    * display = "Dysesthesia"
    * definition = "A disorder characterized by distortion of sensory perception, resulting in an abnormal and unpleasant sensation."
  * concept[+] 
    * code = #Dysgeusia
    * display = "Dysgeusia"
    * definition = "A disorder characterized by abnormal sensual experience with the taste of foodstuffs; it can be related to a decrease in the sense of smell."
  * concept[+] 
    * code = #Dysmenorrhea
    * display = "Dysmenorrhea"
    * definition = "A disorder characterized by abnormally painful abdominal cramps during menses."
  * concept[+] 
    * code = #Dyspareunia
    * display = "Dyspareunia"
    * definition = "A disorder characterized by painful or difficult coitus."
  * concept[+] 
    * code = #Dyspepsia
    * display = "Dyspepsia"
    * definition = "A disorder characterized by an uncomfortable, often painful feeling in the stomach, resulting from impaired digestion. Symptoms include burning stomach, bloating, heartburn, nausea and vomiting."
  * concept[+] 
    * code = #Dysphagia
    * display = "Dysphagia"
    * definition = "A disorder characterized by difficulty in swallowing."
  * concept[+] 
    * code = #Dysphasia
    * display = "Dysphasia"
    * definition = "A disorder characterized by impairment of verbal communication skills, often resulting from brain damage."
  * concept[+] 
    * code = #Dyspnea
    * display = "Dyspnea"
    * definition = "A disorder characterized by an uncomfortable sensation of difficulty breathing."
  * concept[+] 
    * code = #"Ear and labyrinth disorders - Other, Specify"
    * display = "Ear and labyrinth disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Ear pain"
    * display = "Ear pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the ear."
  * concept[+] 
    * code = #"Edema cerebral"
    * display = "Edema cerebral"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid in the brain."
  * concept[+] 
    * code = #"Edema face"
    * display = "Edema face"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation in facial tissues."
  * concept[+] 
    * code = #"Edema limbs"
    * display = "Edema limbs"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation in the upper or lower extremities."
  * concept[+] 
    * code = #"Edema trunk"
    * display = "Edema trunk"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation in the trunk area."
  * concept[+] 
    * code = #"Ejaculation disorder"
    * display = "Ejaculation disorder"
    * definition = "A disorder characterized by problems related to ejaculation. This category includes premature, delayed, retrograde and painful ejaculation."
  * concept[+] 
    * code = #"Ejection fraction decreased"
    * display = "Ejection fraction decreased"
    * definition = "The percentage computed when the amount of blood ejected during a ventricular contraction of the heart is compared to the amount that was present prior to the contraction."
  * concept[+] 
    * code = #"Electrocardiogram QT corrected interval prolonged"
    * display = "Electrocardiogram QT corrected interval prolonged"
    * definition = "A finding of a cardiac dysrhythmia characterized by an abnormally long corrected QT interval."
  * concept[+] 
    * code = #"Encephalitis infection"
    * display = "Encephalitis infection"
    * definition = "A disorder characterized by an infectious process involving the brain tissue."
  * concept[+] 
    * code = #"Encephalomyelitis infection"
    * display = "Encephalomyelitis infection"
    * definition = "A disorder characterized by an infectious process involving the brain and spinal cord tissues."
  * concept[+] 
    * code = #Encephalopathy
    * display = "Encephalopathy"
    * definition = "A disorder characterized by a pathologic process involving the brain."
  * concept[+] 
    * code = #"Endocarditis infective"
    * display = "Endocarditis infective"
    * definition = "A disorder characterized by an infectious process involving the endocardial layer of the heart."
  * concept[+] 
    * code = #"Endocrine disorders - Other, Specify"
    * display = "Endocrine disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Endophthalmitis
    * display = "Endophthalmitis"
    * definition = "A disorder characterized by an infectious process involving the internal structures of the eye."
  * concept[+] 
    * code = #Enterocolitis
    * display = "Enterocolitis"
    * definition = "A disorder characterized by inflammation of the small and large intestines."
  * concept[+] 
    * code = #"Enterocolitis infectious"
    * display = "Enterocolitis infectious"
    * definition = "A disorder characterized by an infectious process involving the small and large intestines."
  * concept[+] 
    * code = #"Enterovesical fistula"
    * display = "Enterovesical fistula"
    * definition = "A disorder characterized by an abnormal communication between the urinary bladder and the intestine."
  * concept[+] 
    * code = #Epistaxis
    * display = "Epistaxis"
    * definition = "A disorder characterized by bleeding from the nose."
  * concept[+] 
    * code = #"Erectile dysfunction"
    * display = "Erectile dysfunction"
    * definition = "A disorder characterized by the persistent or recurrent inability to achieve or to maintain an erection during sexual activity."
  * concept[+] 
    * code = #"Erythema multiforme"
    * display = "Erythema multiforme"
    * definition = "A disorder characterized by target lesions (a pink-red ring around a pale center)."
  * concept[+] 
    * code = #Erythroderma
    * display = "Erythroderma"
    * definition = "A disorder characterized by generalized inflammatory erythema and exfoliation. The inflammatory process involves > 90% of the body surface area."
  * concept[+] 
    * code = #"Esophageal anastomotic leak"
    * display = "Esophageal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of an esophageal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Esophageal fistula"
    * display = "Esophageal fistula"
    * definition = "A disorder characterized by an abnormal communication between the esophagus and another organ or anatomic site."
  * concept[+] 
    * code = #"Esophageal hemorrhage"
    * display = "Esophageal hemorrhage"
    * definition = "A disorder characterized by bleeding from the esophagus."
  * concept[+] 
    * code = #"Esophageal infection"
    * display = "Esophageal infection"
    * definition = "A disorder characterized by an infectious process involving the esophagus."
  * concept[+] 
    * code = #"Esophageal necrosis"
    * display = "Esophageal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the esophageal wall."
  * concept[+] 
    * code = #"Esophageal obstruction"
    * display = "Esophageal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents in the esophagus."
  * concept[+] 
    * code = #"Esophageal pain"
    * display = "Esophageal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the esophageal region."
  * concept[+] 
    * code = #"Esophageal perforation"
    * display = "Esophageal perforation"
    * definition = "A disorder characterized by a rupture in the wall of the esophagus."
  * concept[+] 
    * code = #"Esophageal stenosis"
    * display = "Esophageal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the esophagus."
  * concept[+] 
    * code = #"Esophageal ulcer"
    * display = "Esophageal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the esophageal wall."
  * concept[+] 
    * code = #"Esophageal varices hemorrhage"
    * display = "Esophageal varices hemorrhage"
    * definition = "A disorder characterized by bleeding from esophageal varices."
  * concept[+] 
    * code = #Esophagitis
    * display = "Esophagitis"
    * definition = "A disorder characterized by inflammation of the esophageal wall."
  * concept[+] 
    * code = #Euphoria
    * display = "Euphoria"
    * definition = "A disorder characterized by an exaggerated feeling of well-being which is disproportionate to events and stimuli."
  * concept[+] 
    * code = #Exostosis
    * display = "Exostosis"
    * definition = "A disorder characterized by non-neoplastic overgrowth of bone."
  * concept[+] 
    * code = #"External ear inflammation"
    * display = "External ear inflammation"
    * definition = "A disorder characterized by inflammation, swelling and redness to the outer ear and ear canal."
  * concept[+] 
    * code = #"External ear pain"
    * display = "External ear pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the external ear region."
  * concept[+] 
    * code = #"Extraocular muscle paresis"
    * display = "Extraocular muscle paresis"
    * definition = "A disorder characterized by incomplete paralysis of an extraocular muscle."
  * concept[+] 
    * code = #"Extrapyramidal disorder"
    * display = "Extrapyramidal disorder"
    * definition = "A disorder characterized by abnormal, repetitive, involuntary muscle movements, frenzied speech and extreme restlessness."
  * concept[+] 
    * code = #"Eye disorders - Other, Specify"
    * display = "Eye disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Eye infection"
    * display = "Eye infection"
    * definition = "A disorder characterized by an infectious process involving the eye."
  * concept[+] 
    * code = #"Eye pain"
    * display = "Eye pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the eye."
  * concept[+] 
    * code = #"Eyelid function disorder"
    * display = "Eyelid function disorder"
    * definition = "A disorder characterized by impaired eyelid function."
  * concept[+] 
    * code = #"Facial muscle weakness"
    * display = "Facial muscle weakness"
    * definition = "A disorder characterized by a reduction in the strength of the facial muscles."
  * concept[+] 
    * code = #"Facial nerve disorder"
    * display = "Facial nerve disorder"
    * definition = "A disorder characterized by involvement of the facial nerve (seventh cranial nerve)."
  * concept[+] 
    * code = #"Facial pain"
    * display = "Facial pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the face."
  * concept[+] 
    * code = #Fall
    * display = "Fall"
    * definition = "A finding of sudden movement downward, usually resulting in injury."
  * concept[+] 
    * code = #"Fallopian tube anastomotic leak"
    * display = "Fallopian tube anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a fallopian tube anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Fallopian tube obstruction"
    * display = "Fallopian tube obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents in the fallopian tube."
  * concept[+] 
    * code = #"Fallopian tube perforation"
    * display = "Fallopian tube perforation"
    * definition = "A finding of rupture of the fallopian tube wall."
  * concept[+] 
    * code = #"Fallopian tube stenosis"
    * display = "Fallopian tube stenosis"
    * definition = "A disorder characterized by a narrowing of the fallopian tube lumen."
  * concept[+] 
    * code = #"Fat atrophy"
    * display = "Fat atrophy"
    * definition = "A disorder characterized by shrinking of adipose tissue."
  * concept[+] 
    * code = #Fatigue
    * display = "Fatigue"
    * definition = "A disorder characterized by a state of generalized weakness with a pronounced inability to summon sufficient energy to accomplish daily activities."
  * concept[+] 
    * code = #"Febrile neutropenia"
    * display = "Febrile neutropenia"
    * definition = "A disorder characterized by a decrease in neutrophils associated with fever."
  * concept[+] 
    * code = #"Fecal incontinence"
    * display = "Fecal incontinence"
    * definition = "A disorder characterized by inability to control the escape of stool from the rectum."
  * concept[+] 
    * code = #"Female genital tract fistula"
    * display = "Female genital tract fistula"
    * definition = "A disorder characterized by an abnormal communication between a female reproductive system organ and another organ or anatomic site."
  * concept[+] 
    * code = #"Feminization acquired"
    * display = "Feminization acquired"
    * definition = "A disorder characterized by the development of secondary female sex characteristics in males due to extrinsic factors."
  * concept[+] 
    * code = #"Fetal death"
    * display = "Fetal death"
    * definition = "A disorder characterized by death in utero; failure of the product of conception to show evidence of respiration, heartbeat, or definite movement of a voluntary muscle after expulsion from the uterus, without possibility of resuscitation."
  * concept[+] 
    * code = #"Fetal growth retardation"
    * display = "Fetal growth retardation"
    * definition = "A disorder characterized by inhibition of fetal growth resulting in the inability of the fetus to achieve its potential weight."
  * concept[+] 
    * code = #Fever
    * display = "Fever"
    * definition = "A disorder characterized by elevation of the body's temperature above the upper limit of normal."
  * concept[+] 
    * code = #"Fibrinogen decreased"
    * display = "Fibrinogen decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of fibrinogen in a blood specimen."
  * concept[+] 
    * code = #"Fibrosis deep connective tissue"
    * display = "Fibrosis deep connective tissue"
    * definition = "A disorder characterized by fibrotic degeneration of the deep connective tissues."
  * concept[+] 
    * code = #"Flank pain"
    * display = "Flank pain"
    * definition = "A disorder characterized by marked discomfort sensation on the lateral side of the body in the region below the ribs and above the hip."
  * concept[+] 
    * code = #"Flashing lights"
    * display = "Flashing lights"
    * definition = "A disorder characterized by a sudden or brief burst of light."
  * concept[+] 
    * code = #Flatulence
    * display = "Flatulence"
    * definition = "A disorder characterized by a state of excessive gas in the alimentary canal."
  * concept[+] 
    * code = #Floaters
    * display = "Floaters"
    * definition = "A disorder characterized by an individual seeing spots before their eyes. The spots are shadows of opaque cell fragments in the vitreous humor or lens."
  * concept[+] 
    * code = #"Flu like symptoms"
    * display = "Flu like symptoms"
    * definition = "A disorder characterized by a group of symptoms similar to those observed in patients with the flu. It includes fever, chills, body aches, malaise, loss of appetite and dry cough."
  * concept[+] 
    * code = #Flushing
    * display = "Flushing"
    * definition = "A disorder characterized by episodic reddening of the face."
  * concept[+] 
    * code = #"Forced expiratory volume decreased"
    * display = "Forced expiratory volume decreased"
    * definition = "A finding based on test results that indicate a relative decrease in the fraction of the forced vital capacity that is exhaled in a specific number of seconds."
  * concept[+] 
    * code = #Fracture
    * display = "Fracture"
    * definition = "A finding of traumatic injury to the bone in which the continuity of the bone is broken."
  * concept[+] 
    * code = #"Gait disturbance"
    * display = "Gait disturbance"
    * definition = "A disorder characterized by walking difficulties."
  * concept[+] 
    * code = #"Gallbladder fistula"
    * display = "Gallbladder fistula"
    * definition = "A disorder characterized by an abnormal communication between the gallbladder and another organ or anatomic site."
  * concept[+] 
    * code = #"Gallbladder infection"
    * display = "Gallbladder infection"
    * definition = "A disorder characterized by an infectious process involving the gallbladder."
  * concept[+] 
    * code = #"Gallbladder necrosis"
    * display = "Gallbladder necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the gallbladder."
  * concept[+] 
    * code = #"Gallbladder obstruction"
    * display = "Gallbladder obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents of the gallbladder."
  * concept[+] 
    * code = #"Gallbladder pain"
    * display = "Gallbladder pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the gallbladder region."
  * concept[+] 
    * code = #"Gallbladder perforation"
    * display = "Gallbladder perforation"
    * definition = "A disorder characterized by a rupture in the gallbladder wall."
  * concept[+] 
    * code = #"Gastric anastomotic leak"
    * display = "Gastric anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a gastric anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Gastric fistula"
    * display = "Gastric fistula"
    * definition = "A disorder characterized by an abnormal communication between the stomach and another organ or anatomic site."
  * concept[+] 
    * code = #"Gastric hemorrhage"
    * display = "Gastric hemorrhage"
    * definition = "A disorder characterized by bleeding from the gastric wall."
  * concept[+] 
    * code = #"Gastric necrosis"
    * display = "Gastric necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the gastric wall."
  * concept[+] 
    * code = #"Gastric perforation"
    * display = "Gastric perforation"
    * definition = "A disorder characterized by a rupture in the stomach wall."
  * concept[+] 
    * code = #"Gastric stenosis"
    * display = "Gastric stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the stomach."
  * concept[+] 
    * code = #"Gastric ulcer"
    * display = "Gastric ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the stomach."
  * concept[+] 
    * code = #Gastritis
    * display = "Gastritis"
    * definition = "A disorder characterized by inflammation of the stomach."
  * concept[+] 
    * code = #"Gastroesophageal reflux disease"
    * display = "Gastroesophageal reflux disease"
    * definition = "A disorder characterized by reflux of the gastric and/or duodenal contents into the distal esophagus. It is chronic in nature and usually caused by incompetence of the lower esophageal sphincter, and may result in injury to the esophageal mucosal. Symptoms include heartburn and acid indigestion."
  * concept[+] 
    * code = #"Gastrointestinal anastomotic leak"
    * display = "Gastrointestinal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a gastrointestinal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Gastrointestinal disorders - Other, Specify"
    * display = "Gastrointestinal disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Gastrointestinal fistula"
    * display = "Gastrointestinal fistula"
    * definition = "A disorder characterized by an abnormal communication between any part of the gastrointestinal system and another organ or anatomic site."
  * concept[+] 
    * code = #"Gastrointestinal pain"
    * display = "Gastrointestinal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the gastrointestinal region."
  * concept[+] 
    * code = #"Gastrointestinal stoma necrosis"
    * display = "Gastrointestinal stoma necrosis"
    * definition = "A finding of a necrotic process occurring in the gastrointestinal tract stoma."
  * concept[+] 
    * code = #Gastroparesis
    * display = "Gastroparesis"
    * definition = "A disorder characterized by an incomplete paralysis of the muscles of the stomach wall resulting in delayed emptying of the gastric contents into the small intestine."
  * concept[+] 
    * code = #"General disorders and administration site conditions - Other, Specify"
    * display = "General disorders and administration site conditions - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Generalized muscle weakness"
    * display = "Generalized muscle weakness"
    * definition = "A disorder characterized by a reduction in the strength of muscles in multiple anatomic sites."
  * concept[+] 
    * code = #"Genital edema"
    * display = "Genital edema"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid in the genitals."
  * concept[+] 
    * code = #"GGT increased"
    * display = "GGT increased"
    * definition = "A finding based on laboratory test results that indicate higher than normal levels of the enzyme gamma-glutamyltransferase in the blood specimen. GGT (gamma-glutamyltransferase ) catalyzes the transfer of a gamma glutamyl group from a gamma glutamyl peptide to another peptide, amino acids or water."
  * concept[+] 
    * code = #"Gingival pain"
    * display = "Gingival pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the gingival region."
  * concept[+] 
    * code = #Glaucoma
    * display = "Glaucoma"
    * definition = "A disorder characterized by an increase in pressure in the eyeball due to obstruction of the aqueous humor outflow."
  * concept[+] 
    * code = #"Glossopharyngeal nerve disorder"
    * display = "Glossopharyngeal nerve disorder"
    * definition = "A disorder characterized by involvement of the glossopharyngeal nerve (ninth cranial nerve)."
  * concept[+] 
    * code = #"Glucose intolerance"
    * display = "Glucose intolerance"
    * definition = "A disorder characterized by an inability to properly metabolize glucose."
  * concept[+] 
    * code = #"Growth accelerated"
    * display = "Growth accelerated"
    * definition = "A disorder characterized by greater growth than expected for age."
  * concept[+] 
    * code = #"Growth hormone abnormal"
    * display = "Growth hormone abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of growth hormone in a biological specimen."
  * concept[+] 
    * code = #"Growth suppression"
    * display = "Growth suppression"
    * definition = "A disorder characterized by of stature that is smaller than normal as expected for age."
  * concept[+] 
    * code = #"Gum infection"
    * display = "Gum infection"
    * definition = "A disorder characterized by an infectious process involving the gums."
  * concept[+] 
    * code = #Gynecomastia
    * display = "Gynecomastia"
    * definition = "A disorder characterized by excessive development of the breasts in males."
  * concept[+] 
    * code = #Hallucinations
    * display = "Hallucinations"
    * definition = "A disorder characterized by a false sensory perception in the absence of an external stimulus."
  * concept[+] 
    * code = #"Haptoglobin decreased"
    * display = "Haptoglobin decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of haptoglobin in a blood specimen."
  * concept[+] 
    * code = #"Head soft tissue necrosis"
    * display = "Head soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the head."
  * concept[+] 
    * code = #Headache
    * display = "Headache"
    * definition = "A disorder characterized by a sensation of marked discomfort in various parts of the head, not confined to the area of distribution of any nerve."
  * concept[+] 
    * code = #"Hearing impaired"
    * display = "Hearing impaired"
    * definition = "A disorder characterized by partial or complete loss of the ability to detect or understand sounds resulting from damage to ear structures."
  * concept[+] 
    * code = #"Heart failure"
    * display = "Heart failure"
    * definition = "A disorder characterized by the inability of the heart to pump blood at an adequate volume to meet tissue metabolic requirements, or, the ability to do so only at an elevation in the filling pressure."
  * concept[+] 
    * code = #Hematoma
    * display = "Hematoma"
    * definition = "A disorder characterized by a localized collection of blood, usually clotted, in an organ, space, or tissue, due to a break in the wall of a blood vessel."
  * concept[+] 
    * code = #Hematosalpinx
    * display = "Hematosalpinx"
    * definition = "A disorder characterized by the presence of blood in a fallopian tube."
  * concept[+] 
    * code = #Hematuria
    * display = "Hematuria"
    * definition = "A disorder characterized by laboratory test results that indicate blood in the urine."
  * concept[+] 
    * code = #"Hemoglobin increased"
    * display = "Hemoglobin increased"
    * definition = "A finding based on laboratory test results that indicate increased levels of hemoglobin in a biological specimen."
  * concept[+] 
    * code = #Hemoglobinuria
    * display = "Hemoglobinuria"
    * definition = "A disorder characterized by laboratory test results that indicate the presence of free hemoglobin in the urine."
  * concept[+] 
    * code = #Hemolysis
    * display = "Hemolysis"
    * definition = "A disorder characterized by laboratory test results that indicate widespread erythrocyte cell membrane destruction."
  * concept[+] 
    * code = #"Hemolytic uremic syndrome"
    * display = "Hemolytic uremic syndrome"
    * definition = "A disorder characterized by a form of thrombotic microangiopathy with renal failure, hemolytic anemia, and severe thrombocytopenia."
  * concept[+] 
    * code = #"Hemorrhoidal hemorrhage"
    * display = "Hemorrhoidal hemorrhage"
    * definition = "A disorder characterized by bleeding from the hemorrhoids."
  * concept[+] 
    * code = #Hemorrhoids
    * display = "Hemorrhoids"
    * definition = "A disorder characterized by the presence of dilated veins in the rectum and surrounding area."
  * concept[+] 
    * code = #"Hepatic failure"
    * display = "Hepatic failure"
    * definition = "A disorder characterized by the inability of the liver to metabolize chemicals in the body. Laboratory test results reveal abnormal plasma levels of ammonia, bilirubin, lactic dehydrogenase, and alkaline phosphatase."
  * concept[+] 
    * code = #"Hepatic hemorrhage"
    * display = "Hepatic hemorrhage"
    * definition = "A disorder characterized by bleeding from the liver."
  * concept[+] 
    * code = #"Hepatic infection"
    * display = "Hepatic infection"
    * definition = "A disorder characterized by an infectious process involving the liver."
  * concept[+] 
    * code = #"Hepatic necrosis"
    * display = "Hepatic necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the hepatic parenchyma."
  * concept[+] 
    * code = #"Hepatic pain"
    * display = "Hepatic pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the liver region."
  * concept[+] 
    * code = #"Hepatitis viral"
    * display = "Hepatitis viral"
    * definition = "A disorder characterized by a viral pathologic process involving the liver parenchyma."
  * concept[+] 
    * code = #"Hepatobiliary disorders - Other, Specify"
    * display = "Hepatobiliary disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Hiccups
    * display = "Hiccups"
    * definition = "A disorder characterized by repeated gulp sounds that result from an involuntary opening and closing of the glottis. This is attributed to a spasm of the diaphragm."
  * concept[+] 
    * code = #"Hip fracture"
    * display = "Hip fracture"
    * definition = "A finding of traumatic injury to the hip in which the continuity of either the femoral head, femoral neck, intertrochanteric or subtrochanteric regions is broken."
  * concept[+] 
    * code = #Hirsutism
    * display = "Hirsutism"
    * definition = "A disorder characterized by the presence of excess hair growth in women in anatomic sites where growth is considered to be a secondary male characteristic and under androgen control (beard, moustache, chest, abdomen)"
  * concept[+] 
    * code = #Hoarseness
    * display = "Hoarseness"
    * definition = "A disorder characterized by harsh and raspy voice arising from or spreading to the larynx."
  * concept[+] 
    * code = #"Hot flashes"
    * display = "Hot flashes"
    * definition = "A disorder characterized by an uncomfortable and temporary sensation of intense body warmth, flushing, sometimes accompanied by sweating upon cooling."
  * concept[+] 
    * code = #Hydrocephalus
    * display = "Hydrocephalus"
    * definition = "A disorder characterized by an abnormal increase of cerebrospinal fluid in the ventricles of the brain."
  * concept[+] 
    * code = #Hypercalcemia
    * display = "Hypercalcemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of calcium in blood."
  * concept[+] 
    * code = #Hyperglycemia
    * display = "Hyperglycemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of blood sugar. It is usually an indication of diabetes mellitus or glucose intolerance."
  * concept[+] 
    * code = #Hyperhidrosis
    * display = "Hyperhidrosis"
    * definition = "A disorder characterized by excessive perspiration."
  * concept[+] 
    * code = #Hyperkalemia
    * display = "Hyperkalemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of potassium in the blood; associated with kidney failure or sometimes with the use of diuretic drugs."
  * concept[+] 
    * code = #Hypermagnesemia
    * display = "Hypermagnesemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of magnesium in the blood."
  * concept[+] 
    * code = #Hypernatremia
    * display = "Hypernatremia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of sodium in the blood."
  * concept[+] 
    * code = #Hyperparathyroidism
    * display = "Hyperparathyroidism"
    * definition = "A disorder characterized by an increase in production of parathyroid hormone by the parathyroid glands. This results in hypercalcemia (abnormally high levels of calcium in the blood)."
  * concept[+] 
    * code = #Hypersomnia
    * display = "Hypersomnia"
    * definition = "A disorder characterized by characterized by excessive sleepiness during the daytime."
  * concept[+] 
    * code = #Hypertension
    * display = "Hypertension"
    * definition = "A disorder characterized by a pathological increase in blood pressure; a repeatedly elevation in the blood pressure exceeding 140 over 90 mm Hg."
  * concept[+] 
    * code = #Hyperthyroidism
    * display = "Hyperthyroidism"
    * definition = "A disorder characterized by excessive levels of thyroid hormone in the body. Common causes include an overactive thyroid gland or thyroid hormone overdose."
  * concept[+] 
    * code = #Hypertrichosis
    * display = "Hypertrichosis"
    * definition = "A disorder characterized by hair density or length beyond the accepted limits of normal in a particular body region, for a particular age or race."
  * concept[+] 
    * code = #Hypertriglyceridemia
    * display = "Hypertriglyceridemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of triglyceride concentration in the blood."
  * concept[+] 
    * code = #Hyperuricemia
    * display = "Hyperuricemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of uric acid."
  * concept[+] 
    * code = #Hypoalbuminemia
    * display = "Hypoalbuminemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of albumin in the blood."
  * concept[+] 
    * code = #Hypocalcemia
    * display = "Hypocalcemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of calcium in the blood."
  * concept[+] 
    * code = #"Hypoglossal nerve disorder"
    * display = "Hypoglossal nerve disorder"
    * definition = "A disorder characterized by involvement of the hypoglossal nerve (twelfth cranial nerve)."
  * concept[+] 
    * code = #Hypoglycemia
    * display = "Hypoglycemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of glucose in the blood."
  * concept[+] 
    * code = #Hypohidrosis
    * display = "Hypohidrosis"
    * definition = "A disorder characterized by reduced sweating."
  * concept[+] 
    * code = #Hypokalemia
    * display = "Hypokalemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of potassium in the blood."
  * concept[+] 
    * code = #Hypomagnesemia
    * display = "Hypomagnesemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of magnesium in the blood."
  * concept[+] 
    * code = #Hyponatremia
    * display = "Hyponatremia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of sodium in the blood."
  * concept[+] 
    * code = #Hypoparathyroidism
    * display = "Hypoparathyroidism"
    * definition = "A disorder characterized by a decrease in production of parathyroid hormone by the parathyroid glands."
  * concept[+] 
    * code = #Hypophosphatemia
    * display = "Hypophosphatemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of phosphates in the blood."
  * concept[+] 
    * code = #Hypotension
    * display = "Hypotension"
    * definition = "A disorder characterized by a blood pressure that is below the normal expected for an individual in a given environment."
  * concept[+] 
    * code = #Hypothermia
    * display = "Hypothermia"
    * definition = "A disorder characterized by an abnormally low body temperature. Treatment is required when the body temperature is 35C (95F) or below."
  * concept[+] 
    * code = #Hypothyroidism
    * display = "Hypothyroidism"
    * definition = "A disorder characterized by a decrease in production of thyroid hormone by the thyroid gland."
  * concept[+] 
    * code = #Hypoxia
    * display = "Hypoxia"
    * definition = "A disorder characterized by a decrease in the level of oxygen in the body."
  * concept[+] 
    * code = #"Ileal fistula"
    * display = "Ileal fistula"
    * definition = "A disorder characterized by an abnormal communication between the ileum and another organ or anatomic site."
  * concept[+] 
    * code = #"Ileal hemorrhage"
    * display = "Ileal hemorrhage"
    * definition = "A disorder characterized by bleeding from the ileal wall."
  * concept[+] 
    * code = #"Ileal obstruction"
    * display = "Ileal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the ileum."
  * concept[+] 
    * code = #"Ileal perforation"
    * display = "Ileal perforation"
    * definition = "A disorder characterized by a rupture in the ileal wall."
  * concept[+] 
    * code = #"Ileal stenosis"
    * display = "Ileal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the ileum."
  * concept[+] 
    * code = #"Ileal ulcer"
    * display = "Ileal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the ileum."
  * concept[+] 
    * code = #Ileus
    * display = "Ileus"
    * definition = "A disorder characterized by failure of the ileum to transport intestinal contents."
  * concept[+] 
    * code = #"Immune system disorders - Other, Specify"
    * display = "Immune system disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Infections and infestations - Other, Specify"
    * display = "Infections and infestations - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Infective myositis"
    * display = "Infective myositis"
    * definition = "A disorder characterized by an infectious process involving the skeletal muscles."
  * concept[+] 
    * code = #"Infusion related reaction"
    * display = "Infusion related reaction"
    * definition = "A disorder characterized by adverse reaction to the infusion of pharmacological or biological substances."
  * concept[+] 
    * code = #"Infusion site extravasation"
    * display = "Infusion site extravasation"
    * definition = "A disorder characterized by leakage of a pharmacologic or a biologic substance from the infusion site into the surrounding tissue. Signs and symptoms include induration, erythema, swelling, burning sensation and marked discomfort at the infusion site."
  * concept[+] 
    * code = #"Injection site reaction"
    * display = "Injection site reaction"
    * definition = "A disorder characterized by an intense adverse reaction (usually immunologic) developing at the site of an injection."
  * concept[+] 
    * code = #"Injury to carotid artery"
    * display = "Injury to carotid artery"
    * definition = "A finding of damage to the carotid artery."
  * concept[+] 
    * code = #"Injury to inferior vena cava"
    * display = "Injury to inferior vena cava"
    * definition = "A finding of damage to the inferior vena cava."
  * concept[+] 
    * code = #"Injury to jugular vein"
    * display = "Injury to jugular vein"
    * definition = "A finding of damage to the jugular vein."
  * concept[+] 
    * code = #"Injury to superior vena cava"
    * display = "Injury to superior vena cava"
    * definition = "A finding of damage to the superior vena cava."
  * concept[+] 
    * code = #"Injury, poisoning and procedural complications - Other, Specify"
    * display = "Injury, poisoning and procedural complications - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"INR increased"
    * display = "INR increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the ratio of the patient's prothrombin time to a control sample in the blood."
  * concept[+] 
    * code = #Insomnia
    * display = "Insomnia"
    * definition = "A disorder characterized by difficulty in falling asleep and/or remaining asleep."
  * concept[+] 
    * code = #"Intestinal stoma leak"
    * display = "Intestinal stoma leak"
    * definition = "A finding of leakage of contents from an intestinal stoma (surgically created opening on the surface of the body)."
  * concept[+] 
    * code = #"Intestinal stoma obstruction"
    * display = "Intestinal stoma obstruction"
    * definition = "A finding of blockage of the normal flow of the contents of the intestinal stoma."
  * concept[+] 
    * code = #"Intestinal stoma site bleeding"
    * display = "Intestinal stoma site bleeding"
    * definition = "A finding of blood leakage from the intestinal stoma."
  * concept[+] 
    * code = #"Intra-abdominal hemorrhage"
    * display = "Intra-abdominal hemorrhage"
    * definition = "A disorder characterized by bleeding in the abdominal cavity."
  * concept[+] 
    * code = #"Intracranial hemorrhage"
    * display = "Intracranial hemorrhage"
    * definition = "A disorder characterized by bleeding from the cranium."
  * concept[+] 
    * code = #"Intraoperative arterial injury"
    * display = "Intraoperative arterial injury"
    * definition = "A finding of damage to an artery during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative breast injury"
    * display = "Intraoperative breast injury"
    * definition = "A finding of damage to the breast parenchyma during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative cardiac injury"
    * display = "Intraoperative cardiac injury"
    * definition = "A finding of damage to the heart during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative ear injury"
    * display = "Intraoperative ear injury"
    * definition = "A finding of damage to the ear during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative endocrine injury"
    * display = "Intraoperative endocrine injury"
    * definition = "A finding of damage to the endocrine gland during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative gastrointestinal injury"
    * display = "Intraoperative gastrointestinal injury"
    * definition = "A finding of damage to the gastrointestinal system during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative head and neck injury"
    * display = "Intraoperative head and neck injury"
    * definition = "A finding of damage to the head and neck during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative hemorrhage"
    * display = "Intraoperative hemorrhage"
    * definition = "A finding of uncontrolled bleeding during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative hepatobiliary injury"
    * display = "Intraoperative hepatobiliary injury"
    * definition = "A finding of damage to the hepatic parenchyma and/or biliary tract during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative musculoskeletal injury"
    * display = "Intraoperative musculoskeletal injury"
    * definition = "A finding of damage to the musculoskeletal system during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative neurological injury"
    * display = "Intraoperative neurological injury"
    * definition = "A finding of damage to the nervous system during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative ocular injury"
    * display = "Intraoperative ocular injury"
    * definition = "A finding of damage to the eye during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative renal injury"
    * display = "Intraoperative renal injury"
    * definition = "A finding of damage to the kidney during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative reproductive tract injury"
    * display = "Intraoperative reproductive tract injury"
    * definition = "A finding of damage to the reproductive organs during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative respiratory injury"
    * display = "Intraoperative respiratory injury"
    * definition = "A finding of damage to the respiratory system during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative skin injury"
    * display = "Intraoperative skin injury"
    * definition = "A finding of damage to the skin during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative splenic injury"
    * display = "Intraoperative splenic injury"
    * definition = "A finding of damage to the spleen during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative urinary injury"
    * display = "Intraoperative urinary injury"
    * definition = "A finding of damage to the urinary system during a surgical procedure."
  * concept[+] 
    * code = #"Intraoperative venous injury"
    * display = "Intraoperative venous injury"
    * definition = "A finding of damage to a vein during a surgical procedure."
  * concept[+] 
    * code = #"Investigations - Other, Specify"
    * display = "Investigations - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Iron overload"
    * display = "Iron overload"
    * definition = "A disorder characterized by accumulation of iron in the tissues."
  * concept[+] 
    * code = #"Irregular menstruation"
    * display = "Irregular menstruation"
    * definition = "A disorder characterized by irregular cycle or duration of menses."
  * concept[+] 
    * code = #Irritability
    * display = "Irritability"
    * definition = "A disorder characterized by an abnormal responsiveness to stimuli or physiological arousal; may be in response to pain, fright, a drug, an emotional situation or a medical condition."
  * concept[+] 
    * code = #"Ischemia cerebrovascular"
    * display = "Ischemia cerebrovascular"
    * definition = "A disorder characterized by a decrease or absence of blood supply to the brain caused by obstruction (thrombosis or embolism) of an artery resulting in neurological damage."
  * concept[+] 
    * code = #"IVth nerve disorder"
    * display = "IVth nerve disorder"
    * definition = "A disorder characterized by involvement of the trochlear nerve (fourth cranial nerve)."
  * concept[+] 
    * code = #"Jejunal fistula"
    * display = "Jejunal fistula"
    * definition = "A disorder characterized by an abnormal communication between the jejunum and another organ or anatomic site."
  * concept[+] 
    * code = #"Jejunal hemorrhage"
    * display = "Jejunal hemorrhage"
    * definition = "A disorder characterized by bleeding from the jejunal wall."
  * concept[+] 
    * code = #"Jejunal obstruction"
    * display = "Jejunal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the jejunum."
  * concept[+] 
    * code = #"Jejunal perforation"
    * display = "Jejunal perforation"
    * definition = "A disorder characterized by a rupture in the jejunal wall."
  * concept[+] 
    * code = #"Jejunal stenosis"
    * display = "Jejunal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the jejunum."
  * concept[+] 
    * code = #"Jejunal ulcer"
    * display = "Jejunal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the jejunum."
  * concept[+] 
    * code = #"Joint effusion"
    * display = "Joint effusion"
    * definition = "A disorder characterized by excessive fluid in a joint, usually as a result of joint inflammation."
  * concept[+] 
    * code = #"Joint infection"
    * display = "Joint infection"
    * definition = "A disorder characterized by an infectious process involving a joint."
  * concept[+] 
    * code = #"Joint range of motion decreased"
    * display = "Joint range of motion decreased"
    * definition = "A disorder characterized by a decrease in joint flexibility of any joint."
  * concept[+] 
    * code = #"Joint range of motion decreased cervical spine"
    * display = "Joint range of motion decreased cervical spine"
    * definition = "A disorder characterized by a decrease in flexibility of a cervical spine joint."
  * concept[+] 
    * code = #"Joint range of motion decreased lumbar spine"
    * display = "Joint range of motion decreased lumbar spine"
    * definition = "A disorder characterized by a decrease in flexibility of a lumbar spine joint."
  * concept[+] 
    * code = #Keratitis
    * display = "Keratitis"
    * definition = "A disorder characterized by inflammation to the cornea of the eye."
  * concept[+] 
    * code = #"Kidney anastomotic leak"
    * display = "Kidney anastomotic leak"
    * definition = "A finding of leakage of urine due to breakdown of a kidney anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Kidney infection"
    * display = "Kidney infection"
    * definition = "A disorder characterized by an infectious process involving the kidney."
  * concept[+] 
    * code = #Kyphosis
    * display = "Kyphosis"
    * definition = "A disorder characterized by an abnormal increase in the curvature of the thoracic portion of the spine."
  * concept[+] 
    * code = #"Lactation disorder"
    * display = "Lactation disorder"
    * definition = "A disorder characterized by disturbances of milk secretion. It is not necessarily related to pregnancy that is observed in females and can be observed in males."
  * concept[+] 
    * code = #"Large intestinal anastomotic leak"
    * display = "Large intestinal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of an anastomosis (surgical connection of two separate anatomic structures) in the large intestine."
  * concept[+] 
    * code = #"Laryngeal edema"
    * display = "Laryngeal edema"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid in the larynx."
  * concept[+] 
    * code = #"Laryngeal fistula"
    * display = "Laryngeal fistula"
    * definition = "A disorder characterized by an abnormal communication between the larynx and another organ or anatomic site."
  * concept[+] 
    * code = #"Laryngeal hemorrhage"
    * display = "Laryngeal hemorrhage"
    * definition = "A disorder characterized by bleeding from the larynx."
  * concept[+] 
    * code = #"Laryngeal inflammation"
    * display = "Laryngeal inflammation"
    * definition = "A disorder characterized by an inflammation involving the larynx."
  * concept[+] 
    * code = #"Laryngeal mucositis"
    * display = "Laryngeal mucositis"
    * definition = "A disorder characterized by an inflammation involving the mucous membrane of the larynx."
  * concept[+] 
    * code = #"Laryngeal obstruction"
    * display = "Laryngeal obstruction"
    * definition = "A disorder characterized by blockage of the laryngeal airway."
  * concept[+] 
    * code = #"Laryngeal stenosis"
    * display = "Laryngeal stenosis"
    * definition = "A disorder characterized by a narrowing of the laryngeal airway."
  * concept[+] 
    * code = #Laryngitis
    * display = "Laryngitis"
    * definition = "A disorder characterized by an inflammatory process involving the larynx."
  * concept[+] 
    * code = #"Laryngopharyngeal dysesthesia"
    * display = "Laryngopharyngeal dysesthesia"
    * definition = "A disorder characterized by an uncomfortable persistent sensation in the area of the laryngopharynx."
  * concept[+] 
    * code = #Laryngospasm
    * display = "Laryngospasm"
    * definition = "A disorder characterized by paroxysmal spasmodic muscular contraction of the vocal cords."
  * concept[+] 
    * code = #"Left ventricular systolic dysfunction"
    * display = "Left ventricular systolic dysfunction"
    * definition = "A disorder characterized by failure of the left ventricle to produce adequate output despite an increase in distending pressure and in end-diastolic volume. Clinical manifestations mayinclude dyspnea, orthopnea, and other signs and symptoms of pulmonary congestion and edema."
  * concept[+] 
    * code = #Lethargy
    * display = "Lethargy"
    * definition = "A disorder characterized by a decrease in consciousness characterized by mental and physical inertness."
  * concept[+] 
    * code = #"Leukemia secondary to oncology chemotherapy"
    * display = "Leukemia secondary to oncology chemotherapy"
    * definition = "A disorder characterized by leukemia arising as a result of the mutagenic effect of chemotherapy agents."
  * concept[+] 
    * code = #Leukocytosis
    * display = "Leukocytosis"
    * definition = "A disorder characterized by laboratory test results that indicate an increased number of white blood cells in the blood."
  * concept[+] 
    * code = #Leukoencephalopathy
    * display = "Leukoencephalopathy"
    * definition = "A disorder characterized by diffuse reactive astrocytosis with multiple areas of necrotic foci without inflammation."
  * concept[+] 
    * code = #"Libido decreased"
    * display = "Libido decreased"
    * definition = "A disorder characterized by a decrease in sexual desire."
  * concept[+] 
    * code = #"Libido increased"
    * display = "Libido increased"
    * definition = "A disorder characterized by an increase in sexual desire."
  * concept[+] 
    * code = #"Lip infection"
    * display = "Lip infection"
    * definition = "A disorder characterized by an infectious process involving the lips."
  * concept[+] 
    * code = #"Lip pain"
    * display = "Lip pain"
    * definition = "A disorder characterized by a sensation of marked discomfort of the lip."
  * concept[+] 
    * code = #"Lipase increased"
    * display = "Lipase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of lipase in a biological specimen."
  * concept[+] 
    * code = #Lipohypertrophy
    * display = "Lipohypertrophy"
    * definition = "A disorder characterized by hypertrophy of the subcutaneous adipose tissue at the site of multiple subcutaneous injections of insulin."
  * concept[+] 
    * code = #"Localized edema"
    * display = "Localized edema"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation at a specific anatomic site."
  * concept[+] 
    * code = #Lordosis
    * display = "Lordosis"
    * definition = "A disorder characterized by an abnormal increase in the curvature of the lumbar portion of the spine."
  * concept[+] 
    * code = #"Lower gastrointestinal hemorrhage"
    * display = "Lower gastrointestinal hemorrhage"
    * definition = "A disorder characterized by bleeding from the lower gastrointestinal tract (small intestine, large intestine, and anus)."
  * concept[+] 
    * code = #"Lung infection"
    * display = "Lung infection"
    * definition = "A disorder characterized by an infectious process involving the lungs."
  * concept[+] 
    * code = #"Lymph gland infection"
    * display = "Lymph gland infection"
    * definition = "A disorder characterized by an infectious process involving the lymph nodes."
  * concept[+] 
    * code = #"Lymph leakage"
    * display = "Lymph leakage"
    * definition = "A disorder characterized by the loss of lymph fluid into the surrounding tissue or body cavity."
  * concept[+] 
    * code = #"Lymph node pain"
    * display = "Lymph node pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in a lymph node."
  * concept[+] 
    * code = #Lymphedema
    * display = "Lymphedema"
    * definition = "A disorder characterized by excessive fluid collection in tissues that causes swelling."
  * concept[+] 
    * code = #Lymphocele
    * display = "Lymphocele"
    * definition = "A disorder characterized by a cystic lesion containing lymph."
  * concept[+] 
    * code = #"Lymphocyte count decreased"
    * display = "Lymphocyte count decreased"
    * definition = "A finding based on laboratory test results that indicate a decrease in number of lymphocytes in a blood specimen."
  * concept[+] 
    * code = #"Lymphocyte count increased"
    * display = "Lymphocyte count increased"
    * definition = "A finding based on laboratory test results that indicate an abnormal increase in the number of lymphocytes in the blood, effusions or bone marrow."
  * concept[+] 
    * code = #Malabsorption
    * display = "Malabsorption"
    * definition = "A disorder characterized by inadequate absorption of nutrients in the small intestine. Symptoms include abdominal marked discomfort, bloating and diarrhea."
  * concept[+] 
    * code = #Malaise
    * display = "Malaise"
    * definition = "A disorder characterized by a feeling of general discomfort or uneasiness, an out-of-sorts feeling."
  * concept[+] 
    * code = #Mania
    * display = "Mania"
    * definition = "A disorder characterized by excitement of psychotic proportions manifested by mental and physical hyperactivity, disorganization of behavior and elevation of mood."
  * concept[+] 
    * code = #"Mediastinal hemorrhage"
    * display = "Mediastinal hemorrhage"
    * definition = "A disorder characterized by bleeding from the mediastinum."
  * concept[+] 
    * code = #"Mediastinal infection"
    * display = "Mediastinal infection"
    * definition = "A disorder characterized by an infectious process involving the mediastinum."
  * concept[+] 
    * code = #"Memory impairment"
    * display = "Memory impairment"
    * definition = "A disorder characterized by a deterioration in memory function."
  * concept[+] 
    * code = #Meningismus
    * display = "Meningismus"
    * definition = "A disorder characterized by neck stiffness, headache, and photophobia resulting from irritation of the cerebral meninges."
  * concept[+] 
    * code = #Meningitis
    * display = "Meningitis"
    * definition = "A disorder characterized by acute inflammation of the meninges of the brain and/or spinal cord."
  * concept[+] 
    * code = #Menopause
    * display = "Menopause"
    * definition = "A disorder characterized by the permanent cessation of menses, usually defined by 12 consecutive months of amenorrhea in a woman over 45 years of age."
  * concept[+] 
    * code = #Menorrhagia
    * display = "Menorrhagia"
    * definition = "A disorder characterized by abnormally heavy vaginal bleeding during menses."
  * concept[+] 
    * code = #"Metabolism and nutrition disorders - Other, Specify"
    * display = "Metabolism and nutrition disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Middle ear inflammation"
    * display = "Middle ear inflammation"
    * definition = "A disorder characterized by inflammation (physiologic response to irritation), swelling and redness to the middle ear."
  * concept[+] 
    * code = #"Mitral valve disease"
    * display = "Mitral valve disease"
    * definition = "A disorder characterized by a defect in mitral valve function or structure."
  * concept[+] 
    * code = #"Mobitz (type) II atrioventricular block"
    * display = "Mobitz (type) II atrioventricular block"
    * definition = "A disorder characterized by a dysrhythmia with relatively constant PR interval prior to the block of an atrial impulse. This is the result of intermittent failure of atrial electrical impulse conduction through the atrioventricular (AV) node to the ventricles."
  * concept[+] 
    * code = #"Mobitz type I"
    * display = "Mobitz type I"
    * definition = "A disorder characterized by a dysrhythmia with a progressively lengthening PR interval prior to the blocking of an atrial impulse. This is the result of intermittent failure of atrial electrical impulse conduction through the atrioventricular (AV) node to the ventricles."
  * concept[+] 
    * code = #"Movements involuntary"
    * display = "Movements involuntary"
    * definition = "A disorder characterized by uncontrolled and purposeless movements."
  * concept[+] 
    * code = #"Mucosal infection"
    * display = "Mucosal infection"
    * definition = "A disorder characterized by an infectious process involving a mucosal surface."
  * concept[+] 
    * code = #"Mucositis oral"
    * display = "Mucositis oral"
    * definition = "A disorder characterized by inflammation of the oral mucosal."
  * concept[+] 
    * code = #"Multi-organ failure"
    * display = "Multi-organ failure"
    * definition = "A disorder characterized by progressive deterioration of the lungs, liver, kidney and clotting mechanisms."
  * concept[+] 
    * code = #"Muscle weakness left-sided"
    * display = "Muscle weakness left-sided"
    * definition = "A disorder characterized by a reduction in the strength of the muscles on the left side of the body."
  * concept[+] 
    * code = #"Muscle weakness lower limb"
    * display = "Muscle weakness lower limb"
    * definition = "A disorder characterized by a reduction in the strength of the lower limb muscles."
  * concept[+] 
    * code = #"Muscle weakness right-sided"
    * display = "Muscle weakness right-sided"
    * definition = "A disorder characterized by a reduction in the strength of the muscles on the right side of the body."
  * concept[+] 
    * code = #"Muscle weakness trunk"
    * display = "Muscle weakness trunk"
    * definition = "A disorder characterized by a reduction in the strength of the trunk muscles."
  * concept[+] 
    * code = #"Muscle weakness upper limb"
    * display = "Muscle weakness upper limb"
    * definition = "A disorder characterized by a reduction in the strength of the upper limb muscles."
  * concept[+] 
    * code = #"Musculoskeletal and connective tissue disorders - Other, Specify"
    * display = "Musculoskeletal and connective tissue disorder - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Musculoskeletal deformity"
    * display = "Musculoskeletal deformity"
    * definition = "A disorder characterized by of a malformation of the musculoskeletal system."
  * concept[+] 
    * code = #Myalgia
    * display = "Myalgia"
    * definition = "A disorder characterized by marked discomfort sensation originating from a muscle or group of muscles."
  * concept[+] 
    * code = #Myelitis
    * display = "Myelitis"
    * definition = "A disorder characterized by inflammation involving the spinal cord. Symptoms include weakness, paresthesia, sensory loss, marked discomfort and incontinence."
  * concept[+] 
    * code = #"Myelodysplastic syndrome"
    * display = "Myelodysplastic syndrome"
    * definition = "A disorder characterized by insufficiently healthy hematapoietic cell production by the bone marrow."
  * concept[+] 
    * code = #"Myocardial infarction"
    * display = "Myocardial infarction"
    * definition = "A disorder characterized by gross necrosis of the myocardium; this is due to an interruption of blood supply to the area."
  * concept[+] 
    * code = #Myocarditis
    * display = "Myocarditis"
    * definition = "A disorder characterized by inflammation of the muscle tissue of the heart."
  * concept[+] 
    * code = #Myositis
    * display = "Myositis"
    * definition = "A disorder characterized by inflammation involving the skeletal muscles."
  * concept[+] 
    * code = #"Nail discoloration"
    * display = "Nail discoloration"
    * definition = "A disorder characterized by a change in the color of the nail plate."
  * concept[+] 
    * code = #"Nail infection"
    * display = "Nail infection"
    * definition = "A disorder characterized by an infectious process involving the nail."
  * concept[+] 
    * code = #"Nail loss"
    * display = "Nail loss"
    * definition = "A disorder characterized by loss of all or a portion of the nail."
  * concept[+] 
    * code = #"Nail ridging"
    * display = "Nail ridging"
    * definition = "A disorder characterized by vertical or horizontal ridges on the nails."
  * concept[+] 
    * code = #"Nasal congestion"
    * display = "Nasal congestion"
    * definition = "A disorder characterized by obstruction of the nasal passage due to mucosal edema."
  * concept[+] 
    * code = #Nausea
    * display = "Nausea"
    * definition = "A disorder characterized by a queasy sensation and/or the urge to vomit."
  * concept[+] 
    * code = #"Neck edema"
    * display = "Neck edema"
    * definition = "A disorder characterized by swelling due to an accumulation of excessive fluid in the neck."
  * concept[+] 
    * code = #"Neck pain"
    * display = "Neck pain"
    * definition = "A disorder characterized by marked discomfort sensation in the neck area."
  * concept[+] 
    * code = #"Neck soft tissue necrosis"
    * display = "Neck soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the neck."
  * concept[+] 
    * code = #"Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, Specify"
    * display = "Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Nervous system disorders - Other, Specify"
    * display = "Nervous system disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Neuralgia
    * display = "Neuralgia"
    * definition = "A disorder characterized by intense painful sensation along a nerve or group of nerves."
  * concept[+] 
    * code = #"Neutrophil count decreased"
    * display = "Neutrophil count decreased"
    * definition = "A finding based on laboratory test results that indicate a decrease in number of neutrophils in a blood specimen."
  * concept[+] 
    * code = #"Night blindness"
    * display = "Night blindness"
    * definition = "A disorder characterized by an inability to see clearly in dim light."
  * concept[+] 
    * code = #"Nipple deformity"
    * display = "Nipple deformity"
    * definition = "A disorder characterized by a malformation of the nipple."
  * concept[+] 
    * code = #"Non-cardiac chest pain"
    * display = "Non-cardiac chest pain"
    * definition = "A disorder characterized by discomfort in the chest unrelated to a heart disorder."
  * concept[+] 
    * code = #Nystagmus
    * display = "Nystagmus"
    * definition = "A disorder characterized by involuntary movements of the eyeballs."
  * concept[+] 
    * code = #Obesity
    * display = "Obesity"
    * definition = "A disorder characterized by having a high amount of body fat."
  * concept[+] 
    * code = #"Obstruction gastric"
    * display = "Obstruction gastric"
    * definition = "A disorder characterized by blockage of the normal flow of the contents in the stomach."
  * concept[+] 
    * code = #"Oculomotor nerve disorder"
    * display = "Oculomotor nerve disorder"
    * definition = "A disorder characterized by involvement of the oculomotor nerve (third cranial nerve)."
  * concept[+] 
    * code = #"Olfactory nerve disorder"
    * display = "Olfactory nerve disorder"
    * definition = "A disorder characterized by involvement of the olfactory nerve (first cranial nerve)."
  * concept[+] 
    * code = #Oligospermia
    * display = "Oligospermia"
    * definition = "A disorder characterized by a decrease in the number of spermatozoa in the semen."
  * concept[+] 
    * code = #"Optic nerve disorder"
    * display = "Optic nerve disorder"
    * definition = "A disorder characterized by involvement of the optic nerve (second cranial nerve)."
  * concept[+] 
    * code = #"Oral cavity fistula"
    * display = "Oral cavity fistula"
    * definition = "A disorder characterized by an abnormal communication between the oral cavity and another organ or anatomic site."
  * concept[+] 
    * code = #"Oral dysesthesia"
    * display = "Oral dysesthesia"
    * definition = "A disorder characterized by a burning or tingling sensation on the lips, tongue or entire mouth."
  * concept[+] 
    * code = #"Oral hemorrhage"
    * display = "Oral hemorrhage"
    * definition = "A disorder characterized by bleeding from the mouth."
  * concept[+] 
    * code = #"Oral pain"
    * display = "Oral pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the mouth, tongue or lips."
  * concept[+] 
    * code = #"Osteonecrosis of jaw"
    * display = "Osteonecrosis of jaw"
    * definition = "A disorder characterized by a necrotic process occurring in the bone of the mandible."
  * concept[+] 
    * code = #Osteoporosis
    * display = "Osteoporosis"
    * definition = "A disorder characterized by reduced bone mass, with a decrease in cortical thickness and in the number and size of the trabeculae of cancellous bone (but normal chemical composition), resulting in increased fracture incidence."
  * concept[+] 
    * code = #"Otitis externa"
    * display = "Otitis externa"
    * definition = "A disorder characterized by an infectious process involving the outer ear and ear canal. Contributory factors include excessive water exposure (swimmer's ear infection) and cuts in the ear canal. Symptoms include fullness, itching, swelling and marked discomfort in the ear and ear drainage."
  * concept[+] 
    * code = #"Otitis media"
    * display = "Otitis media"
    * definition = "A disorder characterized by an infectious process involving the middle ear."
  * concept[+] 
    * code = #"Ovarian hemorrhage"
    * display = "Ovarian hemorrhage"
    * definition = "A disorder characterized by bleeding from the ovary."
  * concept[+] 
    * code = #"Ovarian infection"
    * display = "Ovarian infection"
    * definition = "A disorder characterized by an infectious process involving the ovary."
  * concept[+] 
    * code = #"Ovarian rupture"
    * display = "Ovarian rupture"
    * definition = "A disorder characterized by tearing or disruption of the ovarian tissue."
  * concept[+] 
    * code = #"Ovulation pain"
    * display = "Ovulation pain"
    * definition = "A disorder characterized by marked discomfort sensation in one side of the abdomen between menstrual cycles, around the time of the discharge of the ovum from the ovarian follicle."
  * concept[+] 
    * code = #Pain
    * display = "Pain"
    * definition = "A disorder characterized by the sensation of marked discomfort, distress or agony."
  * concept[+] 
    * code = #"Pain in extremity"
    * display = "Pain in extremity"
    * definition = "A disorder characterized by marked discomfort sensation in the upper or lower extremities."
  * concept[+] 
    * code = #"Pain of skin"
    * display = "Pain of skin"
    * definition = "A disorder characterized by marked discomfort sensation in the skin."
  * concept[+] 
    * code = #"Palmar-plantar erythrodysesthesia syndrome"
    * display = "Palmar-plantar erythrodysesthesia syndrome"
    * definition = "A disorder characterized by redness, marked discomfort, swelling, and tingling in the palms of the hands or the soles of the feet."
  * concept[+] 
    * code = #Palpitations
    * display = "Palpitations"
    * definition = "A disorder characterized by an unpleasant sensation of irregular and/or forceful beating of the heart."
  * concept[+] 
    * code = #"Pancreas infection"
    * display = "Pancreas infection"
    * definition = "A disorder characterized by an infectious process involving the pancreas."
  * concept[+] 
    * code = #"Pancreatic anastomotic leak"
    * display = "Pancreatic anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a pancreatic anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Pancreatic duct stenosis"
    * display = "Pancreatic duct stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the pancreatic duct."
  * concept[+] 
    * code = #"Pancreatic enzymes decreased"
    * display = "Pancreatic enzymes decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of pancreatic enzymes in a biological specimen."
  * concept[+] 
    * code = #"Pancreatic fistula"
    * display = "Pancreatic fistula"
    * definition = "A disorder characterized by an abnormal communication between the pancreas and another organ or anatomic site."
  * concept[+] 
    * code = #"Pancreatic hemorrhage"
    * display = "Pancreatic hemorrhage"
    * definition = "A disorder characterized by bleeding from the pancreas."
  * concept[+] 
    * code = #"Pancreatic necrosis"
    * display = "Pancreatic necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the pancreas."
  * concept[+] 
    * code = #Pancreatitis
    * display = "Pancreatitis"
    * definition = "A disorder characterized by inflammation of the pancreas."
  * concept[+] 
    * code = #Papilledema
    * display = "Papilledema"
    * definition = "A disorder characterized by swelling around the optic disc."
  * concept[+] 
    * code = #"Papulopustular rash"
    * display = "Papulopustular rash"
    * definition = "A disorder characterized by an eruption consisting of papules (a small, raised pimple) and pustules (a small pus filled blister), typically appearing in face, scalp, and upper chest and back Unlike acne, this rash does not present with whiteheads or blackheads, and can be symptomatic, with itchy or tender lesions."
  * concept[+] 
    * code = #Paresthesia
    * display = "Paresthesia"
    * definition = "A disorder characterized by functional disturbances of sensory neurons resulting in abnormal cutaneous sensations of tingling, numbness, pressure, cold, and warmth that are experienced in the absence of a stimulus."
  * concept[+] 
    * code = #Paronychia
    * display = "Paronychia"
    * definition = "A disorder characterized by an infectious process involving the soft tissues around the nail."
  * concept[+] 
    * code = #"Paroxysmal atrial tachycardia"
    * display = "Paroxysmal atrial tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with abrupt onset and sudden termination of atrial contractions with a rate of 150-250 beats per minute. The rhythm disturbance originates in the atria."
  * concept[+] 
    * code = #"Pelvic floor muscle weakness"
    * display = "Pelvic floor muscle weakness"
    * definition = "A disorder characterized by a reduction in the strength of the muscles of the pelvic floor."
  * concept[+] 
    * code = #"Pelvic infection"
    * display = "Pelvic infection"
    * definition = "A disorder characterized by an infectious process involving the pelvic cavity."
  * concept[+] 
    * code = #"Pelvic pain"
    * display = "Pelvic pain"
    * definition = "A disorder characterized by marked discomfort sensation in the pelvis."
  * concept[+] 
    * code = #"Pelvic soft tissue necrosis"
    * display = "Pelvic soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the pelvis."
  * concept[+] 
    * code = #"Penile infection"
    * display = "Penile infection"
    * definition = "A disorder characterized by an infectious process involving the penis."
  * concept[+] 
    * code = #"Penile pain"
    * display = "Penile pain"
    * definition = "A disorder characterized by marked discomfort sensation in the penis."
  * concept[+] 
    * code = #"Perforation bile duct"
    * display = "Perforation bile duct"
    * definition = "A disorder characterized by a rupture in the wall of the extrahepatic or intrahepatic bile duct."
  * concept[+] 
    * code = #"Pericardial effusion"
    * display = "Pericardial effusion"
    * definition = "A disorder characterized by fluid collection within the pericardial sac, usually due to inflammation."
  * concept[+] 
    * code = #"Pericardial tamponade"
    * display = "Pericardial tamponade"
    * definition = "A disorder characterized by an increase in intrapericardial pressure due to the collection of blood or fluid in the pericardium."
  * concept[+] 
    * code = #Pericarditis
    * display = "Pericarditis"
    * definition = "A disorder characterized by irritation to the layers of the pericardium (the protective sac around the heart)."
  * concept[+] 
    * code = #"Perineal pain"
    * display = "Perineal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the area between the genital organs and the anus."
  * concept[+] 
    * code = #"Periodontal disease"
    * display = "Periodontal disease"
    * definition = "A disorder in the gingival tissue around the teeth."
  * concept[+] 
    * code = #"Periorbital edema"
    * display = "Periorbital edema"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid around the orbits of the face."
  * concept[+] 
    * code = #"Periorbital infection"
    * display = "Periorbital infection"
    * definition = "A disorder characterized by an infectious process involving the orbit of the eye."
  * concept[+] 
    * code = #"Peripheral ischemia"
    * display = "Peripheral ischemia"
    * definition = "A disorder characterized by impaired circulation to an extremity."
  * concept[+] 
    * code = #"Peripheral motor neuropathy"
    * display = "Peripheral motor neuropathy"
    * definition = "A disorder characterized by inflammation or degeneration of the peripheral motor nerves."
  * concept[+] 
    * code = #"Peripheral nerve infection"
    * display = "Peripheral nerve infection"
    * definition = "A disorder characterized by an infectious process involving the peripheral nerves."
  * concept[+] 
    * code = #"Peripheral sensory neuropathy"
    * display = "Peripheral sensory neuropathy"
    * definition = "A disorder characterized by inflammation or degeneration of the peripheral sensory nerves."
  * concept[+] 
    * code = #"Peritoneal infection"
    * display = "Peritoneal infection"
    * definition = "A disorder characterized by an infectious process involving the peritoneum."
  * concept[+] 
    * code = #"Peritoneal necrosis"
    * display = "Peritoneal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the peritoneum."
  * concept[+] 
    * code = #"Personality change"
    * display = "Personality change"
    * definition = "A disorder characterized by a conspicuous change in a person's behavior and thinking."
  * concept[+] 
    * code = #"Phantom pain"
    * display = "Phantom pain"
    * definition = "A disorder characterized by marked discomfort related to a limb or an organ that is removed from or is not physically part of the body."
  * concept[+] 
    * code = #"Pharyngeal anastomotic leak"
    * display = "Pharyngeal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a pharyngeal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Pharyngeal fistula"
    * display = "Pharyngeal fistula"
    * definition = "A disorder characterized by an abnormal communication between the pharynx and another organ or anatomic site."
  * concept[+] 
    * code = #"Pharyngeal hemorrhage"
    * display = "Pharyngeal hemorrhage"
    * definition = "A disorder characterized by bleeding from the pharynx."
  * concept[+] 
    * code = #"Pharyngeal mucositis"
    * display = "Pharyngeal mucositis"
    * definition = "A disorder characterized by an inflammation involving the mucous membrane of the pharynx."
  * concept[+] 
    * code = #"Pharyngeal necrosis"
    * display = "Pharyngeal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the pharynx."
  * concept[+] 
    * code = #"Pharyngeal stenosis"
    * display = "Pharyngeal stenosis"
    * definition = "A disorder characterized by a narrowing of the pharyngeal airway."
  * concept[+] 
    * code = #Pharyngitis
    * display = "Pharyngitis"
    * definition = "A disorder characterized by inflammation of the throat."
  * concept[+] 
    * code = #"Pharyngolaryngeal pain"
    * display = "Pharyngolaryngeal pain"
    * definition = "A disorder characterized by marked discomfort sensation in the pharyngolaryngeal region."
  * concept[+] 
    * code = #Phlebitis
    * display = "Phlebitis"
    * definition = "A disorder characterized by inflammation of the wall of a vein."
  * concept[+] 
    * code = #"Phlebitis infective"
    * display = "Phlebitis infective"
    * definition = "A disorder characterized by an infectious process involving the vein. Clinical manifestations include erythema, marked discomfort, swelling, and induration along the course of the infected vein."
  * concept[+] 
    * code = #Photophobia
    * display = "Photophobia"
    * definition = "A disorder characterized by fear and avoidance of light."
  * concept[+] 
    * code = #Photosensitivity
    * display = "Photosensitivity"
    * definition = "A disorder characterized by an increase in sensitivity of the skin to light."
  * concept[+] 
    * code = #"Platelet count decreased"
    * display = "Platelet count decreased"
    * definition = "A finding based on laboratory test results that indicate a decrease in number of platelets in a blood specimen."
  * concept[+] 
    * code = #"Pleural effusion"
    * display = "Pleural effusion"
    * definition = "A disorder characterized by an increase in amounts of fluid within the pleural cavity. Symptoms include shortness of breath, cough and marked chest discomfort."
  * concept[+] 
    * code = #"Pleural hemorrhage"
    * display = "Pleural hemorrhage"
    * definition = "A disorder characterized by bleeding from the pleural cavity."
  * concept[+] 
    * code = #"Pleural infection"
    * display = "Pleural infection"
    * definition = "A disorder characterized by an infectious process involving the pleura."
  * concept[+] 
    * code = #"Pleuritic pain"
    * display = "Pleuritic pain"
    * definition = "A disorder characterized by marked discomfort sensation in the pleura."
  * concept[+] 
    * code = #Pneumonitis
    * display = "Pneumonitis"
    * definition = "A disorder characterized by inflammation focally or diffusely affecting the lung parenchyma."
  * concept[+] 
    * code = #Pneumothorax
    * display = "Pneumothorax"
    * definition = "A disorder characterized by abnormal presence of air in the pleural cavity resulting in the collapse of the lung."
  * concept[+] 
    * code = #"Portal hypertension"
    * display = "Portal hypertension"
    * definition = "A disorder characterized by an increase in blood pressure in the portal venous system."
  * concept[+] 
    * code = #"Portal vein thrombosis"
    * display = "Portal vein thrombosis"
    * definition = "A disorder characterized by the formation of a thrombus (blood clot) in the portal vein."
  * concept[+] 
    * code = #"Postnasal drip"
    * display = "Postnasal drip"
    * definition = "A disorder characterized by excessive mucous secretion in the back of the nasal cavity or throat, causing sore throat and/or coughing."
  * concept[+] 
    * code = #"Postoperative hemorrhage"
    * display = "Postoperative hemorrhage"
    * definition = "A finding of bleeding occurring after a surgical procedure."
  * concept[+] 
    * code = #"Postoperative thoracic procedure complication"
    * display = "Postoperative thoracic procedure complication"
    * definition = "A finding of a previously undocumented problem that occurs after a thoracic procedure."
  * concept[+] 
    * code = #"Precocious puberty"
    * display = "Precocious puberty"
    * definition = "A disorder characterized by unusually early development of secondary sexual features; the onset of sexual maturation begins usually before age 8 for girls and before age 9 for boys."
  * concept[+] 
    * code = #"Pregnancy, puerperium and perinatal conditions - Other, Specify"
    * display = "Pregnancy, puerperium and perinatal conditions - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Premature delivery"
    * display = "Premature delivery"
    * definition = "A disorder characterized by delivery of a viable infant before the normal end of gestation. Typically, viability is achievable between the twentieth and thirty-seventh week of gestation."
  * concept[+] 
    * code = #"Premature menopause"
    * display = "Premature menopause"
    * definition = "A disorder characterized by ovarian failure before the age of 40. Symptoms include hot flashes, night sweats, mood swings and a decrease in sex drive."
  * concept[+] 
    * code = #Presyncope
    * display = "Presyncope"
    * definition = "A disorder characterized by an episode of lightheadedness and dizziness which may precede an episode of syncope."
  * concept[+] 
    * code = #Proctitis
    * display = "Proctitis"
    * definition = "A disorder characterized by inflammation of the rectum."
  * concept[+] 
    * code = #"Productive cough"
    * display = "Productive cough"
    * definition = "A disorder characterized by expectorated secretions upon coughing."
  * concept[+] 
    * code = #"Prolapse of intestinal stoma"
    * display = "Prolapse of intestinal stoma"
    * definition = "A finding of protrusion of the intestinal stoma (surgically created opening on the surface of the body) above the abdominal surface."
  * concept[+] 
    * code = #"Prolapse of urostomy"
    * display = "Prolapse of urostomy"
    * definition = "A finding of displacement of the urostomy."
  * concept[+] 
    * code = #"Prostate infection"
    * display = "Prostate infection"
    * definition = "A disorder characterized by an infectious process involving the prostate gland."
  * concept[+] 
    * code = #"Prostatic hemorrhage"
    * display = "Prostatic hemorrhage"
    * definition = "A disorder characterized by bleeding from the prostate gland."
  * concept[+] 
    * code = #"Prostatic obstruction"
    * display = "Prostatic obstruction"
    * definition = "A disorder characterized by compression of the urethra secondary to enlargement of the prostate gland. This results in voiding difficulties (straining to void, slow urine stream, and incomplete emptying of the bladder)."
  * concept[+] 
    * code = #"Prostatic pain"
    * display = "Prostatic pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the prostate gland."
  * concept[+] 
    * code = #Proteinuria
    * display = "Proteinuria"
    * definition = "A disorder characterized by laboratory test results that indicate the presence of excessive protein in the urine. It is predominantly albumin, but also globulin."
  * concept[+] 
    * code = #Pruritus
    * display = "Pruritus"
    * definition = "A disorder characterized by an intense itching sensation."
  * concept[+] 
    * code = #"Psychiatric disorders - Other, Specify"
    * display = "Psychiatric disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Psychosis
    * display = "Psychosis"
    * definition = "A disorder characterized by personality change, impaired functioning, and loss of touch with reality. It may be a manifestation of schizophrenia, bipolar disorder or brain tumor."
  * concept[+] 
    * code = #"Pulmonary edema"
    * display = "Pulmonary edema"
    * definition = "A disorder characterized by accumulation of fluid in the lung tissues that causes a disturbance of the gas exchange that may lead to respiratory failure."
  * concept[+] 
    * code = #"Pulmonary fibrosis"
    * display = "Pulmonary fibrosis"
    * definition = "A disorder characterized by the replacement of the lung tissue by connective tissue, leading to progressive dyspnea, respiratory failure or right heart failure."
  * concept[+] 
    * code = #"Pulmonary fistula"
    * display = "Pulmonary fistula"
    * definition = "A disorder characterized by an abnormal communication between the lung and another organ or anatomic site."
  * concept[+] 
    * code = #"Pulmonary hypertension"
    * display = "Pulmonary hypertension"
    * definition = "A disorder characterized by an increase in pressure within the pulmonary circulation due to lung or heart disorder."
  * concept[+] 
    * code = #"Pulmonary valve disease"
    * display = "Pulmonary valve disease"
    * definition = "A disorder characterized by a defect in pulmonary valve function or structure."
  * concept[+] 
    * code = #Purpura
    * display = "Purpura"
    * definition = "A disorder characterized by hemorrhagic areas of the skin and mucous membrane. Newer lesions appear reddish in color. Older lesions are usually a darker purple color and eventually become a brownish-yellow color."
  * concept[+] 
    * code = #"Pyramidal tract syndrome"
    * display = "Pyramidal tract syndrome"
    * definition = "A disorder characterized by dysfunction of the corticospinal (pyramidal) tracts of the spinal cord. Symptoms include an increase in the muscle tone in the lower extremities, hyperreflexia, positive Babinski and a decrease in fine motor coordination."
  * concept[+] 
    * code = #"Radiation recall reaction (dermatologic)"
    * display = "Radiation recall reaction (dermatologic)"
    * definition = "A finding of acute skin inflammatory reaction caused by drugs, especially chemotherapeutic agents, for weeks or months following radiotherapy. The inflammatory reaction is confined to the previously irradiated skin and the symptoms disappear after the removal of the pharmaceutical agent."
  * concept[+] 
    * code = #Radiculitis
    * display = "Radiculitis"
    * definition = "A disorder characterized by inflammation involving a nerve root. Patients experience marked discomfort radiating along a nerve path because of spinal pressure on the connecting nerve root."
  * concept[+] 
    * code = #"Rash acneiform"
    * display = "Rash acneiform"
    * definition = "A disorder characterized by an eruption of papules and pustules, typically appearing in face, scalp, upper chest and back."
  * concept[+] 
    * code = #"Rash maculo-papular"
    * display = "Rash maculo-papular"
    * definition = "A disorder characterized by the presence of macules (flat) and papules (elevated). Also known as morbillform rash, it is one of the most common cutaneous adverse events, frequently affecting the upper trunk, spreading centripetally and associated with pruritus."
  * concept[+] 
    * code = #"Rash pustular"
    * display = "Rash pustular"
    * definition = "A disorder characterized by a circumscribed and elevated skin lesion filled with pus."
  * concept[+] 
    * code = #"Rectal anastomotic leak"
    * display = "Rectal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a rectal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Rectal fistula"
    * display = "Rectal fistula"
    * definition = "A disorder characterized by an abnormal communication between the rectum and another organ or anatomic site."
  * concept[+] 
    * code = #"Rectal hemorrhage"
    * display = "Rectal hemorrhage"
    * definition = "A disorder characterized by bleeding from the rectal wall and discharged from the anus."
  * concept[+] 
    * code = #"Rectal mucositis"
    * display = "Rectal mucositis"
    * definition = "A disorder characterized by inflammation of the mucous membrane of the rectum."
  * concept[+] 
    * code = #"Rectal necrosis"
    * display = "Rectal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the rectal wall."
  * concept[+] 
    * code = #"Rectal obstruction"
    * display = "Rectal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the rectum."
  * concept[+] 
    * code = #"Rectal pain"
    * display = "Rectal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the rectal region."
  * concept[+] 
    * code = #"Rectal perforation"
    * display = "Rectal perforation"
    * definition = "A disorder characterized by a rupture in the rectal wall."
  * concept[+] 
    * code = #"Rectal stenosis"
    * display = "Rectal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the rectum."
  * concept[+] 
    * code = #"Rectal ulcer"
    * display = "Rectal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the rectum."
  * concept[+] 
    * code = #"Recurrent laryngeal nerve palsy"
    * display = "Recurrent laryngeal nerve palsy"
    * definition = "A disorder characterized by paralysis of the recurrent laryngeal nerve."
  * concept[+] 
    * code = #"Renal and urinary disorders - Other, Specify"
    * display = "Renal and urinary disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Renal calculi"
    * display = "Renal calculi"
    * definition = "A disorder characterized by the formation of crystals in the pelvis of the kidney."
  * concept[+] 
    * code = #"Renal colic"
    * display = "Renal colic"
    * definition = "A disorder characterized by paroxysmal and severe flank marked discomfort radiating to the inguinal area. Often, the cause is the passage of kidney stones."
  * concept[+] 
    * code = #"Renal hemorrhage"
    * display = "Renal hemorrhage"
    * definition = "A disorder characterized by bleeding from the kidney."
  * concept[+] 
    * code = #"Reproductive system and breast disorders - Other, Specify"
    * display = "Reproductive system and breast disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Respiratory failure"
    * display = "Respiratory failure"
    * definition = "A disorder characterized by impaired gas exchange by the respiratory system resulting in hypoxemia and a decrease in oxygenation of the tissues that may be associated with an increase in arterial levels of carbon dioxide."
  * concept[+] 
    * code = #"Respiratory, thoracic and mediastinal disorders - Other, Specify"
    * display = "Respiratory, thoracic and mediastinal disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Restlessness
    * display = "Restlessness"
    * definition = "A disorder characterized by an inability to rest, relax or be still."
  * concept[+] 
    * code = #"Restrictive cardiomyopathy"
    * display = "Restrictive cardiomyopathy"
    * definition = "A disorder characterized by an inability of the ventricles to fill with blood because the myocardium (heart muscle) stiffens and loses its flexibility."
  * concept[+] 
    * code = #"Retinal detachment"
    * display = "Retinal detachment"
    * definition = "A disorder characterized by the separation of the inner retina layers from the underlying pigment epithelium."
  * concept[+] 
    * code = #"Retinal tear"
    * display = "Retinal tear"
    * definition = "A disorder characterized by a small laceration of the retina, this occurs when the vitreous separates from the retina. Symptoms include flashes and floaters."
  * concept[+] 
    * code = #"Retinal vascular disorder"
    * display = "Retinal vascular disorder"
    * definition = "A disorder characterized by pathological retinal blood vessels that adversely affects vision."
  * concept[+] 
    * code = #"Retinoic acid syndrome"
    * display = "Retinoic acid syndrome"
    * definition = "A disorder characterized by weight gain, dyspnea, pleural and pericardial effusions, leukocytosis and/or renal failure originally described in patients treated with all-trans retinoic acid."
  * concept[+] 
    * code = #Retinopathy
    * display = "Retinopathy"
    * definition = "A disorder involving the retina."
  * concept[+] 
    * code = #"Retroperitoneal hemorrhage"
    * display = "Retroperitoneal hemorrhage"
    * definition = "A disorder characterized by bleeding from the retroperitoneal area."
  * concept[+] 
    * code = #"Reversible posterior leukoencephalopathy syndrome"
    * display = "Reversible posterior leukoencephalopathy syndrome"
    * definition = "A disorder characterized by headaches, mental status changes, visual disturbances, and seizures associated with imaging findings of posterior leukoencephalopathy. It has been observed in association with hypertensive encephalopathy, eclampsia, and immunosuppressive and cytotoxic drug treatment. It is an acute or subacute reversible condition."
  * concept[+] 
    * code = #"Rhinitis infective"
    * display = "Rhinitis infective"
    * definition = "A disorder characterized by an infectious process involving the nasal mucosal."
  * concept[+] 
    * code = #"Right ventricular dysfunction"
    * display = "Right ventricular dysfunction"
    * definition = "A disorder characterized by impairment of right ventricular function associated with low ejection fraction and a decrease in motility of the right ventricular wall."
  * concept[+] 
    * code = #"Salivary duct inflammation"
    * display = "Salivary duct inflammation"
    * definition = "A disorder characterized by inflammation of the salivary duct."
  * concept[+] 
    * code = #"Salivary gland fistula"
    * display = "Salivary gland fistula"
    * definition = "A disorder characterized by an abnormal communication between a salivary gland and another organ or anatomic site."
  * concept[+] 
    * code = #"Salivary gland infection"
    * display = "Salivary gland infection"
    * definition = "A disorder characterized by an infectious process involving the salivary gland."
  * concept[+] 
    * code = #"Scalp pain"
    * display = "Scalp pain"
    * definition = "A disorder characterized by marked discomfort sensation in the skin covering the top and the back of the head."
  * concept[+] 
    * code = #"Scleral disorder"
    * display = "Scleral disorder"
    * definition = "A disorder characterized by involvement of the sclera of the eye."
  * concept[+] 
    * code = #Scoliosis
    * display = "Scoliosis"
    * definition = "A disorder characterized by a malformed, lateral curvature of the spine."
  * concept[+] 
    * code = #"Scrotal infection"
    * display = "Scrotal infection"
    * definition = "A disorder characterized by an infectious process involving the scrotum."
  * concept[+] 
    * code = #"Scrotal pain"
    * display = "Scrotal pain"
    * definition = "A disorder characterized by marked discomfort sensation in the scrotal area."
  * concept[+] 
    * code = #Seizure
    * display = "Seizure"
    * definition = "A disorder characterized by a sudden, involuntary skeletal muscular contractions of cerebral or brain stem origin."
  * concept[+] 
    * code = #Sepsis
    * display = "Sepsis"
    * definition = "A disorder characterized by the presence of pathogenic microorganisms in the blood stream that cause a rapidly progressing systemic reaction that may lead to shock."
  * concept[+] 
    * code = #Seroma
    * display = "Seroma"
    * definition = "A finding of tumor-like collection of serum in the tissues."
  * concept[+] 
    * code = #"Serum amylase increased"
    * display = "Serum amylase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the levels of amylase in a serum specimen."
  * concept[+] 
    * code = #"Serum sickness"
    * display = "Serum sickness"
    * definition = "A disorder characterized by a delayed-type hypersensitivity reaction to foreign proteins derived from an animal serum. It occurs approximately six to twenty-one days following the administration of the foreign antigen. Symptoms include fever, arthralgias, myalgias, skin eruptions, lymphadenopathy, chest marked discomfort and dyspnea."
  * concept[+] 
    * code = #"Sick sinus syndrome"
    * display = "Sick sinus syndrome"
    * definition = "A disorder characterized by a dysrhythmia with alternating periods of bradycardia and atrial tachycardia accompanied by syncope, fatigue and dizziness."
  * concept[+] 
    * code = #"Sinus bradycardia"
    * display = "Sinus bradycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate less than 60 beats per minute that originates in the sinus node."
  * concept[+] 
    * code = #"Sinus disorder"
    * display = "Sinus disorder"
    * definition = "A disorder characterized by involvement of the paranasal sinuses."
  * concept[+] 
    * code = #"Sinus pain"
    * display = "Sinus pain"
    * definition = "A disorder characterized by marked discomfort in the face, between the eyes, or upper teeth originating from the sinuses."
  * concept[+] 
    * code = #"Sinus tachycardia"
    * display = "Sinus tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate greater than 100 beats per minute that originates in the sinus node."
  * concept[+] 
    * code = #Sinusitis
    * display = "Sinusitis"
    * definition = "A disorder characterized by an infectious process involving the mucous membranes of the paranasal sinuses."
  * concept[+] 
    * code = #"Skin and subcutaneous tissue disorders - Other, Specify"
    * display = "Skin and subcutaneous tissue disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Skin atrophy"
    * display = "Skin atrophy"
    * definition = "A disorder characterized by the degeneration and thinning of the epidermis and dermis."
  * concept[+] 
    * code = #"Skin hyperpigmentation"
    * display = "Skin hyperpigmentation"
    * definition = "A disorder characterized by darkening of the skin due to excessive melanin deposition."
  * concept[+] 
    * code = #"Skin hypopigmentation"
    * display = "Skin hypopigmentation"
    * definition = "A disorder characterized by loss of skin pigment."
  * concept[+] 
    * code = #"Skin induration"
    * display = "Skin induration"
    * definition = "A disorder characterized by an area of hardness in the skin."
  * concept[+] 
    * code = #"Skin infection"
    * display = "Skin infection"
    * definition = "A disorder characterized by an infectious process involving the skin."
  * concept[+] 
    * code = #"Skin ulceration"
    * display = "Skin ulceration"
    * definition = "A disorder characterized by circumscribed, inflammatory and necrotic erosive lesion on the skin."
  * concept[+] 
    * code = #"Sleep apnea"
    * display = "Sleep apnea"
    * definition = "A disorder characterized by cessation of breathing for short periods during sleep."
  * concept[+] 
    * code = #"Small intestinal anastomotic leak"
    * display = "Small intestinal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of an anastomosis (surgical connection of two separate anatomic structures) in the small bowel."
  * concept[+] 
    * code = #"Small intestinal mucositis"
    * display = "Small intestinal mucositis"
    * definition = "A disorder characterized by inflammation of the mucous membrane of the small intestine."
  * concept[+] 
    * code = #"Small intestinal obstruction"
    * display = "Small intestinal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents."
  * concept[+] 
    * code = #"Small intestinal perforation"
    * display = "Small intestinal perforation"
    * definition = "A disorder characterized by a rupture in the small intestine wall."
  * concept[+] 
    * code = #"Small intestinal stenosis"
    * display = "Small intestinal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the small intestine."
  * concept[+] 
    * code = #"Small intestine infection"
    * display = "Small intestine infection"
    * definition = "A disorder characterized by an infectious process involving the small intestine."
  * concept[+] 
    * code = #"Small intestine ulcer"
    * display = "Small intestine ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the small intestine."
  * concept[+] 
    * code = #Sneezing
    * display = "Sneezing"
    * definition = "A disorder characterized by the involuntary expulsion of air from the nose."
  * concept[+] 
    * code = #"Social circumstances - Other, Specify"
    * display = "Social circumstances - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #"Soft tissue infection"
    * display = "Soft tissue infection"
    * definition = "A disorder characterized by an infectious process involving soft tissues."
  * concept[+] 
    * code = #"Soft tissue necrosis lower limb"
    * display = "Soft tissue necrosis lower limb"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the lower extremity."
  * concept[+] 
    * code = #"Soft tissue necrosis upper limb"
    * display = "Soft tissue necrosis upper limb"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the upper extremity."
  * concept[+] 
    * code = #Somnolence
    * display = "Somnolence"
    * definition = "A disorder characterized by characterized by excessive sleepiness and drowsiness."
  * concept[+] 
    * code = #"Sore throat"
    * display = "Sore throat"
    * definition = "A disorder characterized by of marked discomfort in the throat"
  * concept[+] 
    * code = #Spasticity
    * display = "Spasticity"
    * definition = "A disorder characterized by increased involuntary muscle tone that affects the regions interfering with voluntary movement. It results in gait, movement, and speech disturbances."
  * concept[+] 
    * code = #"Spermatic cord anastomotic leak"
    * display = "Spermatic cord anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a spermatic cord anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Spermatic cord hemorrhage"
    * display = "Spermatic cord hemorrhage"
    * definition = "A disorder characterized by bleeding from the spermatic cord."
  * concept[+] 
    * code = #"Spermatic cord obstruction"
    * display = "Spermatic cord obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents of the spermatic cord."
  * concept[+] 
    * code = #"Spinal fracture"
    * display = "Spinal fracture"
    * definition = "A finding of traumatic injury to the spine in which the continuity of a vertebral bone is broken."
  * concept[+] 
    * code = #"Spleen disorder"
    * display = "Spleen disorder"
    * definition = "A disorder of the spleen."
  * concept[+] 
    * code = #"Splenic infection"
    * display = "Splenic infection"
    * definition = "A disorder characterized by an infectious process involving the spleen."
  * concept[+] 
    * code = #"Stenosis of gastrointestinal stoma"
    * display = "Stenosis of gastrointestinal stoma"
    * definition = "A finding of narrowing of the gastrointestinal stoma (surgically created opening on the surface of the body)."
  * concept[+] 
    * code = #"Stevens-Johnson syndrome"
    * display = "Stevens-Johnson syndrome"
    * definition = "A disorder characterized by less than 10% total body skin area separation of dermis. The syndrome is thought to be a hypersensitivity complex affecting the skin and the mucous membranes."
  * concept[+] 
    * code = #"Stoma site infection"
    * display = "Stoma site infection"
    * definition = "A disorder characterized by an infectious process involving a stoma (surgically created opening on the surface of the body)."
  * concept[+] 
    * code = #"Stomach pain"
    * display = "Stomach pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the stomach."
  * concept[+] 
    * code = #"Stomal ulcer"
    * display = "Stomal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the jejunal mucosal surface close to the anastomosis site following a gastroenterostomy procedure."
  * concept[+] 
    * code = #Stridor
    * display = "Stridor"
    * definition = "A disorder characterized by a high pitched breathing sound due to laryngeal or upper airway obstruction."
  * concept[+] 
    * code = #Stroke
    * display = "Stroke"
    * definition = "A disorder characterized by a sudden loss of sensory function due to an intracranial vascular event."
  * concept[+] 
    * code = #"Sudden death NOS"
    * display = "Sudden death NOS"
    * definition = "An unexpected cessation of life that cannot be attributed to a CTCAE term associated with Grade 5."
  * concept[+] 
    * code = #"Suicidal ideation"
    * display = "Suicidal ideation"
    * definition = "A disorder characterized by thoughts of taking one's own life."
  * concept[+] 
    * code = #"Suicide attempt"
    * display = "Suicide attempt"
    * definition = "A disorder characterized by self-inflicted harm in an attempt to end one's own life."
  * concept[+] 
    * code = #"Superficial soft tissue fibrosis"
    * display = "Superficial soft tissue fibrosis"
    * definition = "A disorder characterized by fibrotic degeneration of the superficial soft tissues."
  * concept[+] 
    * code = #"Superficial thrombophlebitis"
    * display = "Superficial thrombophlebitis"
    * definition = "A disorder characterized by a blood clot and inflammation involving a superficial vein of the extremities."
  * concept[+] 
    * code = #"Superior vena cava syndrome"
    * display = "Superior vena cava syndrome"
    * definition = "A disorder characterized by obstruction of the blood flow in the superior vena cava. Signs and symptoms include swelling and cyanosis of the face, neck, and upper arms, cough, orthopnea and headache."
  * concept[+] 
    * code = #"Supraventricular tachycardia"
    * display = "Supraventricular tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate greater than 100 beats per minute that originates above the ventricles."
  * concept[+] 
    * code = #"Surgical and medical procedures - Other, Specify"
    * display = "Surgical and medical procedures - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Syncope
    * display = "Syncope"
    * definition = "A disorder characterized by spontaneous loss of consciousness caused by insufficient blood supply to the brain."
  * concept[+] 
    * code = #Telangiectasia
    * display = "Telangiectasia"
    * definition = "A disorder characterized by local dilatation of small vessels resulting in red discoloration of the skin or mucous membranes."
  * concept[+] 
    * code = #"Testicular disorder"
    * display = "Testicular disorder"
    * definition = "A disorder characterized by involvement of the testis."
  * concept[+] 
    * code = #"Testicular hemorrhage"
    * display = "Testicular hemorrhage"
    * definition = "A disorder characterized by bleeding from the testis."
  * concept[+] 
    * code = #"Testicular pain"
    * display = "Testicular pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the testis."
  * concept[+] 
    * code = #"Thromboembolic event"
    * display = "Thromboembolic event"
    * definition = "A disorder characterized by occlusion of a vessel by a thrombus that has migrated from a distal site via the blood stream."
  * concept[+] 
    * code = #"Thrombotic thrombocytopenic purpura"
    * display = "Thrombotic thrombocytopenic purpura"
    * definition = "A disorder characterized by the presence of microangiopathic hemolytic anemia, thrombocytopenic purpura, fever, renal abnormalities and neurological abnormalities such as seizures, hemiplegia, and visual disturbances. It is an acute or subacute condition."
  * concept[+] 
    * code = #Tinnitus
    * display = "Tinnitus"
    * definition = "A disorder characterized by noise in the ears, such as ringing, buzzing, roaring or clicking."
  * concept[+] 
    * code = #"Tooth development disorder"
    * display = "Tooth development disorder"
    * definition = "A disorder characterized by a pathological process of the teeth occurring during tooth development."
  * concept[+] 
    * code = #"Tooth discoloration"
    * display = "Tooth discoloration"
    * definition = "A disorder characterized by a change in tooth hue or tint."
  * concept[+] 
    * code = #"Tooth infection"
    * display = "Tooth infection"
    * definition = "A disorder characterized by an infectious process involving a tooth."
  * concept[+] 
    * code = #Toothache
    * display = "Toothache"
    * definition = "A disorder characterized by a sensation of marked discomfort in the tooth."
  * concept[+] 
    * code = #"Toxic epidermal necrolysis"
    * display = "Toxic epidermal necrolysis"
    * definition = "A disorder characterized by greater than 30% total body skin area separation of dermis. The syndrome is thought to be a hypersensitivity complex affecting the skin and the mucous membranes."
  * concept[+] 
    * code = #"Tracheal fistula"
    * display = "Tracheal fistula"
    * definition = "A disorder characterized by an abnormal communication between the trachea and another organ or anatomic site."
  * concept[+] 
    * code = #"Tracheal hemorrhage"
    * display = "Tracheal hemorrhage"
    * definition = "A finding of bleeding from the trachea."
  * concept[+] 
    * code = #"Tracheal mucositis"
    * display = "Tracheal mucositis"
    * definition = "A disorder characterized by an inflammation involving the mucous membrane of the trachea."
  * concept[+] 
    * code = #"Tracheal obstruction"
    * display = "Tracheal obstruction"
    * definition = "A finding of blockage of the lumen of the trachea."
  * concept[+] 
    * code = #"Tracheal stenosis"
    * display = "Tracheal stenosis"
    * definition = "A disorder characterized by a narrowing of the trachea."
  * concept[+] 
    * code = #Tracheitis
    * display = "Tracheitis"
    * definition = "A disorder characterized by an infectious process involving the trachea."
  * concept[+] 
    * code = #"Tracheostomy site bleeding"
    * display = "Tracheostomy site bleeding"
    * definition = "A finding of blood leakage from the tracheostomy site."
  * concept[+] 
    * code = #"Transient ischemic attacks"
    * display = "Transient ischemic attacks"
    * definition = "A disorder characterized by a brief attack (less than 24 hours) of cerebral dysfunction of vascular origin, with no persistent neurological deficit."
  * concept[+] 
    * code = #"Treatment related secondary malignancy"
    * display = "Treatment related secondary malignancy"
    * definition = "A disorder characterized by development of a malignancy most probably as a result of treatment for a previously existing malignancy."
  * concept[+] 
    * code = #Tremor
    * display = "Tremor"
    * definition = "A disorder characterized by the uncontrolled shaking movement of the whole body or individual parts."
  * concept[+] 
    * code = #"Tricuspid valve disease"
    * display = "Tricuspid valve disease"
    * definition = "A disorder characterized by a defect in tricuspid valve function or structure."
  * concept[+] 
    * code = #"Trigeminal nerve disorder"
    * display = "Trigeminal nerve disorder"
    * definition = "A disorder characterized by involvement of the trigeminal nerve (fifth cranial nerve)."
  * concept[+] 
    * code = #Trismus
    * display = "Trismus"
    * definition = "A disorder characterized by lack of ability to open the mouth fully due to a decrease in the range of motion of the muscles of mastication."
  * concept[+] 
    * code = #"Tumor lysis syndrome"
    * display = "Tumor lysis syndrome"
    * definition = "A disorder characterized by metabolic abnormalities that result from a spontaneous or therapy-related cytolysis of tumor cells."
  * concept[+] 
    * code = #"Tumor pain"
    * display = "Tumor pain"
    * definition = "A disorder characterized by marked discomfort from a neoplasm that may be pressing on a nerve, blocking blood vessels, inflamed or fractured from metastasis."
  * concept[+] 
    * code = #Typhlitis
    * display = "Typhlitis"
    * definition = "A disorder characterized by inflammation of the cecum."
  * concept[+] 
    * code = #"Unequal limb length"
    * display = "Unequal limb length"
    * definition = "A disorder characterized by of a discrepancy between the lengths of the lower or upper extremities."
  * concept[+] 
    * code = #"Unintended pregnancy"
    * display = "Unintended pregnancy"
    * definition = "A disorder characterized by an unexpected pregnancy at the time of conception."
  * concept[+] 
    * code = #"Upper gastrointestinal hemorrhage"
    * display = "Upper gastrointestinal hemorrhage"
    * definition = "A disorder characterized by bleeding from the upper gastrointestinal tract (oral cavity, pharynx, esophagus, and stomach)."
  * concept[+] 
    * code = #"Upper respiratory infection"
    * display = "Upper respiratory infection"
    * definition = "A disorder characterized by an infectious process involving the upper respiratory tract (nose, paranasal sinuses, pharynx, larynx, or trachea)."
  * concept[+] 
    * code = #"Ureteric anastomotic leak"
    * display = "Ureteric anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a ureteral anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Urethral anastomotic leak"
    * display = "Urethral anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a urethral anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Urethral infection"
    * display = "Urethral infection"
    * definition = "A disorder characterized by an infectious process involving the urethra."
  * concept[+] 
    * code = #"Urinary fistula"
    * display = "Urinary fistula"
    * definition = "A disorder characterized by an abnormal communication between any part of the urinary system and another organ or anatomic site."
  * concept[+] 
    * code = #"Urinary frequency"
    * display = "Urinary frequency"
    * definition = "A disorder characterized by urination at short intervals."
  * concept[+] 
    * code = #"Urinary incontinence"
    * display = "Urinary incontinence"
    * definition = "A disorder characterized by inability to control the flow of urine from the bladder."
  * concept[+] 
    * code = #"Urinary retention"
    * display = "Urinary retention"
    * definition = "A disorder characterized by accumulation of urine within the bladder because of the inability to urinate."
  * concept[+] 
    * code = #"Urinary tract infection"
    * display = "Urinary tract infection"
    * definition = "A disorder characterized by an infectious process involving the urinary tract, most commonly the bladder and the urethra."
  * concept[+] 
    * code = #"Urinary tract obstruction"
    * display = "Urinary tract obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of contents of the urinary tract."
  * concept[+] 
    * code = #"Urinary tract pain"
    * display = "Urinary tract pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the urinary tract."
  * concept[+] 
    * code = #"Urinary urgency"
    * display = "Urinary urgency"
    * definition = "A disorder characterized by a sudden compelling urge to urinate."
  * concept[+] 
    * code = #"Urine discoloration"
    * display = "Urine discoloration"
    * definition = "A disorder characterized by a change in the color of the urine."
  * concept[+] 
    * code = #"Urine output decreased"
    * display = "Urine output decreased"
    * definition = "A finding based on test results that indicate urine production is less relative to previous output."
  * concept[+] 
    * code = #"Urostomy leak"
    * display = "Urostomy leak"
    * definition = "A finding of leakage of contents from a urostomy."
  * concept[+] 
    * code = #"Urostomy obstruction"
    * display = "Urostomy obstruction"
    * definition = "A finding of blockage of the urostomy."
  * concept[+] 
    * code = #"Urostomy site bleeding"
    * display = "Urostomy site bleeding"
    * definition = "A finding of bleeding from the urostomy site."
  * concept[+] 
    * code = #"Urostomy stenosis"
    * display = "Urostomy stenosis"
    * definition = "A finding of narrowing of the opening of a urostomy."
  * concept[+] 
    * code = #Urticaria
    * display = "Urticaria"
    * definition = "A disorder characterized by an itchy skin eruption characterized by wheals with pale interiors and well-defined red margins."
  * concept[+] 
    * code = #"Uterine anastomotic leak"
    * display = "Uterine anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a uterine anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Uterine fistula"
    * display = "Uterine fistula"
    * definition = "A disorder characterized by an abnormal communication between the uterus and another organ or anatomic site."
  * concept[+] 
    * code = #"Uterine hemorrhage"
    * display = "Uterine hemorrhage"
    * definition = "A disorder characterized by bleeding from the uterus."
  * concept[+] 
    * code = #"Uterine infection"
    * display = "Uterine infection"
    * definition = "A disorder characterized by an infectious process involving the endometrium. It may extend to the myometrium and parametrial tissues."
  * concept[+] 
    * code = #"Uterine obstruction"
    * display = "Uterine obstruction"
    * definition = "A disorder characterized by blockage of the uterine outlet."
  * concept[+] 
    * code = #"Uterine pain"
    * display = "Uterine pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the uterus."
  * concept[+] 
    * code = #"Uterine perforation"
    * display = "Uterine perforation"
    * definition = "A disorder characterized by a rupture in the uterine wall."
  * concept[+] 
    * code = #Uveitis
    * display = "Uveitis"
    * definition = "A disorder characterized by inflammation to the uvea of the eye."
  * concept[+] 
    * code = #"Vaginal anastomotic leak"
    * display = "Vaginal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a vaginal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Vaginal discharge"
    * display = "Vaginal discharge"
    * definition = "A disorder characterized by vaginal secretions. Mucus produced by the cervical glands is discharged from the vagina naturally, especially during the childbearing years."
  * concept[+] 
    * code = #"Vaginal dryness"
    * display = "Vaginal dryness"
    * definition = "A disorder characterized by an uncomfortable feeling of itching and burning in the vagina."
  * concept[+] 
    * code = #"Vaginal fistula"
    * display = "Vaginal fistula"
    * definition = "A disorder characterized by an abnormal communication between the vagina and another organ or anatomic site."
  * concept[+] 
    * code = #"Vaginal hemorrhage"
    * display = "Vaginal hemorrhage"
    * definition = "A disorder characterized by bleeding from the vagina."
  * concept[+] 
    * code = #"Vaginal infection"
    * display = "Vaginal infection"
    * definition = "A disorder characterized by an infectious process involving the vagina."
  * concept[+] 
    * code = #"Vaginal inflammation"
    * display = "Vaginal inflammation"
    * definition = "A disorder characterized by inflammation involving the vagina. Symptoms may include redness, edema, marked discomfort and an increase in vaginal discharge."
  * concept[+] 
    * code = #"Vaginal obstruction"
    * display = "Vaginal obstruction"
    * definition = "A disorder characterized by blockage of vaginal canal."
  * concept[+] 
    * code = #"Vaginal pain"
    * display = "Vaginal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the vagina."
  * concept[+] 
    * code = #"Vaginal perforation"
    * display = "Vaginal perforation"
    * definition = "A disorder characterized by a rupture in the vaginal wall."
  * concept[+] 
    * code = #"Vaginal stricture"
    * display = "Vaginal stricture"
    * definition = "A disorder characterized by a narrowing of the vaginal canal."
  * concept[+] 
    * code = #Vaginismus
    * display = "Vaginismus"
    * definition = "A disorder characterized by involuntary spasms of the pelvic floor muscles, resulting in pathologic tightness of the vaginal wall during penetration such as during sexual intercourse."
  * concept[+] 
    * code = #"Vagus nerve disorder"
    * display = "Vagus nerve disorder"
    * definition = "A disorder characterized by involvement of the vagus nerve (tenth cranial nerve)."
  * concept[+] 
    * code = #"Vas deferens anastomotic leak"
    * display = "Vas deferens anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a vas deferens anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #"Vascular access complication"
    * display = "Vascular access complication"
    * definition = "A finding of a previously undocumented problem related to the vascular access site."
  * concept[+] 
    * code = #"Vascular disorders - Other, Specify"
    * display = "Vascular disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Vasculitis
    * display = "Vasculitis"
    * definition = "A disorder characterized by inflammation involving the wall of a vessel."
  * concept[+] 
    * code = #"Vasovagal reaction"
    * display = "Vasovagal reaction"
    * definition = "A disorder characterized by a sudden drop of the blood pressure, bradycardia, and peripheral vasodilation that may lead to loss of consciousness. It results from an increase in the stimulation of the vagus nerve."
  * concept[+] 
    * code = #"Venous injury"
    * display = "Venous injury"
    * definition = "A finding of damage to a vein."
  * concept[+] 
    * code = #"Ventricular arrhythmia"
    * display = "Ventricular arrhythmia"
    * definition = "A disorder characterized by a dysrhythmia that originates in the ventricles."
  * concept[+] 
    * code = #"Ventricular fibrillation"
    * display = "Ventricular fibrillation"
    * definition = "A disorder characterized by a dysrhythmia without discernible QRS complexes due to rapid repetitive excitation of myocardial fibers without coordinated contraction of the ventricles."
  * concept[+] 
    * code = #"Ventricular tachycardia"
    * display = "Ventricular tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate greater than 100 beats per minute that originates distal to the bundle of His."
  * concept[+] 
    * code = #Vertigo
    * display = "Vertigo"
    * definition = "A disorder characterized by a sensation as if the external world were revolving around the patient (objective vertigo) or as if he himself were revolving in space (subjective vertigo)."
  * concept[+] 
    * code = #"Vestibular disorder"
    * display = "Vestibular disorder"
    * definition = "A disorder characterized by dizziness, imbalance, nausea, and vision problems."
  * concept[+] 
    * code = #Virilization
    * display = "Virilization"
    * definition = "A disorder characterized by inappropriate masculinization occurring in a female or prepubertal male."
  * concept[+] 
    * code = #"Visceral arterial ischemia"
    * display = "Visceral arterial ischemia"
    * definition = "A disorder characterized by a decrease in blood supply due to narrowing or blockage of a visceral (mesenteric) artery."
  * concept[+] 
    * code = #"Vital capacity abnormal"
    * display = "Vital capacity abnormal"
    * definition = "A finding based on pulmonary function test results that indicate an abnormal vital capacity (amount of exhaled after a maximum inhalation) when compared to the predicted value."
  * concept[+] 
    * code = #"Vitreous hemorrhage"
    * display = "Vitreous hemorrhage"
    * definition = "A disorder characterized by blood extravasation into the vitreous humor."
  * concept[+] 
    * code = #"Voice alteration"
    * display = "Voice alteration"
    * definition = "A disorder characterized by a change in the sound and/or speed of the voice."
  * concept[+] 
    * code = #Vomiting
    * display = "Vomiting"
    * definition = "A disorder characterized by the reflexive act of ejecting the contents of the stomach through the mouth."
  * concept[+] 
    * code = #"Vulval infection"
    * display = "Vulval infection"
    * definition = "A disorder characterized by an infectious process involving the vulva."
  * concept[+] 
    * code = #"Watering eyes"
    * display = "Watering eyes"
    * definition = "A disorder of excessive tearing in the eyes; it can be caused by overproduction of tears or impaired drainage of the tear duct."
  * concept[+] 
    * code = #"Weight gain"
    * display = "Weight gain"
    * definition = "A finding characterized by an increase in overall body weight; for pediatrics, greater than the baseline growth curve."
  * concept[+] 
    * code = #"Weight loss"
    * display = "Weight loss"
    * definition = "A finding characterized by a decrease in overall body weight; for pediatrics, less than the baseline growth curve."
  * concept[+] 
    * code = #Wheezing
    * display = "Wheezing"
    * definition = "A disorder characterized by a high-pitched, whistling sound during breathing. It results from the narrowing or obstruction of the respiratory airways."
  * concept[+] 
    * code = #"White blood cell decreased"
    * display = "White blood cell decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in number of white blood cells in a blood specimen."
  * concept[+] 
    * code = #"Wolff-Parkinson-White syndrome"
    * display = "Wolff-Parkinson-White syndrome"
    * definition = "A disorder characterized by the presence of an accessory conductive pathway between the atria and the ventricles that causes premature ventricular activation."
  * concept[+] 
    * code = #"Wound complication"
    * display = "Wound complication"
    * definition = "A finding of development of a new problem at the site of an existing wound."
  * concept[+] 
    * code = #"Wound dehiscence"
    * display = "Wound dehiscence"
    * definition = "A finding of separation of the approximated margins of a surgical wound."
  * concept[+] 
    * code = #"Wound infection"
    * display = "Wound infection"
    * definition = "A disorder characterized by an infectious process involving the wound."
  * concept[+] 
    * code = #"Wrist fracture"
    * display = "Wrist fracture"
    * definition = "A finding of traumatic injury to the wrist joint in which the continuity of a wrist bone is broken."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e14927-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3556214v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e14927-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e54652-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557008v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #1
    * display = "Mild Adverse Event"
    * definition = "An adverse event that is asymptomatic; or involves mild or minor symptoms; or is of marginal clinical relevance; or consists of clinical or diagnostic observations alone; or for which intervention is not indicated; or for which only non-prescription intervention is indicated."
  * concept[+] 
    * code = #2
    * display = "Moderate Adverse Event"
    * definition = "An adverse event for which only minimal, local, or noninvasive intervention (e.g. packing, cautery) is indicated; or that limits instrumental activities of daily living (ADLs, e.g., shopping, laundry, transportation, or ability to conduct finances)."
  * concept[+] 
    * code = #3
    * display = "Severe Adverse Event"
    * definition = "An adverse event that is medically significant but not life-threatening; or for which inpatient care or prolongation of hospitalization are indicated; or that is an important medical event that does not result in hospitalization, but may jeopardize the patient or may require intervention either to prevent hospitalization, to prevent the AE from becoming life-threatening or causing death; or that is disabling; or that results in persistent or significant disability, incapcity, or limitation of self care activities of daily living (ADLs, e.g., getting in and our of bed, dressing, eating, getting around inside, bathing, or using the toilet)."
  * concept[+] 
    * code = #4
    * display = "Life Threatening Adverse Event"
    * definition = "An adverse event that has life-threatening consequences; for which urgent intervention is indicated; that puts the patient at risk of death at the time of the event if immediate intervention is not undertaken; or that causes blindness or deafness."
  * concept[+] 
    * code = #5
    * display = "Death Related to Adverse Event"
    * definition = "The termination of life associated with an adverse event."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e54652-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557008v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e54652-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e55041-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557021v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e55041-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557021v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e55041-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e55265-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557032v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Biological Therapy"
    * display = "Biological Therapy"
    * definition = "Biological therapy is a form of treatment that implies the administration of substances which produce a biological reaction in the organism enhancing or restoring the host immune response, modifying the behavior of cancer cells, blocking the pathways of cell neoplastic transformation and tumor ability to metastasize, or facilitating the repairment of cells damaged by aggressive forms of cancer treatment. It includes the use of sera, antitoxins, vaccines, genes, cells, tissues, and organs"
  * concept[+] 
    * code = #Chemotherapy
    * display = "CHEMOTHERAPY"
    * definition = "CHEMOTHERAPY"
  * concept[+] 
    * code = #"Combined modality"
    * display = "combined modality"
    * definition = "combined modality"
  * concept[+] 
    * code = #"Concomitant medication"
    * display = "Concomitant Agent"
    * definition = "A pharmaceutical agent other than agent(s) tested in a given protocol that is administered to or used by a subject either prior to or during the study. Supportive care and essential ancillary medications required by a treatment regimen should be clearly identified. A protocol complete instructions including appropriate indication, dosage, administration route, schedule, restrictions to use, and any other relevant data should be explicitly stated. Concept also refers to substance(s) used prior or during the study that are not specified by the protocol."
  * concept[+] 
    * code = #Device
    * display = "Medical_Device"
    * definition = "Medical device - any machinery designed to aid diagnostic and medical therapies. Medical device has to be designed with rigorous safety standards. There are several basic types of medical devices: life support equipment used to maintain a patient's body functions; therapeutic equipment; monitors and detectors to measure the indexes of a patient's state; imagine machines and laboratory equipment used with diagnostic and status monitoring purposes. In insurance parlance, the term is usually synonymous with assistive device, although it may include medical supplies."
  * concept[+] 
    * code = #Disease
    * display = "disease"
    * definition = "disease"
  * concept[+] 
    * code = #"Endocrine Therapy"
    * display = "Endocrine Therapy"
    * definition = "Various treatment modalities that produce the desired therapeutic effect by means of change of hormone/hormones level. The treatment may include administration of hormones or hormone analogs to the patient, or decreasing the level of hormones in the body by using hormone antagonists, or hormone ablation therapy. The concept covers but not limited to: intermittent or permanent hormone suppression or ablation in treatment of hormone-dependent tumors, hormone replacement therapy of any kind, hormonal component of gender reassignment therapy, hormonal contraception, surgical and radiation castration."
  * concept[+] 
    * code = #Immunotherapy
    * display = "Immunotherapy"
    * definition = "(IM-yoo-no-THER-a-pee) Treatment to stimulate or restore the ability of the immune system to fight infections and other diseases. Also used to lessen side effects that may be caused by some cancer treatments."
  * concept[+] 
    * code = #"Investigational agent"
    * display = "Investigational Agent"
    * definition = "In the process of being studied; experimental. (NCI): An active power or cause (as principle, substance, physical or biological factor, etc.) that produces a specific effect. (NCI)"
  * concept[+] 
    * code = #Other
    * display = "Other"
    * definition = "Not otherwise specified."
  * concept[+] 
    * code = #"Radiation therapy"
    * display = "Radiation Therapy"
    * definition = "use PHOTOTHERAPY, LASER THERAPY, or ULTRAVIOLET THERAPY for therapeutic radiation with visible, laser, or ultraviolet light, respectively."
  * concept[+] 
    * code = #Surgery
    * display = "Surgery"
    * definition = "A specialty in which manual or operative procedures are used in the treatment of disease, injuries, or deformities."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e55265-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557032v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e55265-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e56008-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557869v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #"Blood and lymphatic system disorders"
    * display = "Hematopoietic and Lymphoid System Disorder"
    * definition = "Any deviation from the normal structure or function of the blood or lymphatic system that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Cardiac disorders"
    * display = "Cardiac disorders"
    * definition = "Any deviation from the normal structure or function of the cardiac system that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Congenital, familial and genetic disorders"
    * display = "Congenital, Familial and Genetic Disorder Class"
    * definition = "A class of disorders that encompasses conditions resulting from a congenital, familial hereditary trait or genetic abnormality as is manifested by a characterstic set of symptoms and signs."
  * concept[+] 
    * code = #"Ear and labyrinth disorders"
    * display = "Ear and Labyrinth Disorder Class"
    * definition = "Any deviation from the normal structure or function of the ear or labyrinth that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Endocrine disorders"
    * display = "Endocrine Disorder"
    * definition = "Any deviation from the normal structure or function of the endocrine system that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Eye disorders"
    * display = "Eye Disorder"
    * definition = "Any deviation from the normal structure or function of the eye that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Gastrointestinal disorders"
    * display = "Gastrointestinal Disorder"
    * definition = "Diseases of the digestive tract (oral cavity to anus) and associated organs (salivary glands, liver, pancreas)."
  * concept[+] 
    * code = #"General disorders and administration site conditions"
    * display = "General Disorders and Administration Site Conditions Class"
    * definition = "A class of disorders that encompasses conditions of a general kind that result from a disease, the treatment of disease or administration of treatment at a particular site and are manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Hepatobiliary disorders"
    * display = "Liver and Biliary Tract Disorder"
    * definition = "Any deviation from the normal structure or function of the liver or biliary tract that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Immune system disorders"
    * display = "Immune System Disorder"
    * definition = "A disorder resulting from an abnormality in the immune system. -- 2003"
  * concept[+] 
    * code = #"Infections and infestations"
    * display = "Infection and infestation"
    * definition = "A disorder resulting from the presence and activity of a microbial, viral, or parasitic agent. It can be transmitted by direct or indirect contact. -- 2003"
  * concept[+] 
    * code = #"Injury, poisoning and procedural complications"
    * display = "Injury, Poisoning and Procedural Complication Class"
    * definition = "A class of disorders that encompasses conditions resulting from an injury, poisoning or procedure."
  * concept[+] 
    * code = #Investigations
    * display = "Investigation"
    * definition = "The act or process of a systematic and thorough examination; research, study; the process of inquiring into or following up, intended to develop facts."
  * concept[+] 
    * code = #"Metabolism and nutrition disorders"
    * display = "Metabolism and Nutrition Disorder Class"
    * definition = "A class of disorders that encompasses conditions occurring as a result of metabolic dysfunction or deviation from the normal nutritional requirements."
  * concept[+] 
    * code = #"Musculoskeletal and connective tissue disorders"
    * display = "Connective and Soft Tissue Disorder"
    * definition = "Any deviation from the normal structure or function of the musculoskeletal or connective tissue that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Neoplasms benign, malignant and unspecified (incl cysts and polyps)"
    * display = "Neoplasm"
    * definition = "An abnormal tissue growth resulted from uncontrolled cell proliferation. Benign neoplastic cells resemble normal cells without exhibiting significant cytologic atypia, while malignant ones exhibit overt signs such as dysplastic features, atypical mitotic figures, necrosis, nuclear pleomorphism, and anaplasia. Representative examples of benign neoplasms include papillomas, cystadenomas, and lipomas; malignant neoplasms include carcinomas, sarcomas, lymphomas, and leukemias."
  * concept[+] 
    * code = #"Nervous system disorders"
    * display = "Nervous System Disorder"
    * definition = "Any deviation from the normal structure or function of the nervous system that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Pregnancy, puerperium and perinatal conditions"
    * display = "Pregnancy, Puerperium and Perinatal Condition Class"
    * definition = "A class of conditions associated with pregnancy, puerperium and perinatal status."
  * concept[+] 
    * code = #"Psychiatric disorders"
    * display = "Psychiatric Disorder"
    * definition = "Any deviation from the normal structure or function of the brain and a psychiatric condition, that results in an impairment of an individual's normal cognitive, emotional, or behavioral functioning, and is caused by physiological or psychosocial factors."
  * concept[+] 
    * code = #"Renal and urinary disorders"
    * display = "Urinary Tract Disorder"
    * definition = "Disorders of any part of the urologic system."
  * concept[+] 
    * code = #"Reproductive system and breast disorders"
    * display = "Reproductive System and Breast Disorder Class"
    * definition = "Any deviation from the normal structure or function of the reproductive system or breast that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Respiratory, thoracic and mediastinal disorders"
    * display = "Respiratory and Thoracic Disorder"
    * definition = "Any deviation from the normal structure or function of the respiratory system including the thorax and mediastinum that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Skin and subcutaneous tissue disorders"
    * display = "Skin Disorder"
    * definition = "Any deviation from the normal structure or function of the skin or subcutaneous tissue that is manifested by a characteristic set of symptoms and signs."
  * concept[+] 
    * code = #"Social circumstances"
    * display = "Social Circumstances"
    * definition = "A set of concepts that results from or is influenced by criteria or activities associated with the social environment of a person."
  * concept[+] 
    * code = #"Surgical and medical procedures"
    * display = "Intervention or Procedure"
    * definition = "An activity that produces an effect, or that is intended to alter the course of a disease in a patient or population. This is a general term that encompasses the medical, social, behavioral, and environmnetal acts that can have preventive, therapeutic, or palliative effects."
  * concept[+] 
    * code = #"Vascular disorders"
    * display = "Vascular Disorder"
    * definition = "Any deviation from the normal structure or function of the vascular system that is manifested by a characteristic set of symptoms and signs."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e56008-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557869v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e56008-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e57358-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557050v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #10000060
    * display = "Abdominal distension"
    * definition = "A disorder characterized by swelling of the abdomen."
  * concept[+] 
    * code = #10000081
    * display = "Abdominal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the abdominal region."
  * concept[+] 
    * code = #10000486
    * display = "Acidosis"
    * definition = "A disorder characterized by abnormally high acidity (high hydrogen-ion concentration) of the blood and other body tissues."
  * concept[+] 
    * code = #10000521
    * display = "Acoustic nerve disorder NOS"
    * definition = "A disorder characterized by involvement of the acoustic nerve (eighth cranial nerve)."
  * concept[+] 
    * code = #10000636
    * display = "Activated partial thromboplastin time prolonged"
    * definition = "An abnormal laboratory test result in which the partial thromboplastin time is found to be greater than the control value. As a possible indicator of coagulopathy, a prolonged partial thromboplastin time (PTT) may occur in a variety of diseases and disorders, both primary and related to treatment."
  * concept[+] 
    * code = #10001367
    * display = "Adrenal insufficiency"
    * definition = "A disorder that occurs when the adrenal cortex does not produce enough of the hormone cortisol and in some cases, the hormone aldosterone. It may be due to a disorder of the adrenal cortex as in Addison's disease or primary adrenal insufficiency."
  * concept[+] 
    * code = #10001409
    * display = "Adult respiratory distress syndrome"
    * definition = "A disorder characterized by progressive and life-threatening pulmonary distress in the absence of an underlying pulmonary condition, usually following major trauma or surgery."
  * concept[+] 
    * code = #10001497
    * display = "Agitation"
    * definition = "A disorder characterized by a state of restlessness associated with unpleasant feelings of irritability and tension."
  * concept[+] 
    * code = #10001540
    * display = "Akathisia"
    * definition = "A disorder characterized by an uncomfortable feeling of inner restlessness and inability to stay still; this is a side effect of some psychotropic drugs."
  * concept[+] 
    * code = #10001551
    * display = "Alanine aminotransferase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of alanine aminotransferase (ALT or SGPT) in the blood specimen."
  * concept[+] 
    * code = #10001598
    * display = "Alcohol intolerance"
    * definition = "A disorder characterized by an increase in sensitivity to the adverse effects of alcohol, which can include nasal congestion, skin flushes, heart dysrhythmias, nausea, vomiting, indigestion and headaches."
  * concept[+] 
    * code = #10001675
    * display = "Alkaline phosphatase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of alkaline phosphatase in a blood specimen."
  * concept[+] 
    * code = #10001680
    * display = "Alkalosis"
    * definition = "A disorder characterized by abnormally high alkalinity (low hydrogen-ion concentration) of the blood and other body tissues."
  * concept[+] 
    * code = #10001718
    * display = "Allergic reaction"
    * definition = "A disorder characterized by an adverse local or general response from exposure to an allergen."
  * concept[+] 
    * code = #10001723
    * display = "Allergic rhinitis"
    * definition = "A disorder characterized by an inflammation of the nasal mucous membranes caused by an IgE-mediated response to external allergens. The inflammation may also involve the mucous membranes of the sinuses, eyes, middle ear, and pharynx. Symptoms include sneezing, nasal congestion, rhinorrhea and itching."
  * concept[+] 
    * code = #10001760
    * display = "Alopecia"
    * definition = "A disorder characterized by a decrease in density of hair compared to normal for a given individual at a given age and body location."
  * concept[+] 
    * code = #10001949
    * display = "Amnesia"
    * definition = "A disorder characterized by systematic and extensive loss of memory."
  * concept[+] 
    * code = #10002156
    * display = "Anal fistula"
    * definition = "A disorder characterized by an abnormal communication between the opening in the anal canal to the perianal skin."
  * concept[+] 
    * code = #10002167
    * display = "Anal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the anal region."
  * concept[+] 
    * code = #10002176
    * display = "Anal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the anal canal."
  * concept[+] 
    * code = #10002180
    * display = "Anal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the anal canal."
  * concept[+] 
    * code = #10002218
    * display = "Anaphylaxis"
    * definition = "A disorder characterized by an acute inflammatory reaction resulting from the release of histamine and histamine-like substances from mast cells, causing a hypersensitivity immune response. Clinically, it presents with breathing difficulty, dizziness, hypotension, cyanosis and loss of consciousness and may lead to death."
  * concept[+] 
    * code = #10002272
    * display = "Anemia"
    * definition = "A disorder characterized by an reduction in the amount of hemoglobin in 100 ml of blood. Signs and symptoms of anemia may include pallor of the skin and mucous membranes, shortness of breath, palpitations of the heart, soft systolic murmurs, lethargy, and fatigability."
  * concept[+] 
    * code = #10002544
    * display = "Ankle fracture"
    * definition = "A finding of damage to the ankle joint characterized by a break in the continuity of the ankle bone. Symptoms include marked discomfort, swelling and difficulty moving the affected leg and foot."
  * concept[+] 
    * code = #10002646
    * display = "Anorexia"
    * definition = "A disorder characterized by a loss of appetite."
  * concept[+] 
    * code = #10002652
    * display = "Anorgasmia"
    * definition = "A disorder characterized by an inability to achieve orgasm."
  * concept[+] 
    * code = #10002855
    * display = "Anxiety"
    * definition = "A disorder characterized by apprehension of danger and dread accompanied by restlessness, tension, tachycardia, and dyspnea unattached to a clearly identifiable stimulus."
  * concept[+] 
    * code = #10002899
    * display = "Aortic injury"
    * definition = "A finding of damage to the aorta."
  * concept[+] 
    * code = #10002953
    * display = "Aphonia"
    * definition = "A disorder characterized by the inability to speak. It may result from injuries to the vocal cords or may be functional (psychogenic)."
  * concept[+] 
    * code = #10002972
    * display = "Apnea"
    * definition = "A disorder characterized by cessation of breathing."
  * concept[+] 
    * code = #10003011
    * display = "Appendicitis"
    * definition = "A disorder characterized by acute inflammation to the vermiform appendix caused by a pathogenic agent."
  * concept[+] 
    * code = #10003012
    * display = "Appendicitis perforated"
    * definition = "A disorder characterized by acute inflammation to the vermiform appendix caused by a pathogenic agent with gangrenous changes resulting in the rupture of the appendiceal wall. The appendiceal wall rupture causes the release of inflammatory and bacterial contents from the appendiceal lumen into the abdominal cavity."
  * concept[+] 
    * code = #10003074
    * display = "Arachnoiditis"
    * definition = "A disorder characterized by inflammation of the arachnoid membrane and adjacent subarachnoid space."
  * concept[+] 
    * code = #10003162
    * display = "Arterial injury"
    * definition = "A finding of damage to an artery."
  * concept[+] 
    * code = #10003239
    * display = "Arthralgia"
    * definition = "A disorder characterized by a sensation of marked discomfort in a joint."
  * concept[+] 
    * code = #10003246
    * display = "Arthritis"
    * definition = "A disorder characterized by inflammation involving a joint."
  * concept[+] 
    * code = #10003445
    * display = "Ascites"
    * definition = "A disorder characterized by accumulation of serous or hemorrhagic fluid in the peritoneal cavity."
  * concept[+] 
    * code = #10003481
    * display = "Aspartate aminotransferase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of aspartate aminotransferase (AST or SGOT) in a blood specimen."
  * concept[+] 
    * code = #10003504
    * display = "Aspiration"
    * definition = "A disorder characterized by inhalation of solids or liquids into the lungs."
  * concept[+] 
    * code = #10003586
    * display = "Asystole"
    * definition = "A disorder characterized by a dysrhythmia without cardiac electrical activity. Typically, this is accompanied by cessation of the pumping function of the heart."
  * concept[+] 
    * code = #10003591
    * display = "Ataxia"
    * definition = "A disorder characterized by lack of coordination of muscle movements resulting in the impairment or inability to perform voluntary activities."
  * concept[+] 
    * code = #10003598
    * display = "Atelectasis"
    * definition = "A disorder characterized by the collapse of part or the entire lung."
  * concept[+] 
    * code = #10003658
    * display = "Atrial fibrillation"
    * definition = "A disorder characterized by a dysrhythmia without discernible P waves and an irregular ventricular response due to multiple reentry circuits. The rhythm disturbance originates above the ventricles."
  * concept[+] 
    * code = #10003662
    * display = "Atrial flutter"
    * definition = "A disorder characterized by a dysrhythmia with organized rhythmic atrial contractions with a rate of 200-300 beats per minute. The rhythm disturbance originates in the atria."
  * concept[+] 
    * code = #10003673
    * display = "Atrioventricular block complete"
    * definition = "A disorder characterized by a dysrhythmia with complete failure of atrial electrical impulse conduction through the AV node to the ventricles."
  * concept[+] 
    * code = #10003674
    * display = "Atrioventricular block first degree"
    * definition = "A disorder characterized by a dysrhythmia with a delay in the time required for the conduction of an electrical impulse through the atrioventricular (AV) node beyond 0.2 seconds; prolongation of the PR interval greater than 200 milliseconds."
  * concept[+] 
    * code = #10003883
    * display = "Azoospermia"
    * definition = "A disorder characterized by laboratory test results that indicate complete absence of spermatozoa in the semen."
  * concept[+] 
    * code = #10003988
    * display = "Back pain"
    * definition = "A disorder characterized by marked discomfort sensation in the back region."
  * concept[+] 
    * code = #10004665
    * display = "Biliary fistula"
    * definition = "A disorder characterized by an abnormal communication between the bile ducts and another organ or anatomic site."
  * concept[+] 
    * code = #10005047
    * display = "Bladder infection"
    * definition = "A disorder characterized by an infectious process involving the bladder."
  * concept[+] 
    * code = #10005265
    * display = "Bloating"
    * definition = "A disorder characterized by subject-reported feeling of uncomfortable fullness of the abdomen."
  * concept[+] 
    * code = #10005329
    * display = "Blood and lymphatic system disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10005332
    * display = "Blood antidiuretic hormone abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of antidiuretic hormone in the blood specimen."
  * concept[+] 
    * code = #10005364
    * display = "Blood bilirubin increased"
    * definition = "A finding based on laboratory test results that indicate an abnormally high level of bilirubin in the blood. Excess bilirubin is associated with jaundice."
  * concept[+] 
    * code = #10005452
    * display = "Blood corticotrophin decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of corticotrophin in a blood specimen."
  * concept[+] 
    * code = #10005561
    * display = "Blood gonadotrophin abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of gonadotrophin hormone in a blood specimen."
  * concept[+] 
    * code = #10005778
    * display = "Blood prolactin abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of prolactin hormone in a blood specimen."
  * concept[+] 
    * code = #10005886
    * display = "Blurred vision"
    * definition = "A disorder characterized by visual perception of unclear or fuzzy images."
  * concept[+] 
    * code = #10005901
    * display = "Body odor"
    * definition = "A disorder characterized by an abnormal body smell resulting from the growth of bacteria on the body."
  * concept[+] 
    * code = #10006002
    * display = "Bone pain"
    * definition = "A disorder characterized by marked discomfort sensation in the bones."
  * concept[+] 
    * code = #10006179
    * display = "Breast atrophy"
    * definition = "A disorder characterized by underdevelopment of the breast."
  * concept[+] 
    * code = #10006259
    * display = "Breast infection"
    * definition = "A disorder characterized by an infectious process involving the breast."
  * concept[+] 
    * code = #10006298
    * display = "Breast pain"
    * definition = "A disorder characterized by marked discomfort sensation in the breast region."
  * concept[+] 
    * code = #10006437
    * display = "Bronchial fistula"
    * definition = "A disorder characterized by an abnormal communication between the bronchus and another organ or anatomic site."
  * concept[+] 
    * code = #10006440
    * display = "Bronchial obstruction"
    * definition = "A disorder characterized by blockage of a bronchus passage, most often by bronchial secretions and exudates."
  * concept[+] 
    * code = #10006482
    * display = "Bronchospasm"
    * definition = "A disorder characterized by a sudden contraction of the smooth muscles of the bronchial wall."
  * concept[+] 
    * code = #10006504
    * display = "Bruising"
    * definition = "A finding of injury of the soft tissues or bone characterized by leakage of blood into surrounding tissues."
  * concept[+] 
    * code = #10006556
    * display = "Bullous dermatitis"
    * definition = "A disorder characterized by inflammation of the skin characterized by the presence of bullae which are filled with fluid."
  * concept[+] 
    * code = #10006634
    * display = "Burn"
    * definition = "A finding of impaired integrity to the anatomic site of an adverse thermal reaction. Burns can be caused by exposure to chemicals, direct heat, electricity, flames and radiation. The extent of damage depends on the length and intensity of exposure and time until provision of treatment."
  * concept[+] 
    * code = #10007196
    * display = "Capillary leak syndrome"
    * definition = "A disorder characterized by leakage of intravascular fluids into the extravascular space. This syndrome is observed in patients who demonstrate a state of generalized leaky capillaries following shock syndromes, low-flow states, ischemia-reperfusion injuries, toxemias, medications, or poisoning. It can lead to generalized edema and multiple organ failure."
  * concept[+] 
    * code = #10007515
    * display = "Cardiac arrest"
    * definition = "A disorder characterized by cessation of the pumping function of the heart."
  * concept[+] 
    * code = #10007541
    * display = "Cardiac disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10007612
    * display = "Cardiac troponin I increased"
    * definition = "A laboratory test result which indicates increased levels of cardiac troponin I in a biological specimen."
  * concept[+] 
    * code = #10007613
    * display = "Cardiac troponin T increased"
    * definition = "A laboratory test result which indicates increased levels of cardiac troponin T in a biological specimen."
  * concept[+] 
    * code = #10007739
    * display = "Cataract"
    * definition = "A disorder characterized by partial or complete opacity of the crystalline lens of one or both eyes. This results in a decrease in visual acuity and eventual blindness if untreated."
  * concept[+] 
    * code = #10007810
    * display = "Catheter related infection"
    * definition = "A disorder characterized by an infectious process that arises secondary to catheter use."
  * concept[+] 
    * code = #10007839
    * display = "CD4 lymphocytes decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of CD4 lymphocytes in a blood specimen."
  * concept[+] 
    * code = #10008164
    * display = "Cerebrospinal fluid leakage"
    * definition = "A disorder characterized by loss of cerebrospinal fluid into the surrounding tissues."
  * concept[+] 
    * code = #10008330
    * display = "Cervicitis infection"
    * definition = "A disorder characterized by an infectious process involving the uterine cervix."
  * concept[+] 
    * code = #10008417
    * display = "Cheilitis"
    * definition = "A disorder characterized by inflammation of the lip."
  * concept[+] 
    * code = #10008481
    * display = "Chest pain - cardiac"
    * definition = "A disorder characterized by substernal discomfort due to insufficient myocardial oxygenation."
  * concept[+] 
    * code = #10008496
    * display = "Chest wall pain"
    * definition = "A disorder characterized by marked discomfort sensation in the chest wall region."
  * concept[+] 
    * code = #10008531
    * display = "Chills"
    * definition = "A disorder characterized by a sensation of cold that often marks a physiologic response to sweating after a fever."
  * concept[+] 
    * code = #10008612
    * display = "Cholecystitis"
    * definition = "A disorder characterized by inflammation involving the gallbladder. It may be associated with the presence of gallstones."
  * concept[+] 
    * code = #10008661
    * display = "Cholesterol high"
    * definition = "A finding based on laboratory test results that indicate higher than normal levels of cholesterol in a blood specimen."
  * concept[+] 
    * code = #10009845
    * display = "Cognitive disturbance"
    * definition = "A disorder characterized by a conspicuous change in cognitive function."
  * concept[+] 
    * code = #10009887
    * display = "Colitis"
    * definition = "A disorder characterized by inflammation of the colon."
  * concept[+] 
    * code = #10009995
    * display = "Colonic fistula"
    * definition = "A disorder characterized by an abnormal communication between the large intestine and another organ or anatomic site."
  * concept[+] 
    * code = #10009998
    * display = "Colonic hemorrhage"
    * definition = "A disorder characterized by bleeding from the colon."
  * concept[+] 
    * code = #10010000
    * display = "Colonic obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the colon."
  * concept[+] 
    * code = #10010001
    * display = "Colonic perforation"
    * definition = "A disorder characterized by a rupture in the colonic wall."
  * concept[+] 
    * code = #10010004
    * display = "Colonic stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the colon."
  * concept[+] 
    * code = #10010006
    * display = "Colonic ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the colon."
  * concept[+] 
    * code = #10010250
    * display = "Concentration impairment"
    * definition = "A disorder characterized by a deterioration in the ability to concentrate."
  * concept[+] 
    * code = #10010276
    * display = "Conduction disorder"
    * definition = "A disorder characterized by pathological irregularities in the cardiac conduction system."
  * concept[+] 
    * code = #10010300
    * display = "Confusion"
    * definition = "A disorder characterized by a lack of clear and orderly thought and behavior."
  * concept[+] 
    * code = #10010331
    * display = "Congenital, familial and genetic disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10010741
    * display = "Conjunctivitis"
    * definition = "A disorder characterized by inflammation, swelling and redness to the conjunctiva of the eye."
  * concept[+] 
    * code = #10010742
    * display = "Conjunctivitis infective"
    * definition = "A disorder characterized by an infectious process involving the conjunctiva. Clinical manifestations include pink or red color in the eyes."
  * concept[+] 
    * code = #10010774
    * display = "Constipation"
    * definition = "A disorder characterized by irregular and infrequent or difficult evacuation of the bowels."
  * concept[+] 
    * code = #10010783
    * display = "Constrictive pericarditis"
    * definition = "A disorder characterized by a thickened and fibrotic pericardial sac; these fibrotic changes impede normal myocardial function by restricting myocardial muscle action."
  * concept[+] 
    * code = #10011224
    * display = "Cough"
    * definition = "A disorder characterized by sudden, often repetitive, spasmodic contraction of the thoracic cavity, resulting in violent release of air from the lungs and usually accompanied by a distinctive sound."
  * concept[+] 
    * code = #10011268
    * display = "CPK increased"
    * definition = "A finding based on laboratory test results that indicate an increase in levels of creatine phosphokinase in a blood specimen."
  * concept[+] 
    * code = #10011368
    * display = "Creatinine increased"
    * definition = "A finding based on laboratory test results that indicate increased levels of creatinine in a biological specimen."
  * concept[+] 
    * code = #10011655
    * display = "Cushingoid"
    * definition = "A disorder characterized by signs and symptoms that resemble Cushing's disease or syndrome: buffalo hump obesity, striations, adiposity, hypertension, diabetes, and osteoporosis, usually due to exogenous corticosteroids."
  * concept[+] 
    * code = #10011912
    * display = "Death neonatal"
    * definition = "A disorder characterized by cessation of life occurring during the first 28 days of life."
  * concept[+] 
    * code = #10011914
    * display = "Death NOS"
    * definition = "A cessation of life that cannot be attributed to a CTCAE term associated with Grade 5."
  * concept[+] 
    * code = #10012174
    * display = "Dehydration"
    * definition = "A disorder characterized by excessive loss of water from the body. It is usually caused by severe diarrhea, vomiting or diaphoresis."
  * concept[+] 
    * code = #10012205
    * display = "Delayed puberty"
    * definition = "A disorder characterized by unusually late sexual maturity."
  * concept[+] 
    * code = #10012218
    * display = "Delirium"
    * definition = "A disorder characterized by the acute and sudden development of confusion, illusions, movement changes, inattentiveness, agitation, and hallucinations. Usually, it is a reversible condition."
  * concept[+] 
    * code = #10012260
    * display = "Delusions"
    * definition = "A disorder characterized by false personal beliefs held contrary to reality, despite contradictory evidence and common sense."
  * concept[+] 
    * code = #10012318
    * display = "Dental caries"
    * definition = "A disorder characterized by the decay of a tooth, in which it becomes softened, discolored and/or porous."
  * concept[+] 
    * code = #10012373
    * display = "Depressed level of consciousness"
    * definition = "A disorder characterized by a decrease in ability to perceive and respond."
  * concept[+] 
    * code = #10012378
    * display = "Depression"
    * definition = "A disorder characterized by melancholic feelings of grief or unhappiness."
  * concept[+] 
    * code = #10012727
    * display = "Diarrhea"
    * definition = "A disorder characterized by frequent and watery bowel movements."
  * concept[+] 
    * code = #10013442
    * display = "Disseminated intravascular coagulation"
    * definition = "A disorder characterized by systemic pathological activation of blood clotting mechanisms which results in clot formation throughout the body. There is an increase in the risk of hemorrhage as the body is depleted of platelets and coagulation factors."
  * concept[+] 
    * code = #10013573
    * display = "Dizziness"
    * definition = "A disorder characterized by a disturbing sensation of lightheadedness, unsteadiness, giddiness, spinning or rocking."
  * concept[+] 
    * code = #10013774
    * display = "Dry eye"
    * definition = "A disorder characterized by dryness of the cornea and conjunctiva."
  * concept[+] 
    * code = #10013781
    * display = "Dry mouth"
    * definition = "A disorder characterized by reduced salivary flow in the oral cavity."
  * concept[+] 
    * code = #10013786
    * display = "Dry skin"
    * definition = "A disorder characterized by flaky and dull skin; the pores are generally fine, the texture is a papery thin texture."
  * concept[+] 
    * code = #10013828
    * display = "Duodenal fistula"
    * definition = "A disorder characterized by an abnormal communication between the duodenum and another organ or anatomic site."
  * concept[+] 
    * code = #10013830
    * display = "Duodenal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of stomach contents through the duodenum."
  * concept[+] 
    * code = #10013832
    * display = "Duodenal perforation"
    * definition = "A disorder characterized by a rupture in the duodenal wall."
  * concept[+] 
    * code = #10013836
    * display = "Duodenal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the duodenal wall."
  * concept[+] 
    * code = #10013887
    * display = "Dysarthria"
    * definition = "A disorder characterized by slow and slurred speech resulting from an inability to coordinate the muscles used in speech."
  * concept[+] 
    * code = #10013911
    * display = "Dysgeusia"
    * definition = "A disorder characterized by abnormal sensual experience with the taste of foodstuffs; it can be related to a decrease in the sense of smell."
  * concept[+] 
    * code = #10013934
    * display = "Dysmenorrhea"
    * definition = "A disorder characterized by abnormally painful abdominal cramps during menses."
  * concept[+] 
    * code = #10013941
    * display = "Dyspareunia"
    * definition = "A disorder characterized by painful or difficult coitus."
  * concept[+] 
    * code = #10013946
    * display = "Dyspepsia"
    * definition = "A disorder characterized by an uncomfortable, often painful feeling in the stomach, resulting from impaired digestion. Symptoms include burning stomach, bloating, heartburn, nausea and vomiting."
  * concept[+] 
    * code = #10013950
    * display = "Dysphagia"
    * definition = "A disorder characterized by difficulty in swallowing."
  * concept[+] 
    * code = #10013951
    * display = "Dysphasia"
    * definition = "A disorder characterized by impairment of verbal communication skills, often resulting from brain damage."
  * concept[+] 
    * code = #10013963
    * display = "Dyspnea"
    * definition = "A disorder characterized by an uncomfortable sensation of difficulty breathing."
  * concept[+] 
    * code = #10013993
    * display = "Ear and labyrinth disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10014020
    * display = "Ear pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the ear."
  * concept[+] 
    * code = #10014217
    * display = "Edema cerebral"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid in the brain."
  * concept[+] 
    * code = #10014222
    * display = "Edema face"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation in facial tissues."
  * concept[+] 
    * code = #10014326
    * display = "Ejaculation disorder"
    * definition = "A disorder characterized by problems related to ejaculation. This category includes premature, delayed, retrograde and painful ejaculation."
  * concept[+] 
    * code = #10014383
    * display = "Electrocardiogram QT corrected interval prolonged"
    * definition = "A finding of a cardiac dysrhythmia characterized by an abnormally long corrected QT interval."
  * concept[+] 
    * code = #10014594
    * display = "Encephalitis infection"
    * definition = "A disorder characterized by an infectious process involving the brain tissue."
  * concept[+] 
    * code = #10014621
    * display = "Encephalomyelitis infection"
    * definition = "A disorder characterized by an infectious process involving the brain and spinal cord tissues."
  * concept[+] 
    * code = #10014625
    * display = "Encephalopathy"
    * definition = "A disorder characterized by a pathologic process involving the brain."
  * concept[+] 
    * code = #10014678
    * display = "Endocarditis infective"
    * definition = "A disorder characterized by an infectious process involving the endocardial layer of the heart."
  * concept[+] 
    * code = #10014698
    * display = "Endocrine disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10014801
    * display = "Endophthalmitis"
    * definition = "A disorder characterized by an infectious process involving the internal structures of the eye."
  * concept[+] 
    * code = #10014893
    * display = "Enterocolitis"
    * definition = "A disorder characterized by inflammation of the small and large intestines."
  * concept[+] 
    * code = #10015090
    * display = "Epistaxis"
    * definition = "A disorder characterized by bleeding from the nose."
  * concept[+] 
    * code = #10015218
    * display = "Erythema multiforme"
    * definition = "A disorder characterized by target lesions (a pink-red ring around a pale center)."
  * concept[+] 
    * code = #10015277
    * display = "Erythroderma"
    * definition = "A disorder characterized by generalized inflammatory erythema and exfoliation. The inflammatory process involves > 90% of the body surface area."
  * concept[+] 
    * code = #10015384
    * display = "Esophageal hemorrhage"
    * definition = "A disorder characterized by bleeding from the esophagus."
  * concept[+] 
    * code = #10015387
    * display = "Esophageal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents in the esophagus."
  * concept[+] 
    * code = #10015388
    * display = "Esophageal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the esophageal region."
  * concept[+] 
    * code = #10015448
    * display = "Esophageal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the esophagus."
  * concept[+] 
    * code = #10015451
    * display = "Esophageal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the esophageal wall."
  * concept[+] 
    * code = #10015453
    * display = "Esophageal varices hemorrhage"
    * definition = "A disorder characterized by bleeding from esophageal varices."
  * concept[+] 
    * code = #10015461
    * display = "Esophagitis"
    * definition = "A disorder characterized by inflammation of the esophageal wall."
  * concept[+] 
    * code = #10015533
    * display = "Euphoria"
    * definition = "A disorder characterized by an exaggerated feeling of well-being which is disproportionate to events and stimuli."
  * concept[+] 
    * code = #10015688
    * display = "Exostosis"
    * definition = "A disorder characterized by non-neoplastic overgrowth of bone."
  * concept[+] 
    * code = #10015829
    * display = "Extraocular muscle paresis"
    * definition = "A disorder characterized by incomplete paralysis of an extraocular muscle."
  * concept[+] 
    * code = #10015832
    * display = "Extrapyramidal disorder"
    * definition = "A disorder characterized by abnormal, repetitive, involuntary muscle movements, frenzied speech and extreme restlessness."
  * concept[+] 
    * code = #10015919
    * display = "Eye disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10015929
    * display = "Eye infection"
    * definition = "A disorder characterized by an infectious process involving the eye."
  * concept[+] 
    * code = #10015958
    * display = "Eye pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the eye."
  * concept[+] 
    * code = #10016059
    * display = "Facial pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the face."
  * concept[+] 
    * code = #10016173
    * display = "Fall"
    * definition = "A finding of sudden movement downward, usually resulting in injury."
  * concept[+] 
    * code = #10016241
    * display = "Fat atrophy"
    * definition = "A disorder characterized by shrinking of adipose tissue."
  * concept[+] 
    * code = #10016256
    * display = "Fatigue"
    * definition = "A disorder characterized by a state of generalized weakness with a pronounced inability to summon sufficient energy to accomplish daily activities."
  * concept[+] 
    * code = #10016288
    * display = "Febrile neutropenia"
    * definition = "A disorder characterized by a decrease in neutrophils associated with fever."
  * concept[+] 
    * code = #10016296
    * display = "Fecal incontinence"
    * definition = "A disorder characterized by inability to control the escape of stool from the rectum."
  * concept[+] 
    * code = #10016479
    * display = "Fetal death"
    * definition = "A disorder characterized by death in utero; failure of the product of conception to show evidence of respiration, heartbeat, or definite movement of a voluntary muscle after expulsion from the uterus, without possibility of resuscitation."
  * concept[+] 
    * code = #10016558
    * display = "Fever"
    * definition = "A disorder characterized by elevation of the body's temperature above the upper limit of normal."
  * concept[+] 
    * code = #10016596
    * display = "Fibrinogen decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of fibrinogen in a blood specimen."
  * concept[+] 
    * code = #10016750
    * display = "Flank pain"
    * definition = "A disorder characterized by marked discomfort sensation on the lateral side of the body in the region below the ribs and above the hip."
  * concept[+] 
    * code = #10016757
    * display = "Flashing lights"
    * definition = "A disorder characterized by a sudden or brief burst of light."
  * concept[+] 
    * code = #10016766
    * display = "Flatulence"
    * definition = "A disorder characterized by a state of excessive gas in the alimentary canal."
  * concept[+] 
    * code = #10016778
    * display = "Floaters"
    * definition = "A disorder characterized by an individual seeing spots before their eyes. The spots are shadows of opaque cell fragments in the vitreous humor or lens."
  * concept[+] 
    * code = #10016791
    * display = "Flu like symptoms"
    * definition = "A disorder characterized by a group of symptoms similar to those observed in patients with the flu. It includes fever, chills, body aches, malaise, loss of appetite and dry cough."
  * concept[+] 
    * code = #10016825
    * display = "Flushing"
    * definition = "A disorder characterized by episodic reddening of the face."
  * concept[+] 
    * code = #10016987
    * display = "Forced expiratory volume decreased"
    * definition = "A finding based on test results that indicate a relative decrease in the fraction of the forced vital capacity that is exhaled in a specific number of seconds."
  * concept[+] 
    * code = #10017076
    * display = "Fracture"
    * definition = "A finding of traumatic injury to the bone in which the continuity of the bone is broken."
  * concept[+] 
    * code = #10017577
    * display = "Gait disturbance"
    * definition = "A disorder characterized by walking difficulties."
  * concept[+] 
    * code = #10017631
    * display = "Gallbladder fistula"
    * definition = "A disorder characterized by an abnormal communication between the gallbladder and another organ or anatomic site."
  * concept[+] 
    * code = #10017636
    * display = "Gallbladder obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents of the gallbladder."
  * concept[+] 
    * code = #10017638
    * display = "Gallbladder pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the gallbladder region."
  * concept[+] 
    * code = #10017639
    * display = "Gallbladder perforation"
    * definition = "A disorder characterized by a rupture in the gallbladder wall."
  * concept[+] 
    * code = #10017789
    * display = "Gastric hemorrhage"
    * definition = "A disorder characterized by bleeding from the gastric wall."
  * concept[+] 
    * code = #10017815
    * display = "Gastric perforation"
    * definition = "A disorder characterized by a rupture in the stomach wall."
  * concept[+] 
    * code = #10017822
    * display = "Gastric ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the stomach."
  * concept[+] 
    * code = #10017853
    * display = "Gastritis"
    * definition = "A disorder characterized by inflammation of the stomach."
  * concept[+] 
    * code = #10017877
    * display = "Gastrointestinal fistula"
    * definition = "A disorder characterized by an abnormal communication between any part of the gastrointestinal system and another organ or anatomic site."
  * concept[+] 
    * code = #10017947
    * display = "Gastrointestinal disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10017999
    * display = "Gastrointestinal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the gastrointestinal region."
  * concept[+] 
    * code = #10018043
    * display = "Gastroparesis"
    * definition = "A disorder characterized by an incomplete paralysis of the muscles of the stomach wall resulting in delayed emptying of the gastric contents into the small intestine."
  * concept[+] 
    * code = #10018065
    * display = "General disorders and administration site conditions - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10018146
    * display = "Genital edema"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid in the genitals."
  * concept[+] 
    * code = #10018286
    * display = "Gingival pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the gingival region."
  * concept[+] 
    * code = #10018304
    * display = "Glaucoma"
    * definition = "A disorder characterized by an increase in pressure in the eyeball due to obstruction of the aqueous humor outflow."
  * concept[+] 
    * code = #10018746
    * display = "Growth accelerated"
    * definition = "A disorder characterized by greater growth than expected for age."
  * concept[+] 
    * code = #10018748
    * display = "Growth hormone abnormal"
    * definition = "A finding based on laboratory test results that indicate abnormal levels of growth hormone in a biological specimen."
  * concept[+] 
    * code = #10018761
    * display = "Growth suppression"
    * definition = "A disorder characterized by of stature that is smaller than normal as expected for age."
  * concept[+] 
    * code = #10018784
    * display = "Gum infection"
    * definition = "A disorder characterized by an infectious process involving the gums."
  * concept[+] 
    * code = #10018801
    * display = "Gynecomastia"
    * definition = "A disorder characterized by excessive development of the breasts in males."
  * concept[+] 
    * code = #10019077
    * display = "Hallucinations"
    * definition = "A disorder characterized by a false sensory perception in the absence of an external stimulus."
  * concept[+] 
    * code = #10019150
    * display = "Haptoglobin decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of haptoglobin in a blood specimen."
  * concept[+] 
    * code = #10019211
    * display = "Headache"
    * definition = "A disorder characterized by a sensation of marked discomfort in various parts of the head, not confined to the area of distribution of any nerve."
  * concept[+] 
    * code = #10019245
    * display = "Hearing impaired"
    * definition = "A disorder characterized by partial or complete loss of the ability to detect or understand sounds resulting from damage to ear structures."
  * concept[+] 
    * code = #10019279
    * display = "Heart failure"
    * definition = "A disorder characterized by the inability of the heart to pump blood at an adequate volume to meet tissue metabolic requirements, or, the ability to do so only at an elevation in the filling pressure."
  * concept[+] 
    * code = #10019428
    * display = "Hematoma"
    * definition = "A disorder characterized by a localized collection of blood, usually clotted, in an organ, space, or tissue, due to a break in the wall of a blood vessel."
  * concept[+] 
    * code = #10019450
    * display = "Hematuria"
    * definition = "A disorder characterized by laboratory test results that indicate blood in the urine."
  * concept[+] 
    * code = #10019489
    * display = "Hemoglobinuria"
    * definition = "A disorder characterized by laboratory test results that indicate the presence of free hemoglobin in the urine."
  * concept[+] 
    * code = #10019491
    * display = "Hemolysis"
    * definition = "A disorder characterized by laboratory test results that indicate widespread erythrocyte cell membrane destruction."
  * concept[+] 
    * code = #10019515
    * display = "Hemolytic uremic syndrome"
    * definition = "A disorder characterized by a form of thrombotic microangiopathy with renal failure, hemolytic anemia, and severe thrombocytopenia."
  * concept[+] 
    * code = #10019611
    * display = "Hemorrhoids"
    * definition = "A disorder characterized by the presence of dilated veins in the rectum and surrounding area."
  * concept[+] 
    * code = #10019663
    * display = "Hepatic failure"
    * definition = "A disorder characterized by the inability of the liver to metabolize chemicals in the body. Laboratory test results reveal abnormal plasma levels of ammonia, bilirubin, lactic dehydrogenase, and alkaline phosphatase."
  * concept[+] 
    * code = #10019678
    * display = "Hepatic hemorrhage"
    * definition = "A disorder characterized by bleeding from the liver."
  * concept[+] 
    * code = #10019692
    * display = "Hepatic necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the hepatic parenchyma."
  * concept[+] 
    * code = #10019705
    * display = "Hepatic pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the liver region."
  * concept[+] 
    * code = #10019799
    * display = "Hepatitis viral"
    * definition = "A disorder characterized by a viral pathologic process involving the liver parenchyma."
  * concept[+] 
    * code = #10019805
    * display = "Hepatobiliary disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10020039
    * display = "Hiccups"
    * definition = "A disorder characterized by repeated gulp sounds that result from an involuntary opening and closing of the glottis. This is attributed to a spasm of the diaphragm."
  * concept[+] 
    * code = #10020100
    * display = "Hip fracture"
    * definition = "A finding of traumatic injury to the hip in which the continuity of either the femoral head, femoral neck, intertrochanteric or subtrochanteric regions is broken."
  * concept[+] 
    * code = #10020112
    * display = "Hirsutism"
    * definition = "A disorder characterized by the presence of excess hair growth in women in anatomic sites where growth is considered to be a secondary male characteristic and under androgen control (beard, moustache, chest, abdomen)"
  * concept[+] 
    * code = #10020201
    * display = "Hoarseness"
    * definition = "A disorder characterized by harsh and raspy voice arising from or spreading to the larynx."
  * concept[+] 
    * code = #10020407
    * display = "Hot flashes"
    * definition = "A disorder characterized by an uncomfortable and temporary sensation of intense body warmth, flushing, sometimes accompanied by sweating upon cooling."
  * concept[+] 
    * code = #10020508
    * display = "Hydrocephalus"
    * definition = "A disorder characterized by an abnormal increase of cerebrospinal fluid in the ventricles of the brain."
  * concept[+] 
    * code = #10020587
    * display = "Hypercalcemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of calcium in blood."
  * concept[+] 
    * code = #10020639
    * display = "Hyperglycemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of blood sugar. It is usually an indication of diabetes mellitus or glucose intolerance."
  * concept[+] 
    * code = #10020642
    * display = "Hyperhidrosis"
    * definition = "A disorder characterized by excessive perspiration."
  * concept[+] 
    * code = #10020647
    * display = "Hyperkalemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of potassium in the blood; associated with kidney failure or sometimes with the use of diuretic drugs."
  * concept[+] 
    * code = #10020670
    * display = "Hypermagnesemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of magnesium in the blood."
  * concept[+] 
    * code = #10020680
    * display = "Hypernatremia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of sodium in the blood."
  * concept[+] 
    * code = #10020705
    * display = "Hyperparathyroidism"
    * definition = "A disorder characterized by an increase in production of parathyroid hormone by the parathyroid glands. This results in hypercalcemia (abnormally high levels of calcium in the blood)."
  * concept[+] 
    * code = #10020765
    * display = "Hypersomnia"
    * definition = "A disorder characterized by characterized by excessive sleepiness during the daytime."
  * concept[+] 
    * code = #10020772
    * display = "Hypertension"
    * definition = "A disorder characterized by a pathological increase in blood pressure; a repeatedly elevation in the blood pressure exceeding 140 over 90 mm Hg."
  * concept[+] 
    * code = #10020850
    * display = "Hyperthyroidism"
    * definition = "A disorder characterized by excessive levels of thyroid hormone in the body. Common causes include an overactive thyroid gland or thyroid hormone overdose."
  * concept[+] 
    * code = #10020864
    * display = "Hypertrichosis"
    * definition = "A disorder characterized by hair density or length beyond the accepted limits of normal in a particular body region, for a particular age or race."
  * concept[+] 
    * code = #10020870
    * display = "Hypertriglyceridemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of triglyceride concentration in the blood."
  * concept[+] 
    * code = #10020907
    * display = "Hyperuricemia"
    * definition = "A disorder characterized by laboratory test results that indicate an elevation in the concentration of uric acid."
  * concept[+] 
    * code = #10020943
    * display = "Hypoalbuminemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of albumin in the blood."
  * concept[+] 
    * code = #10020949
    * display = "Hypocalcemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of calcium in the blood."
  * concept[+] 
    * code = #10021005
    * display = "Hypoglycemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of glucose in the blood."
  * concept[+] 
    * code = #10021013
    * display = "Hypohidrosis"
    * definition = "A disorder characterized by reduced sweating."
  * concept[+] 
    * code = #10021018
    * display = "Hypokalemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of potassium in the blood."
  * concept[+] 
    * code = #10021028
    * display = "Hypomagnesemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of magnesium in the blood."
  * concept[+] 
    * code = #10021038
    * display = "Hyponatremia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of sodium in the blood."
  * concept[+] 
    * code = #10021041
    * display = "Hypoparathyroidism"
    * definition = "A disorder characterized by a decrease in production of parathyroid hormone by the parathyroid glands."
  * concept[+] 
    * code = #10021059
    * display = "Hypophosphatemia"
    * definition = "A disorder characterized by laboratory test results that indicate a low concentration of phosphates in the blood."
  * concept[+] 
    * code = #10021097
    * display = "Hypotension"
    * definition = "A disorder characterized by a blood pressure that is below the normal expected for an individual in a given environment."
  * concept[+] 
    * code = #10021113
    * display = "Hypothermia"
    * definition = "A disorder characterized by an abnormally low body temperature. Treatment is required when the body temperature is 35C (95F) or below."
  * concept[+] 
    * code = #10021114
    * display = "Hypothyroidism"
    * definition = "A disorder characterized by a decrease in production of thyroid hormone by the thyroid gland."
  * concept[+] 
    * code = #10021143
    * display = "Hypoxia"
    * definition = "A disorder characterized by a decrease in the level of oxygen in the body."
  * concept[+] 
    * code = #10021305
    * display = "Ileal perforation"
    * definition = "A disorder characterized by a rupture in the ileal wall."
  * concept[+] 
    * code = #10021307
    * display = "Ileal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the ileum."
  * concept[+] 
    * code = #10021309
    * display = "Ileal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the ileum."
  * concept[+] 
    * code = #10021328
    * display = "Ileus"
    * definition = "A disorder characterized by failure of the ileum to transport intestinal contents."
  * concept[+] 
    * code = #10021428
    * display = "Immune system disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10021881
    * display = "Infections and infestations - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10021918
    * display = "Infective myositis"
    * definition = "A disorder characterized by an infectious process involving the skeletal muscles."
  * concept[+] 
    * code = #10022095
    * display = "Injection site reaction"
    * definition = "A disorder characterized by an intense adverse reaction (usually immunologic) developing at the site of an injection."
  * concept[+] 
    * code = #10022117
    * display = "Injury, poisoning and procedural complications - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10022161
    * display = "Injury to carotid artery"
    * definition = "A finding of damage to the carotid artery."
  * concept[+] 
    * code = #10022213
    * display = "Injury to inferior vena cava"
    * definition = "A finding of damage to the inferior vena cava."
  * concept[+] 
    * code = #10022356
    * display = "Injury to superior vena cava"
    * definition = "A finding of damage to the superior vena cava."
  * concept[+] 
    * code = #10022402
    * display = "INR increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the ratio of the patient's prothrombin time to a control sample in the blood."
  * concept[+] 
    * code = #10022437
    * display = "Insomnia"
    * definition = "A disorder characterized by difficulty in falling asleep and/or remaining asleep."
  * concept[+] 
    * code = #10022763
    * display = "Intracranial hemorrhage"
    * definition = "A disorder characterized by bleeding from the cranium."
  * concept[+] 
    * code = #10022891
    * display = "Investigations - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10022992
    * display = "Irregular menstruation"
    * definition = "A disorder characterized by irregular cycle or duration of menses."
  * concept[+] 
    * code = #10022998
    * display = "Irritability"
    * definition = "A disorder characterized by an abnormal responsiveness to stimuli or physiological arousal; may be in response to pain, fright, a drug, an emotional situation or a medical condition."
  * concept[+] 
    * code = #10023030
    * display = "Ischemia cerebrovascular"
    * definition = "A disorder characterized by a decrease or absence of blood supply to the brain caused by obstruction (thrombosis or embolism) of an artery resulting in neurological damage."
  * concept[+] 
    * code = #10023174
    * display = "Jejunal perforation"
    * definition = "A disorder characterized by a rupture in the jejunal wall."
  * concept[+] 
    * code = #10023176
    * display = "Jejunal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the jejunum."
  * concept[+] 
    * code = #10023177
    * display = "Jejunal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the jejunum."
  * concept[+] 
    * code = #10023215
    * display = "Joint effusion"
    * definition = "A disorder characterized by excessive fluid in a joint, usually as a result of joint inflammation."
  * concept[+] 
    * code = #10023216
    * display = "Joint infection"
    * definition = "A disorder characterized by an infectious process involving a joint."
  * concept[+] 
    * code = #10023332
    * display = "Keratitis"
    * definition = "A disorder characterized by inflammation to the cornea of the eye."
  * concept[+] 
    * code = #10023424
    * display = "Kidney infection"
    * definition = "A disorder characterized by an infectious process involving the kidney."
  * concept[+] 
    * code = #10023509
    * display = "Kyphosis"
    * definition = "A disorder characterized by an abnormal increase in the curvature of the thoracic portion of the spine."
  * concept[+] 
    * code = #10023838
    * display = "Laryngeal edema"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid in the larynx."
  * concept[+] 
    * code = #10023862
    * display = "Laryngeal stenosis"
    * definition = "A disorder characterized by a narrowing of the laryngeal airway."
  * concept[+] 
    * code = #10023874
    * display = "Laryngitis"
    * definition = "A disorder characterized by an inflammatory process involving the larynx."
  * concept[+] 
    * code = #10023891
    * display = "Laryngospasm"
    * definition = "A disorder characterized by paroxysmal spasmodic muscular contraction of the vocal cords."
  * concept[+] 
    * code = #10024264
    * display = "Lethargy"
    * definition = "A disorder characterized by a decrease in consciousness characterized by mental and physical inertness."
  * concept[+] 
    * code = #10024378
    * display = "Leukocytosis"
    * definition = "A disorder characterized by laboratory test results that indicate an increased number of white blood cells in the blood."
  * concept[+] 
    * code = #10024382
    * display = "Leukoencephalopathy"
    * definition = "A disorder characterized by diffuse reactive astrocytosis with multiple areas of necrotic foci without inflammation."
  * concept[+] 
    * code = #10024419
    * display = "Libido decreased"
    * definition = "A disorder characterized by a decrease in sexual desire."
  * concept[+] 
    * code = #10024421
    * display = "Libido increased"
    * definition = "A disorder characterized by an increase in sexual desire."
  * concept[+] 
    * code = #10024561
    * display = "Lip pain"
    * definition = "A disorder characterized by a sensation of marked discomfort of the lip."
  * concept[+] 
    * code = #10024574
    * display = "Lipase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the level of lipase in a biological specimen."
  * concept[+] 
    * code = #10024842
    * display = "Lordosis"
    * definition = "A disorder characterized by an abnormal increase in the curvature of the lumbar portion of the spine."
  * concept[+] 
    * code = #10025182
    * display = "Lymph node pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in a lymph node."
  * concept[+] 
    * code = #10025233
    * display = "Lymphedema"
    * definition = "A disorder characterized by excessive fluid collection in tissues that causes swelling."
  * concept[+] 
    * code = #10025256
    * display = "Lymphocyte count decreased"
    * definition = "A finding based on laboratory test results that indicate a decrease in number of lymphocytes in a blood specimen."
  * concept[+] 
    * code = #10025258
    * display = "Lymphocyte count increased"
    * definition = "A finding based on laboratory test results that indicate an abnormal increase in the number of lymphocytes in the blood, effusions or bone marrow."
  * concept[+] 
    * code = #10025476
    * display = "Malabsorption"
    * definition = "A disorder characterized by inadequate absorption of nutrients in the small intestine. Symptoms include abdominal marked discomfort, bloating and diarrhea."
  * concept[+] 
    * code = #10025482
    * display = "Malaise"
    * definition = "A disorder characterized by a feeling of general discomfort or uneasiness, an out-of-sorts feeling."
  * concept[+] 
    * code = #10026749
    * display = "Mania"
    * definition = "A disorder characterized by excitement of psychotic proportions manifested by mental and physical hyperactivity, disorganization of behavior and elevation of mood."
  * concept[+] 
    * code = #10027175
    * display = "Memory impairment"
    * definition = "A disorder characterized by a deterioration in memory function."
  * concept[+] 
    * code = #10027198
    * display = "Meningismus"
    * definition = "A disorder characterized by neck stiffness, headache, and photophobia resulting from irritation of the cerebral meninges."
  * concept[+] 
    * code = #10027199
    * display = "Meningitis"
    * definition = "A disorder characterized by acute inflammation of the meninges of the brain and/or spinal cord."
  * concept[+] 
    * code = #10027308
    * display = "Menopause"
    * definition = "A disorder characterized by the permanent cessation of menses, usually defined by 12 consecutive months of amenorrhea in a woman over 45 years of age."
  * concept[+] 
    * code = #10027313
    * display = "Menorrhagia"
    * definition = "A disorder characterized by abnormally heavy vaginal bleeding during menses."
  * concept[+] 
    * code = #10027433
    * display = "Metabolism and nutrition disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10027786
    * display = "Mobitz (type) II atrioventricular block"
    * definition = "A disorder characterized by a dysrhythmia with relatively constant PR interval prior to the block of an atrial impulse. This is the result of intermittent failure of atrial electrical impulse conduction through the atrioventricular (AV) node to the ventricles."
  * concept[+] 
    * code = #10027787
    * display = "Mobitz type I"
    * definition = "A disorder characterized by a dysrhythmia with a progressively lengthening PR interval prior to the blocking of an atrial impulse. This is the result of intermittent failure of atrial electrical impulse conduction through the atrioventricular (AV) node to the ventricles."
  * concept[+] 
    * code = #10028041
    * display = "Movements involuntary"
    * definition = "A disorder characterized by uncontrolled and purposeless movements."
  * concept[+] 
    * code = #10028130
    * display = "Mucositis oral"
    * definition = "A disorder characterized by inflammation of the oral mucosal."
  * concept[+] 
    * code = #10028154
    * display = "Multi-organ failure"
    * definition = "A disorder characterized by progressive deterioration of the lungs, liver, kidney and clotting mechanisms."
  * concept[+] 
    * code = #10028395
    * display = "Musculoskeletal and connective tissue disorder - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10028411
    * display = "Myalgia"
    * definition = "A disorder characterized by marked discomfort sensation originating from a muscle or group of muscles."
  * concept[+] 
    * code = #10028524
    * display = "Myelitis"
    * definition = "A disorder characterized by inflammation involving the spinal cord. Symptoms include weakness, paresthesia, sensory loss, marked discomfort and incontinence."
  * concept[+] 
    * code = #10028533
    * display = "Myelodysplastic syndrome"
    * definition = "A disorder characterized by insufficiently healthy hematapoietic cell production by the bone marrow."
  * concept[+] 
    * code = #10028596
    * display = "Myocardial infarction"
    * definition = "A disorder characterized by gross necrosis of the myocardium; this is due to an interruption of blood supply to the area."
  * concept[+] 
    * code = #10028606
    * display = "Myocarditis"
    * definition = "A disorder characterized by inflammation of the muscle tissue of the heart."
  * concept[+] 
    * code = #10028653
    * display = "Myositis"
    * definition = "A disorder characterized by inflammation involving the skeletal muscles."
  * concept[+] 
    * code = #10028691
    * display = "Nail discoloration"
    * definition = "A disorder characterized by a change in the color of the nail plate."
  * concept[+] 
    * code = #10028735
    * display = "Nasal congestion"
    * definition = "A disorder characterized by obstruction of the nasal passage due to mucosal edema."
  * concept[+] 
    * code = #10028813
    * display = "Nausea"
    * definition = "A disorder characterized by a queasy sensation and/or the urge to vomit."
  * concept[+] 
    * code = #10028836
    * display = "Neck pain"
    * definition = "A disorder characterized by marked discomfort sensation in the neck area."
  * concept[+] 
    * code = #10029104
    * display = "Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10029205
    * display = "Nervous system disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10029223
    * display = "Neuralgia"
    * definition = "A disorder characterized by intense painful sensation along a nerve or group of nerves."
  * concept[+] 
    * code = #10029366
    * display = "Neutrophil count decreased"
    * definition = "A finding based on laboratory test results that indicate a decrease in number of neutrophils in a blood specimen."
  * concept[+] 
    * code = #10029404
    * display = "Night blindness"
    * definition = "A disorder characterized by an inability to see clearly in dim light."
  * concept[+] 
    * code = #10029864
    * display = "Nystagmus"
    * definition = "A disorder characterized by involuntary movements of the eyeballs."
  * concept[+] 
    * code = #10029883
    * display = "Obesity"
    * definition = "A disorder characterized by having a high amount of body fat."
  * concept[+] 
    * code = #10029957
    * display = "Obstruction gastric"
    * definition = "A disorder characterized by blockage of the normal flow of the contents in the stomach."
  * concept[+] 
    * code = #10030300
    * display = "Oligospermia"
    * definition = "A disorder characterized by a decrease in the number of spermatozoa in the semen."
  * concept[+] 
    * code = #10030980
    * display = "Oral hemorrhage"
    * definition = "A disorder characterized by bleeding from the mouth."
  * concept[+] 
    * code = #10031009
    * display = "Oral pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the mouth, tongue or lips."
  * concept[+] 
    * code = #10031282
    * display = "Osteoporosis"
    * definition = "A disorder characterized by reduced bone mass, with a decrease in cortical thickness and in the number and size of the trabeculae of cancellous bone (but normal chemical composition), resulting in increased fracture incidence."
  * concept[+] 
    * code = #10033072
    * display = "Otitis externa"
    * definition = "A disorder characterized by an infectious process involving the outer ear and ear canal. Contributory factors include excessive water exposure (swimmer's ear infection) and cuts in the ear canal. Symptoms include fullness, itching, swelling and marked discomfort in the ear and ear drainage."
  * concept[+] 
    * code = #10033078
    * display = "Otitis media"
    * definition = "A disorder characterized by an infectious process involving the middle ear."
  * concept[+] 
    * code = #10033279
    * display = "Ovarian rupture"
    * definition = "A disorder characterized by tearing or disruption of the ovarian tissue."
  * concept[+] 
    * code = #10033314
    * display = "Ovulation pain"
    * definition = "A disorder characterized by marked discomfort sensation in one side of the abdomen between menstrual cycles, around the time of the discharge of the ovum from the ovarian follicle."
  * concept[+] 
    * code = #10033371
    * display = "Pain"
    * definition = "A disorder characterized by the sensation of marked discomfort, distress or agony."
  * concept[+] 
    * code = #10033425
    * display = "Pain in extremity"
    * definition = "A disorder characterized by marked discomfort sensation in the upper or lower extremities."
  * concept[+] 
    * code = #10033474
    * display = "Pain of skin"
    * definition = "A disorder characterized by marked discomfort sensation in the skin."
  * concept[+] 
    * code = #10033557
    * display = "Palpitations"
    * definition = "A disorder characterized by an unpleasant sensation of irregular and/or forceful beating of the heart."
  * concept[+] 
    * code = #10033626
    * display = "Pancreatic hemorrhage"
    * definition = "A disorder characterized by bleeding from the pancreas."
  * concept[+] 
    * code = #10033645
    * display = "Pancreatitis"
    * definition = "A disorder characterized by inflammation of the pancreas."
  * concept[+] 
    * code = #10033703
    * display = "Papilledema"
    * definition = "A disorder characterized by swelling around the optic disc."
  * concept[+] 
    * code = #10033987
    * display = "Paresthesia"
    * definition = "A disorder characterized by functional disturbances of sensory neurons resulting in abnormal cutaneous sensations of tingling, numbness, pressure, cold, and warmth that are experienced in the absence of a stimulus."
  * concept[+] 
    * code = #10034016
    * display = "Paronychia"
    * definition = "A disorder characterized by an infectious process involving the soft tissues around the nail."
  * concept[+] 
    * code = #10034040
    * display = "Paroxysmal atrial tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with abrupt onset and sudden termination of atrial contractions with a rate of 150-250 beats per minute. The rhythm disturbance originates in the atria."
  * concept[+] 
    * code = #10034263
    * display = "Pelvic pain"
    * definition = "A disorder characterized by marked discomfort sensation in the pelvis."
  * concept[+] 
    * code = #10034310
    * display = "Penile pain"
    * definition = "A disorder characterized by marked discomfort sensation in the penis."
  * concept[+] 
    * code = #10034405
    * display = "Perforation bile duct"
    * definition = "A disorder characterized by a rupture in the wall of the extrahepatic or intrahepatic bile duct."
  * concept[+] 
    * code = #10034474
    * display = "Pericardial effusion"
    * definition = "A disorder characterized by fluid collection within the pericardial sac, usually due to inflammation."
  * concept[+] 
    * code = #10034484
    * display = "Pericarditis"
    * definition = "A disorder characterized by irritation to the layers of the pericardium (the protective sac around the heart)."
  * concept[+] 
    * code = #10034536
    * display = "Periodontal disease"
    * definition = "A disorder in the gingival tissue around the teeth."
  * concept[+] 
    * code = #10034578
    * display = "Peripheral ischemia"
    * definition = "A disorder characterized by impaired circulation to an extremity."
  * concept[+] 
    * code = #10034580
    * display = "Peripheral motor neuropathy"
    * definition = "A disorder characterized by inflammation or degeneration of the peripheral motor nerves."
  * concept[+] 
    * code = #10034620
    * display = "Peripheral sensory neuropathy"
    * definition = "A disorder characterized by inflammation or degeneration of the peripheral sensory nerves."
  * concept[+] 
    * code = #10034719
    * display = "Personality change"
    * definition = "A disorder characterized by a conspicuous change in a person's behavior and thinking."
  * concept[+] 
    * code = #10034825
    * display = "Pharyngeal fistula"
    * definition = "A disorder characterized by an abnormal communication between the pharynx and another organ or anatomic site."
  * concept[+] 
    * code = #10034835
    * display = "Pharyngitis"
    * definition = "A disorder characterized by inflammation of the throat."
  * concept[+] 
    * code = #10034844
    * display = "Pharyngolaryngeal pain"
    * definition = "A disorder characterized by marked discomfort sensation in the pharyngolaryngeal region."
  * concept[+] 
    * code = #10034879
    * display = "Phlebitis"
    * definition = "A disorder characterized by inflammation of the wall of a vein."
  * concept[+] 
    * code = #10034960
    * display = "Photophobia"
    * definition = "A disorder characterized by fear and avoidance of light."
  * concept[+] 
    * code = #10034966
    * display = "Photosensitivity"
    * definition = "A disorder characterized by an increase in sensitivity of the skin to light."
  * concept[+] 
    * code = #10035528
    * display = "Platelet count decreased"
    * definition = "A finding based on laboratory test results that indicate a decrease in number of platelets in a blood specimen."
  * concept[+] 
    * code = #10035598
    * display = "Pleural effusion"
    * definition = "A disorder characterized by an increase in amounts of fluid within the pleural cavity. Symptoms include shortness of breath, cough and marked chest discomfort."
  * concept[+] 
    * code = #10035623
    * display = "Pleuritic pain"
    * definition = "A disorder characterized by marked discomfort sensation in the pleura."
  * concept[+] 
    * code = #10035742
    * display = "Pneumonitis"
    * definition = "A disorder characterized by inflammation focally or diffusely affecting the lung parenchyma."
  * concept[+] 
    * code = #10035759
    * display = "Pneumothorax"
    * definition = "A disorder characterized by abnormal presence of air in the pleural cavity resulting in the collapse of the lung."
  * concept[+] 
    * code = #10036200
    * display = "Portal hypertension"
    * definition = "A disorder characterized by an increase in blood pressure in the portal venous system."
  * concept[+] 
    * code = #10036206
    * display = "Portal vein thrombosis"
    * definition = "A disorder characterized by the formation of a thrombus (blood clot) in the portal vein."
  * concept[+] 
    * code = #10036402
    * display = "Postnasal drip"
    * definition = "A disorder characterized by excessive mucous secretion in the back of the nasal cavity or throat, causing sore throat and/or coughing."
  * concept[+] 
    * code = #10036585
    * display = "Pregnancy, puerperium and perinatal conditions - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10036595
    * display = "Premature delivery"
    * definition = "A disorder characterized by delivery of a viable infant before the normal end of gestation. Typically, viability is achievable between the twentieth and thirty-seventh week of gestation."
  * concept[+] 
    * code = #10036601
    * display = "Premature menopause"
    * definition = "A disorder characterized by ovarian failure before the age of 40. Symptoms include hot flashes, night sweats, mood swings and a decrease in sex drive."
  * concept[+] 
    * code = #10036653
    * display = "Presyncope"
    * definition = "A disorder characterized by an episode of lightheadedness and dizziness which may precede an episode of syncope."
  * concept[+] 
    * code = #10036774
    * display = "Proctitis"
    * definition = "A disorder characterized by inflammation of the rectum."
  * concept[+] 
    * code = #10036790
    * display = "Productive cough"
    * definition = "A disorder characterized by expectorated secretions upon coughing."
  * concept[+] 
    * code = #10036968
    * display = "Prostatic pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the prostate gland."
  * concept[+] 
    * code = #10037032
    * display = "Proteinuria"
    * definition = "A disorder characterized by laboratory test results that indicate the presence of excessive protein in the urine. It is predominantly albumin, but also globulin."
  * concept[+] 
    * code = #10037087
    * display = "Pruritus"
    * definition = "A disorder characterized by an intense itching sensation."
  * concept[+] 
    * code = #10037175
    * display = "Psychiatric disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10037234
    * display = "Psychosis"
    * definition = "A disorder characterized by personality change, impaired functioning, and loss of touch with reality. It may be a manifestation of schizophrenia, bipolar disorder or brain tumor."
  * concept[+] 
    * code = #10037375
    * display = "Pulmonary edema"
    * definition = "A disorder characterized by accumulation of fluid in the lung tissues that causes a disturbance of the gas exchange that may lead to respiratory failure."
  * concept[+] 
    * code = #10037383
    * display = "Pulmonary fibrosis"
    * definition = "A disorder characterized by the replacement of the lung tissue by connective tissue, leading to progressive dyspnea, respiratory failure or right heart failure."
  * concept[+] 
    * code = #10037400
    * display = "Pulmonary hypertension"
    * definition = "A disorder characterized by an increase in pressure within the pulmonary circulation due to lung or heart disorder."
  * concept[+] 
    * code = #10037549
    * display = "Purpura"
    * definition = "A disorder characterized by hemorrhagic areas of the skin and mucous membrane. Newer lesions appear reddish in color. Older lesions are usually a darker purple color and eventually become a brownish-yellow color."
  * concept[+] 
    * code = #10037767
    * display = "Radiation recall reaction (dermatologic)"
    * definition = "A finding of acute skin inflammatory reaction caused by drugs, especially chemotherapeutic agents, for weeks or months following radiotherapy. The inflammatory reaction is confined to the previously irradiated skin and the symptoms disappear after the removal of the pharmaceutical agent."
  * concept[+] 
    * code = #10037847
    * display = "Rash acneiform"
    * definition = "A disorder characterized by an eruption of papules and pustules, typically appearing in face, scalp, upper chest and back."
  * concept[+] 
    * code = #10037868
    * display = "Rash maculo-papular"
    * definition = "A disorder characterized by the presence of macules (flat) and papules (elevated). Also known as morbillform rash, it is one of the most common cutaneous adverse events, frequently affecting the upper trunk, spreading centripetally and associated with pruritus."
  * concept[+] 
    * code = #10037888
    * display = "Rash pustular"
    * definition = "A disorder characterized by a circumscribed and elevated skin lesion filled with pus."
  * concept[+] 
    * code = #10038062
    * display = "Rectal fistula"
    * definition = "A disorder characterized by an abnormal communication between the rectum and another organ or anatomic site."
  * concept[+] 
    * code = #10038064
    * display = "Rectal hemorrhage"
    * definition = "A disorder characterized by bleeding from the rectal wall and discharged from the anus."
  * concept[+] 
    * code = #10038072
    * display = "Rectal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the rectal region."
  * concept[+] 
    * code = #10038073
    * display = "Rectal perforation"
    * definition = "A disorder characterized by a rupture in the rectal wall."
  * concept[+] 
    * code = #10038079
    * display = "Rectal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the rectum."
  * concept[+] 
    * code = #10038080
    * display = "Rectal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the rectum."
  * concept[+] 
    * code = #10038130
    * display = "Recurrent laryngeal nerve palsy"
    * definition = "A disorder characterized by paralysis of the recurrent laryngeal nerve."
  * concept[+] 
    * code = #10038359
    * display = "Renal and urinary disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10038385
    * display = "Renal calculi"
    * definition = "A disorder characterized by the formation of crystals in the pelvis of the kidney."
  * concept[+] 
    * code = #10038419
    * display = "Renal colic"
    * definition = "A disorder characterized by paroxysmal and severe flank marked discomfort radiating to the inguinal area. Often, the cause is the passage of kidney stones."
  * concept[+] 
    * code = #10038463
    * display = "Renal hemorrhage"
    * definition = "A disorder characterized by bleeding from the kidney."
  * concept[+] 
    * code = #10038604
    * display = "Reproductive system and breast disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10038695
    * display = "Respiratory failure"
    * definition = "A disorder characterized by impaired gas exchange by the respiratory system resulting in hypoxemia and a decrease in oxygenation of the tissues that may be associated with an increase in arterial levels of carbon dioxide."
  * concept[+] 
    * code = #10038738
    * display = "Respiratory, thoracic and mediastinal disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10038743
    * display = "Restlessness"
    * definition = "A disorder characterized by an inability to rest, relax or be still."
  * concept[+] 
    * code = #10038748
    * display = "Restrictive cardiomyopathy"
    * definition = "A disorder characterized by an inability of the ventricles to fill with blood because the myocardium (heart muscle) stiffens and loses its flexibility."
  * concept[+] 
    * code = #10038848
    * display = "Retinal detachment"
    * definition = "A disorder characterized by the separation of the inner retina layers from the underlying pigment epithelium."
  * concept[+] 
    * code = #10038897
    * display = "Retinal tear"
    * definition = "A disorder characterized by a small laceration of the retina, this occurs when the vitreous separates from the retina. Symptoms include flashes and floaters."
  * concept[+] 
    * code = #10038901
    * display = "Retinal vascular disorder"
    * definition = "A disorder characterized by pathological retinal blood vessels that adversely affects vision."
  * concept[+] 
    * code = #10038921
    * display = "Retinoic acid syndrome"
    * definition = "A disorder characterized by weight gain, dyspnea, pleural and pericardial effusions, leukocytosis and/or renal failure originally described in patients treated with all-trans retinoic acid."
  * concept[+] 
    * code = #10038923
    * display = "Retinopathy"
    * definition = "A disorder involving the retina."
  * concept[+] 
    * code = #10038981
    * display = "Retroperitoneal hemorrhage"
    * definition = "A disorder characterized by bleeding from the retroperitoneal area."
  * concept[+] 
    * code = #10039411
    * display = "Salivary gland fistula"
    * definition = "A disorder characterized by an abnormal communication between a salivary gland and another organ or anatomic site."
  * concept[+] 
    * code = #10039413
    * display = "Salivary gland infection"
    * definition = "A disorder characterized by an infectious process involving the salivary gland."
  * concept[+] 
    * code = #10039722
    * display = "Scoliosis"
    * definition = "A disorder characterized by a malformed, lateral curvature of the spine."
  * concept[+] 
    * code = #10039757
    * display = "Scrotal pain"
    * definition = "A disorder characterized by marked discomfort sensation in the scrotal area."
  * concept[+] 
    * code = #10039906
    * display = "Seizure"
    * definition = "A disorder characterized by a sudden, involuntary skeletal muscular contractions of cerebral or brain stem origin."
  * concept[+] 
    * code = #10040047
    * display = "Sepsis"
    * definition = "A disorder characterized by the presence of pathogenic microorganisms in the blood stream that cause a rapidly progressing systemic reaction that may lead to shock."
  * concept[+] 
    * code = #10040102
    * display = "Seroma"
    * definition = "A finding of tumor-like collection of serum in the tissues."
  * concept[+] 
    * code = #10040139
    * display = "Serum amylase increased"
    * definition = "A finding based on laboratory test results that indicate an increase in the levels of amylase in a serum specimen."
  * concept[+] 
    * code = #10040400
    * display = "Serum sickness"
    * definition = "A disorder characterized by a delayed-type hypersensitivity reaction to foreign proteins derived from an animal serum. It occurs approximately six to twenty-one days following the administration of the foreign antigen. Symptoms include fever, arthralgias, myalgias, skin eruptions, lymphadenopathy, chest marked discomfort and dyspnea."
  * concept[+] 
    * code = #10040639
    * display = "Sick sinus syndrome"
    * definition = "A disorder characterized by a dysrhythmia with alternating periods of bradycardia and atrial tachycardia accompanied by syncope, fatigue and dizziness."
  * concept[+] 
    * code = #10040741
    * display = "Sinus bradycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate less than 60 beats per minute that originates in the sinus node."
  * concept[+] 
    * code = #10040747
    * display = "Sinus pain"
    * definition = "A disorder characterized by marked discomfort in the face, between the eyes, or upper teeth originating from the sinuses."
  * concept[+] 
    * code = #10040752
    * display = "Sinus tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate greater than 100 beats per minute that originates in the sinus node."
  * concept[+] 
    * code = #10040753
    * display = "Sinusitis"
    * definition = "A disorder characterized by an infectious process involving the mucous membranes of the paranasal sinuses."
  * concept[+] 
    * code = #10040785
    * display = "Skin and subcutaneous tissue disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10040799
    * display = "Skin atrophy"
    * definition = "A disorder characterized by the degeneration and thinning of the epidermis and dermis."
  * concept[+] 
    * code = #10040865
    * display = "Skin hyperpigmentation"
    * definition = "A disorder characterized by darkening of the skin due to excessive melanin deposition."
  * concept[+] 
    * code = #10040868
    * display = "Skin hypopigmentation"
    * definition = "A disorder characterized by loss of skin pigment."
  * concept[+] 
    * code = #10040872
    * display = "Skin infection"
    * definition = "A disorder characterized by an infectious process involving the skin."
  * concept[+] 
    * code = #10040947
    * display = "Skin ulceration"
    * definition = "A disorder characterized by circumscribed, inflammatory and necrotic erosive lesion on the skin."
  * concept[+] 
    * code = #10040975
    * display = "Sleep apnea"
    * definition = "A disorder characterized by cessation of breathing for short periods during sleep."
  * concept[+] 
    * code = #10041101
    * display = "Small intestinal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents."
  * concept[+] 
    * code = #10041103
    * display = "Small intestinal perforation"
    * definition = "A disorder characterized by a rupture in the small intestine wall."
  * concept[+] 
    * code = #10041133
    * display = "Small intestine ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the mucosal surface of the small intestine."
  * concept[+] 
    * code = #10041232
    * display = "Sneezing"
    * definition = "A disorder characterized by the involuntary expulsion of air from the nose."
  * concept[+] 
    * code = #10041244
    * display = "Social circumstances - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10041349
    * display = "Somnolence"
    * definition = "A disorder characterized by characterized by excessive sleepiness and drowsiness."
  * concept[+] 
    * code = #10041367
    * display = "Sore throat"
    * definition = "A disorder characterized by of marked discomfort in the throat"
  * concept[+] 
    * code = #10041416
    * display = "Spasticity"
    * definition = "A disorder characterized by increased involuntary muscle tone that affects the regions interfering with voluntary movement. It results in gait, movement, and speech disturbances."
  * concept[+] 
    * code = #10041569
    * display = "Spinal fracture"
    * definition = "A finding of traumatic injury to the spine in which the continuity of a vertebral bone is broken."
  * concept[+] 
    * code = #10041633
    * display = "Spleen disorder"
    * definition = "A disorder of the spleen."
  * concept[+] 
    * code = #10042033
    * display = "Stevens-Johnson syndrome"
    * definition = "A disorder characterized by less than 10% total body skin area separation of dermis. The syndrome is thought to be a hypersensitivity complex affecting the skin and the mucous membranes."
  * concept[+] 
    * code = #10042112
    * display = "Stomach pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the stomach."
  * concept[+] 
    * code = #10042127
    * display = "Stomal ulcer"
    * definition = "A disorder characterized by a circumscribed, inflammatory and necrotic erosive lesion on the jejunal mucosal surface close to the anastomosis site following a gastroenterostomy procedure."
  * concept[+] 
    * code = #10042241
    * display = "Stridor"
    * definition = "A disorder characterized by a high pitched breathing sound due to laryngeal or upper airway obstruction."
  * concept[+] 
    * code = #10042244
    * display = "Stroke"
    * definition = "A disorder characterized by a sudden loss of sensory function due to an intracranial vascular event."
  * concept[+] 
    * code = #10042435
    * display = "Sudden death NOS"
    * definition = "An unexpected cessation of life that cannot be attributed to a CTCAE term associated with Grade 5."
  * concept[+] 
    * code = #10042458
    * display = "Suicidal ideation"
    * definition = "A disorder characterized by thoughts of taking one's own life."
  * concept[+] 
    * code = #10042464
    * display = "Suicide attempt"
    * definition = "A disorder characterized by self-inflicted harm in an attempt to end one's own life."
  * concept[+] 
    * code = #10042554
    * display = "Superficial thrombophlebitis"
    * definition = "A disorder characterized by a blood clot and inflammation involving a superficial vein of the extremities."
  * concept[+] 
    * code = #10042569
    * display = "Superior vena cava syndrome"
    * definition = "A disorder characterized by obstruction of the blood flow in the superior vena cava. Signs and symptoms include swelling and cyanosis of the face, neck, and upper arms, cough, orthopnea and headache."
  * concept[+] 
    * code = #10042604
    * display = "Supraventricular tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate greater than 100 beats per minute that originates above the ventricles."
  * concept[+] 
    * code = #10042613
    * display = "Surgical and medical procedures - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10042772
    * display = "Syncope"
    * definition = "A disorder characterized by spontaneous loss of consciousness caused by insufficient blood supply to the brain."
  * concept[+] 
    * code = #10043189
    * display = "Telangiectasia"
    * definition = "A disorder characterized by local dilatation of small vessels resulting in red discoloration of the skin or mucous membranes."
  * concept[+] 
    * code = #10043306
    * display = "Testicular disorder"
    * definition = "A disorder characterized by involvement of the testis."
  * concept[+] 
    * code = #10043345
    * display = "Testicular pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the testis."
  * concept[+] 
    * code = #10043565
    * display = "Thromboembolic event"
    * definition = "A disorder characterized by occlusion of a vessel by a thrombus that has migrated from a distal site via the blood stream."
  * concept[+] 
    * code = #10043648
    * display = "Thrombotic thrombocytopenic purpura"
    * definition = "A disorder characterized by the presence of microangiopathic hemolytic anemia, thrombocytopenic purpura, fever, renal abnormalities and neurological abnormalities such as seizures, hemiplegia, and visual disturbances. It is an acute or subacute condition."
  * concept[+] 
    * code = #10043882
    * display = "Tinnitus"
    * definition = "A disorder characterized by noise in the ears, such as ringing, buzzing, roaring or clicking."
  * concept[+] 
    * code = #10044030
    * display = "Tooth development disorder"
    * definition = "A disorder characterized by a pathological process of the teeth occurring during tooth development."
  * concept[+] 
    * code = #10044031
    * display = "Tooth discoloration"
    * definition = "A disorder characterized by a change in tooth hue or tint."
  * concept[+] 
    * code = #10044055
    * display = "Toothache"
    * definition = "A disorder characterized by a sensation of marked discomfort in the tooth."
  * concept[+] 
    * code = #10044223
    * display = "Toxic epidermal necrolysis"
    * definition = "A disorder characterized by greater than 30% total body skin area separation of dermis. The syndrome is thought to be a hypersensitivity complex affecting the skin and the mucous membranes."
  * concept[+] 
    * code = #10044291
    * display = "Tracheal obstruction"
    * definition = "A finding of blockage of the lumen of the trachea."
  * concept[+] 
    * code = #10044302
    * display = "Tracheitis"
    * definition = "A disorder characterized by an infectious process involving the trachea."
  * concept[+] 
    * code = #10044391
    * display = "Transient ischemic attacks"
    * definition = "A disorder characterized by a brief attack (less than 24 hours) of cerebral dysfunction of vascular origin, with no persistent neurological deficit."
  * concept[+] 
    * code = #10044565
    * display = "Tremor"
    * definition = "A disorder characterized by the uncontrolled shaking movement of the whole body or individual parts."
  * concept[+] 
    * code = #10044684
    * display = "Trismus"
    * definition = "A disorder characterized by lack of ability to open the mouth fully due to a decrease in the range of motion of the muscles of mastication."
  * concept[+] 
    * code = #10045152
    * display = "Tumor lysis syndrome"
    * definition = "A disorder characterized by metabolic abnormalities that result from a spontaneous or therapy-related cytolysis of tumor cells."
  * concept[+] 
    * code = #10045158
    * display = "Tumor pain"
    * definition = "A disorder characterized by marked discomfort from a neoplasm that may be pressing on a nerve, blocking blood vessels, inflamed or fractured from metastasis."
  * concept[+] 
    * code = #10045271
    * display = "Typhlitis"
    * definition = "A disorder characterized by inflammation of the cecum."
  * concept[+] 
    * code = #10045542
    * display = "Unintended pregnancy"
    * definition = "A disorder characterized by an unexpected pregnancy at the time of conception."
  * concept[+] 
    * code = #10046300
    * display = "Upper respiratory infection"
    * definition = "A disorder characterized by an infectious process involving the upper respiratory tract (nose, paranasal sinuses, pharynx, larynx, or trachea)."
  * concept[+] 
    * code = #10046539
    * display = "Urinary frequency"
    * definition = "A disorder characterized by urination at short intervals."
  * concept[+] 
    * code = #10046543
    * display = "Urinary incontinence"
    * definition = "A disorder characterized by inability to control the flow of urine from the bladder."
  * concept[+] 
    * code = #10046555
    * display = "Urinary retention"
    * definition = "A disorder characterized by accumulation of urine within the bladder because of the inability to urinate."
  * concept[+] 
    * code = #10046571
    * display = "Urinary tract infection"
    * definition = "A disorder characterized by an infectious process involving the urinary tract, most commonly the bladder and the urethra."
  * concept[+] 
    * code = #10046593
    * display = "Urinary urgency"
    * definition = "A disorder characterized by a sudden compelling urge to urinate."
  * concept[+] 
    * code = #10046628
    * display = "Urine discoloration"
    * definition = "A disorder characterized by a change in the color of the urine."
  * concept[+] 
    * code = #10046735
    * display = "Urticaria"
    * definition = "A disorder characterized by an itchy skin eruption characterized by wheals with pale interiors and well-defined red margins."
  * concept[+] 
    * code = #10046789
    * display = "Uterine hemorrhage"
    * definition = "A disorder characterized by bleeding from the uterus."
  * concept[+] 
    * code = #10046809
    * display = "Uterine pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the uterus."
  * concept[+] 
    * code = #10046810
    * display = "Uterine perforation"
    * definition = "A disorder characterized by a rupture in the uterine wall."
  * concept[+] 
    * code = #10046851
    * display = "Uveitis"
    * definition = "A disorder characterized by inflammation to the uvea of the eye."
  * concept[+] 
    * code = #10046901
    * display = "Vaginal discharge"
    * definition = "A disorder characterized by vaginal secretions. Mucus produced by the cervical glands is discharged from the vagina naturally, especially during the childbearing years."
  * concept[+] 
    * code = #10046904
    * display = "Vaginal dryness"
    * definition = "A disorder characterized by an uncomfortable feeling of itching and burning in the vagina."
  * concept[+] 
    * code = #10046912
    * display = "Vaginal hemorrhage"
    * definition = "A disorder characterized by bleeding from the vagina."
  * concept[+] 
    * code = #10046914
    * display = "Vaginal infection"
    * definition = "A disorder characterized by an infectious process involving the vagina."
  * concept[+] 
    * code = #10046916
    * display = "Vaginal inflammation"
    * definition = "A disorder characterized by inflammation involving the vagina. Symptoms may include redness, edema, marked discomfort and an increase in vaginal discharge."
  * concept[+] 
    * code = #10046937
    * display = "Vaginal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the vagina."
  * concept[+] 
    * code = #10046947
    * display = "Vaginismus"
    * definition = "A disorder characterized by involuntary spasms of the pelvic floor muscles, resulting in pathologic tightness of the vaginal wall during penetration such as during sexual intercourse."
  * concept[+] 
    * code = #10047065
    * display = "Vascular disorders - Other, specify"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #10047115
    * display = "Vasculitis"
    * definition = "A disorder characterized by inflammation involving the wall of a vessel."
  * concept[+] 
    * code = #10047166
    * display = "Vasovagal reaction"
    * definition = "A disorder characterized by a sudden drop of the blood pressure, bradycardia, and peripheral vasodilation that may lead to loss of consciousness. It results from an increase in the stimulation of the vagus nerve."
  * concept[+] 
    * code = #10047228
    * display = "Venous injury"
    * definition = "A finding of damage to a vein."
  * concept[+] 
    * code = #10047281
    * display = "Ventricular arrhythmia"
    * definition = "A disorder characterized by a dysrhythmia that originates in the ventricles."
  * concept[+] 
    * code = #10047290
    * display = "Ventricular fibrillation"
    * definition = "A disorder characterized by a dysrhythmia without discernible QRS complexes due to rapid repetitive excitation of myocardial fibers without coordinated contraction of the ventricles."
  * concept[+] 
    * code = #10047302
    * display = "Ventricular tachycardia"
    * definition = "A disorder characterized by a dysrhythmia with a heart rate greater than 100 beats per minute that originates distal to the bundle of His."
  * concept[+] 
    * code = #10047340
    * display = "Vertigo"
    * definition = "A disorder characterized by a sensation as if the external world were revolving around the patient (objective vertigo) or as if he himself were revolving in space (subjective vertigo)."
  * concept[+] 
    * code = #10047386
    * display = "Vestibular disorder"
    * definition = "A disorder characterized by dizziness, imbalance, nausea, and vision problems."
  * concept[+] 
    * code = #10047488
    * display = "Virilization"
    * definition = "A disorder characterized by inappropriate masculinization occurring in a female or prepubertal male."
  * concept[+] 
    * code = #10047580
    * display = "Vital capacity abnormal"
    * definition = "A finding based on pulmonary function test results that indicate an abnormal vital capacity (amount of exhaled after a maximum inhalation) when compared to the predicted value."
  * concept[+] 
    * code = #10047656
    * display = "Vitreous hemorrhage"
    * definition = "A disorder characterized by blood extravasation into the vitreous humor."
  * concept[+] 
    * code = #10047681
    * display = "Voice alteration"
    * definition = "A disorder characterized by a change in the sound and/or speed of the voice."
  * concept[+] 
    * code = #10047700
    * display = "Vomiting"
    * definition = "A disorder characterized by the reflexive act of ejecting the contents of the stomach through the mouth."
  * concept[+] 
    * code = #10047848
    * display = "Watering eyes"
    * definition = "A disorder of excessive tearing in the eyes; it can be caused by overproduction of tears or impaired drainage of the tear duct."
  * concept[+] 
    * code = #10047896
    * display = "Weight gain"
    * definition = "A finding characterized by an increase in overall body weight; for pediatrics, greater than the baseline growth curve."
  * concept[+] 
    * code = #10047900
    * display = "Weight loss"
    * definition = "A finding characterized by a decrease in overall body weight; for pediatrics, less than the baseline growth curve."
  * concept[+] 
    * code = #10047924
    * display = "Wheezing"
    * definition = "A disorder characterized by a high-pitched, whistling sound during breathing. It results from the narrowing or obstruction of the respiratory airways."
  * concept[+] 
    * code = #10048015
    * display = "Wolff-Parkinson-White syndrome"
    * definition = "A disorder characterized by the presence of an accessory conductive pathway between the atria and the ventricles that causes premature ventricular activation."
  * concept[+] 
    * code = #10048031
    * display = "Wound dehiscence"
    * definition = "A finding of separation of the approximated margins of a surgical wound."
  * concept[+] 
    * code = #10048038
    * display = "Wound infection"
    * definition = "A disorder characterized by an infectious process involving the wound."
  * concept[+] 
    * code = #10048049
    * display = "Wrist fracture"
    * definition = "A finding of traumatic injury to the wrist joint in which the continuity of a wrist bone is broken."
  * concept[+] 
    * code = #10048293
    * display = "Leukemia secondary to oncology chemotherapy"
    * definition = "A disorder characterized by leukemia arising as a result of the mutagenic effect of chemotherapy agents."
  * concept[+] 
    * code = #10048492
    * display = "Corneal ulcer"
    * definition = "A disorder characterized by an area of epithelial tissue loss on the surface of the cornea. It is associated with inflammatory cells in the cornea and anterior chamber."
  * concept[+] 
    * code = #10048580
    * display = "Bone marrow hypocellular"
    * definition = "A disorder characterized by the inability of the bone marrow to produce hematopoietic elements."
  * concept[+] 
    * code = #10048642
    * display = "Lymphocele"
    * definition = "A disorder characterized by a cystic lesion containing lymph."
  * concept[+] 
    * code = #10048677
    * display = "Buttock pain"
    * definition = "A disorder characterized by marked discomfort sensation in the buttocks."
  * concept[+] 
    * code = #10048706
    * display = "Joint range of motion decreased"
    * definition = "A disorder characterized by a decrease in joint flexibility of any joint."
  * concept[+] 
    * code = #10048762
    * display = "Tooth infection"
    * definition = "A disorder characterized by an infectious process involving a tooth."
  * concept[+] 
    * code = #10048994
    * display = "Bladder spasm"
    * definition = "A disorder characterized by a sudden and involuntary contraction of the bladder wall."
  * concept[+] 
    * code = #10049120
    * display = "Scalp pain"
    * definition = "A disorder characterized by marked discomfort sensation in the skin covering the top and the back of the head."
  * concept[+] 
    * code = #10049182
    * display = "White blood cell decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in number of white blood cells in a blood specimen."
  * concept[+] 
    * code = #10049192
    * display = "Pancreatic fistula"
    * definition = "A disorder characterized by an abnormal communication between the pancreas and another organ or anatomic site."
  * concept[+] 
    * code = #10049281
    * display = "Nail loss"
    * definition = "A disorder characterized by loss of all or a portion of the nail."
  * concept[+] 
    * code = #10049468
    * display = "Intestinal stoma site bleeding"
    * definition = "A finding of blood leakage from the intestinal stoma."
  * concept[+] 
    * code = #10049737
    * display = "Treatment related secondary malignancy"
    * definition = "A disorder characterized by development of a malignancy most probably as a result of treatment for a previously existing malignancy."
  * concept[+] 
    * code = #10050028
    * display = "Pharyngeal stenosis"
    * definition = "A disorder characterized by a narrowing of the pharyngeal airway."
  * concept[+] 
    * code = #10050068
    * display = "Edema limbs"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation in the upper or lower extremities."
  * concept[+] 
    * code = #10050094
    * display = "Duodenal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the duodenum."
  * concept[+] 
    * code = #10050457
    * display = "Pancreatic anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a pancreatic anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10050458
    * display = "Biliary anastomotic leak"
    * definition = "A finding of leakage of bile due to breakdown of a biliary anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10050528
    * display = "Ejection fraction decreased"
    * definition = "The percentage computed when the amount of blood ejected during a ventricular contraction of the heart is compared to the amount that was present prior to the contraction."
  * concept[+] 
    * code = #10050662
    * display = "Prostate infection"
    * definition = "A disorder characterized by an infectious process involving the prostate gland."
  * concept[+] 
    * code = #10050816
    * display = "Tracheal stenosis"
    * definition = "A disorder characterized by a narrowing of the trachea."
  * concept[+] 
    * code = #10050823
    * display = "Lymph gland infection"
    * definition = "A disorder characterized by an infectious process involving the lymph nodes."
  * concept[+] 
    * code = #10051228
    * display = "Chylothorax"
    * definition = "A disorder characterized by milky pleural effusion (abnormal collection of fluid) resulting from accumulation of lymph fluid in the pleural cavity."
  * concept[+] 
    * code = #10051272
    * display = "Facial muscle weakness"
    * definition = "A disorder characterized by a reduction in the strength of the facial muscles."
  * concept[+] 
    * code = #10051341
    * display = "Bile duct stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the bile duct."
  * concept[+] 
    * code = #10051472
    * display = "Periorbital infection"
    * definition = "A disorder characterized by an infectious process involving the orbit of the eye."
  * concept[+] 
    * code = #10051592
    * display = "Acute coronary syndrome"
    * definition = "A disorder characterized by signs and symptoms related to acute ischemia of the myocardium secondary to coronary artery disease. The clinical presentation covers a spectrum of heart diseases from unstable angina to myocardial infarction."
  * concept[+] 
    * code = #10051741
    * display = "Pancreas infection"
    * definition = "A disorder characterized by an infectious process involving the pancreas."
  * concept[+] 
    * code = #10051746
    * display = "Lower gastrointestinal hemorrhage"
    * definition = "A disorder characterized by bleeding from the lower gastrointestinal tract (small intestine, large intestine, and anus)."
  * concept[+] 
    * code = #10051792
    * display = "Infusion related reaction"
    * definition = "A disorder characterized by adverse reaction to the infusion of pharmacological or biological substances."
  * concept[+] 
    * code = #10051837
    * display = "Skin induration"
    * definition = "A disorder characterized by an area of hardness in the skin."
  * concept[+] 
    * code = #10051886
    * display = "Gastric necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the gastric wall."
  * concept[+] 
    * code = #10052015
    * display = "Cytokine release syndrome"
    * definition = "A disorder characterized by nausea, headache, tachycardia, hypotension, rash, and shortness of breath; it is caused by the release of cytokines from the cells."
  * concept[+] 
    * code = #10052298
    * display = "Urethral infection"
    * definition = "A disorder characterized by an infectious process involving the urethra."
  * concept[+] 
    * code = #10052426
    * display = "Glucose intolerance"
    * definition = "A disorder characterized by an inability to properly metabolize glucose."
  * concept[+] 
    * code = #10053481
    * display = "Bronchopleural fistula"
    * definition = "A disorder characterized by an abnormal communication between a bronchus and the pleural cavity."
  * concept[+] 
    * code = #10053496
    * display = "Vaginal stricture"
    * definition = "A disorder characterized by a narrowing of the vaginal canal."
  * concept[+] 
    * code = #10053565
    * display = "Pericardial tamponade"
    * definition = "A disorder characterized by an increase in intrapericardial pressure due to the collection of blood or fluid in the pericardium."
  * concept[+] 
    * code = #10053661
    * display = "Oculomotor nerve disorder"
    * definition = "A disorder characterized by involvement of the oculomotor nerve (third cranial nerve)."
  * concept[+] 
    * code = #10053662
    * display = "Abducens nerve disorder"
    * definition = "A disorder characterized by involvement of the abducens nerve (sixth cranial nerve)."
  * concept[+] 
    * code = #10053692
    * display = "Wound complication"
    * definition = "A finding of development of a new problem at the site of an existing wound."
  * concept[+] 
    * code = #10054382
    * display = "Feminization acquired"
    * definition = "A disorder characterized by the development of secondary female sex characteristics in males due to extrinsic factors."
  * concept[+] 
    * code = #10054482
    * display = "Neck edema"
    * definition = "A disorder characterized by swelling due to an accumulation of excessive fluid in the neck."
  * concept[+] 
    * code = #10054520
    * display = "Oral dysesthesia"
    * definition = "A disorder characterized by a burning or tingling sensation on the lips, tongue or entire mouth."
  * concept[+] 
    * code = #10054524
    * display = "Palmar-plantar erythrodysesthesia syndrome"
    * definition = "A disorder characterized by redness, marked discomfort, swelling, and tingling in the palms of the hands or the soles of the feet."
  * concept[+] 
    * code = #10054541
    * display = "Periorbital edema"
    * definition = "A disorder characterized by swelling due to an excessive accumulation of fluid around the orbits of the face."
  * concept[+] 
    * code = #10054692
    * display = "Visceral arterial ischemia"
    * definition = "A disorder characterized by a decrease in blood supply due to narrowing or blockage of a visceral (mesenteric) artery."
  * concept[+] 
    * code = #10054746
    * display = "Fetal growth retardation"
    * definition = "A disorder characterized by inhibition of fetal growth resulting in the inability of the fetus to achieve its potential weight."
  * concept[+] 
    * code = #10055005
    * display = "Ovarian infection"
    * definition = "A disorder characterized by an infectious process involving the ovary."
  * concept[+] 
    * code = #10055026
    * display = "Prostatic obstruction"
    * definition = "A disorder characterized by compression of the urethra secondary to enlargement of the prostate gland. This results in voiding difficulties (straining to void, slow urine stream, and incomplete emptying of the bladder)."
  * concept[+] 
    * code = #10055078
    * display = "Bronchial infection"
    * definition = "A disorder characterized by an infectious process involving the bronchi."
  * concept[+] 
    * code = #10055226
    * display = "Anal hemorrhage"
    * definition = "A disorder characterized by bleeding from the anal region."
  * concept[+] 
    * code = #10055242
    * display = "Duodenal hemorrhage"
    * definition = "A disorder characterized by bleeding from the duodenum."
  * concept[+] 
    * code = #10055287
    * display = "Ileal hemorrhage"
    * definition = "A disorder characterized by bleeding from the ileal wall."
  * concept[+] 
    * code = #10055291
    * display = "Intra-abdominal hemorrhage"
    * definition = "A disorder characterized by bleeding in the abdominal cavity."
  * concept[+] 
    * code = #10055298
    * display = "Intraoperative hemorrhage"
    * definition = "A finding of uncontrolled bleeding during a surgical procedure."
  * concept[+] 
    * code = #10055300
    * display = "Jejunal hemorrhage"
    * definition = "A disorder characterized by bleeding from the jejunal wall."
  * concept[+] 
    * code = #10055315
    * display = "Pharyngeal hemorrhage"
    * definition = "A disorder characterized by bleeding from the pharynx."
  * concept[+] 
    * code = #10055319
    * display = "Pleural hemorrhage"
    * definition = "A disorder characterized by bleeding from the pleural cavity."
  * concept[+] 
    * code = #10055322
    * display = "Postoperative hemorrhage"
    * definition = "A finding of bleeding occurring after a surgical procedure."
  * concept[+] 
    * code = #10055325
    * display = "Prostatic hemorrhage"
    * definition = "A disorder characterized by bleeding from the prostate gland."
  * concept[+] 
    * code = #10055347
    * display = "Testicular hemorrhage"
    * definition = "A disorder characterized by bleeding from the testis."
  * concept[+] 
    * code = #10055356
    * display = "Upper gastrointestinal hemorrhage"
    * definition = "A disorder characterized by bleeding from the upper gastrointestinal tract (oral cavity, pharynx, esophagus, and stomach)."
  * concept[+] 
    * code = #10055472
    * display = "Esophageal perforation"
    * definition = "A disorder characterized by a rupture in the wall of the esophagus."
  * concept[+] 
    * code = #10055599
    * display = "Hemoglobin increased"
    * definition = "A finding based on laboratory test results that indicate increased levels of hemoglobin in a biological specimen."
  * concept[+] 
    * code = #10056238
    * display = "Phantom pain"
    * definition = "A disorder characterized by marked discomfort related to a limb or an organ that is removed from or is not physically part of the body."
  * concept[+] 
    * code = #10056356
    * display = "Mediastinal hemorrhage"
    * definition = "A disorder characterized by bleeding from the mediastinum."
  * concept[+] 
    * code = #10056388
    * display = "Olfactory nerve disorder"
    * definition = "A disorder characterized by involvement of the olfactory nerve (first cranial nerve)."
  * concept[+] 
    * code = #10056519
    * display = "Abdominal infection"
    * definition = "A disorder characterized by an infectious process involving the abdominal cavity."
  * concept[+] 
    * code = #10056522
    * display = "Hepatic infection"
    * definition = "A disorder characterized by an infectious process involving the liver."
  * concept[+] 
    * code = #10056627
    * display = "Phlebitis infective"
    * definition = "A disorder characterized by an infectious process involving the vein. Clinical manifestations include erythema, marked discomfort, swelling, and induration along the course of the infected vein."
  * concept[+] 
    * code = #10056681
    * display = "Salivary duct inflammation"
    * definition = "A disorder characterized by inflammation of the salivary duct."
  * concept[+] 
    * code = #10056745
    * display = "Postoperative thoracic procedure complication"
    * definition = "A finding of a previously undocumented problem that occurs after a thoracic procedure."
  * concept[+] 
    * code = #10056910
    * display = "GGT increased"
    * definition = "A finding based on laboratory test results that indicate higher than normal levels of the enzyme gamma-glutamyltransferase in the blood specimen. GGT (gamma-glutamyltransferase ) catalyzes the transfer of a gamma glutamyl group from a gamma glutamyl peptide to another peptide, amino acids or water."
  * concept[+] 
    * code = #10057066
    * display = "Delayed orgasm"
    * definition = "A disorder characterized by sexual dysfunction characterized by a delay in climax."
  * concept[+] 
    * code = #10057262
    * display = "Peritoneal infection"
    * definition = "A disorder characterized by an infectious process involving the peritoneum."
  * concept[+] 
    * code = #10057483
    * display = "Mediastinal infection"
    * definition = "A disorder characterized by an infectious process involving the mediastinum."
  * concept[+] 
    * code = #10058084
    * display = "Precocious puberty"
    * definition = "A disorder characterized by unusually early development of secondary sexual features; the onset of sexual maturation begins usually before age 8 for girls and before age 9 for boys."
  * concept[+] 
    * code = #10058096
    * display = "Pancreatic necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the pancreas."
  * concept[+] 
    * code = #10058597
    * display = "Right ventricular dysfunction"
    * definition = "A disorder characterized by impairment of right ventricular function associated with low ejection fraction and a decrease in motility of the right ventricular wall."
  * concept[+] 
    * code = #10058674
    * display = "Pelvic infection"
    * definition = "A disorder characterized by an infectious process involving the pelvic cavity."
  * concept[+] 
    * code = #10058720
    * display = "Edema trunk"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation in the trunk area."
  * concept[+] 
    * code = #10058804
    * display = "Esophageal infection"
    * definition = "A disorder characterized by an infectious process involving the esophagus."
  * concept[+] 
    * code = #10058838
    * display = "Enterocolitis infectious"
    * definition = "A disorder characterized by an infectious process involving the small and large intestines."
  * concept[+] 
    * code = #10059094
    * display = "Intestinal stoma obstruction"
    * definition = "A finding of blockage of the normal flow of the contents of the intestinal stoma."
  * concept[+] 
    * code = #10059095
    * display = "Intestinal stoma leak"
    * definition = "A finding of leakage of contents from an intestinal stoma (surgically created opening on the surface of the body)."
  * concept[+] 
    * code = #10059446
    * display = "Gallbladder necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the gallbladder."
  * concept[+] 
    * code = #10059639
    * display = "Laryngeal obstruction"
    * definition = "A disorder characterized by blockage of the laryngeal airway."
  * concept[+] 
    * code = #10059827
    * display = "Rhinitis infective"
    * definition = "A disorder characterized by an infectious process involving the nasal mucosal."
  * concept[+] 
    * code = #10059895
    * display = "Urine output decreased"
    * definition = "A finding based on test results that indicate urine production is less relative to previous output."
  * concept[+] 
    * code = #10060602
    * display = "Hematosalpinx"
    * definition = "A disorder characterized by the presence of blood in a fallopian tube."
  * concept[+] 
    * code = #10060640
    * display = "Hemorrhoidal hemorrhage"
    * definition = "A disorder characterized by bleeding from the hemorrhoids."
  * concept[+] 
    * code = #10060890
    * display = "Trigeminal nerve disorder"
    * definition = "A disorder characterized by involvement of the trigeminal nerve (fifth cranial nerve)."
  * concept[+] 
    * code = #10060929
    * display = "Accessory nerve disorder"
    * definition = "A disorder characterized by involvement of the accessory nerve (eleventh cranial nerve)."
  * concept[+] 
    * code = #10061017
    * display = "Bone infection"
    * definition = "A disorder characterized by an infectious process involving the bones."
  * concept[+] 
    * code = #10061103
    * display = "Dermatitis radiation"
    * definition = "A finding of cutaneous inflammatory reaction occurring as a result of exposure to biologically effective levels of ionizing radiation."
  * concept[+] 
    * code = #10061145
    * display = "Eyelid function disorder"
    * definition = "A disorder characterized by impaired eyelid function."
  * concept[+] 
    * code = #10061149
    * display = "Female genital tract fistula"
    * definition = "A disorder characterized by an abnormal communication between a female reproductive system organ and another organ or anatomic site."
  * concept[+] 
    * code = #10061185
    * display = "Glossopharyngeal nerve disorder"
    * definition = "A disorder characterized by involvement of the glossopharyngeal nerve (ninth cranial nerve)."
  * concept[+] 
    * code = #10061212
    * display = "Hypoglossal nerve disorder"
    * definition = "A disorder characterized by involvement of the hypoglossal nerve (twelfth cranial nerve)."
  * concept[+] 
    * code = #10061229
    * display = "Lung infection"
    * definition = "A disorder characterized by an infectious process involving the lungs."
  * concept[+] 
    * code = #10061261
    * display = "Lactation disorder"
    * definition = "A disorder characterized by disturbances of milk secretion. It is not necessarily related to pregnancy that is observed in females and can be observed in males."
  * concept[+] 
    * code = #10061304
    * display = "Nail infection"
    * definition = "A disorder characterized by an infectious process involving the nail."
  * concept[+] 
    * code = #10061322
    * display = "Optic nerve disorder"
    * definition = "A disorder characterized by involvement of the optic nerve (second cranial nerve)."
  * concept[+] 
    * code = #10061339
    * display = "Perineal pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the area between the genital organs and the anus."
  * concept[+] 
    * code = #10061351
    * display = "Pleural infection"
    * definition = "A disorder characterized by an infectious process involving the pleura."
  * concept[+] 
    * code = #10061389
    * display = "Tricuspid valve disease"
    * definition = "A disorder characterized by a defect in tricuspid valve function or structure."
  * concept[+] 
    * code = #10061403
    * display = "Vagus nerve disorder"
    * definition = "A disorder characterized by involvement of the vagus nerve (tenth cranial nerve)."
  * concept[+] 
    * code = #10061457
    * display = "Facial nerve disorder"
    * definition = "A disorder characterized by involvement of the facial nerve (seventh cranial nerve)."
  * concept[+] 
    * code = #10061461
    * display = "Erectile dysfunction"
    * definition = "A disorder characterized by the persistent or recurrent inability to achieve or to maintain an erection during sexual activity."
  * concept[+] 
    * code = #10061510
    * display = "Scleral disorder"
    * definition = "A disorder characterized by involvement of the sclera of the eye."
  * concept[+] 
    * code = #10061532
    * display = "Mitral valve disease"
    * definition = "A disorder characterized by a defect in mitral valve function or structure."
  * concept[+] 
    * code = #10061541
    * display = "Pulmonary valve disease"
    * definition = "A disorder characterized by a defect in pulmonary valve function or structure."
  * concept[+] 
    * code = #10061574
    * display = "Urinary tract obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of contents of the urinary tract."
  * concept[+] 
    * code = #10061589
    * display = "Aortic valve disease"
    * definition = "A disorder characterized by a defect in aortic valve function or structure."
  * concept[+] 
    * code = #10061640
    * display = "Anorectal infection"
    * definition = "A disorder characterized by an infectious process involving the anal area and the rectum."
  * concept[+] 
    * code = #10061664
    * display = "Autoimmune disorder"
    * definition = "A disorder resulting from loss of function or tissue destruction of an organ or multiple organs, arising from humoral or cellular immune responses of the individual to his own tissue constituents."
  * concept[+] 
    * code = #10061695
    * display = "Biliary tract infection"
    * definition = "A disorder characterized by an infectious process involving the biliary tract."
  * concept[+] 
    * code = #10061788
    * display = "Corneal infection"
    * definition = "A disorder characterized by an infectious process involving the cornea."
  * concept[+] 
    * code = #10061912
    * display = "Penile infection"
    * definition = "A disorder characterized by an infectious process involving the penis."
  * concept[+] 
    * code = #10061928
    * display = "Radiculitis"
    * definition = "A disorder characterized by inflammation involving a nerve root. Patients experience marked discomfort radiating along a nerve path because of spinal pressure on the connecting nerve root."
  * concept[+] 
    * code = #10061970
    * display = "Gastric stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the stomach."
  * concept[+] 
    * code = #10062112
    * display = "Splenic infection"
    * definition = "A disorder characterized by an infectious process involving the spleen."
  * concept[+] 
    * code = #10062156
    * display = "Scrotal infection"
    * definition = "A disorder characterized by an infectious process involving the scrotum."
  * concept[+] 
    * code = #10062169
    * display = "Vascular access complication"
    * definition = "A finding of a previously undocumented problem related to the vascular access site."
  * concept[+] 
    * code = #10062225
    * display = "Urinary tract pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the urinary tract."
  * concept[+] 
    * code = #10062233
    * display = "Uterine infection"
    * definition = "A disorder characterized by an infectious process involving the endometrium. It may extend to the myometrium and parametrial tissues."
  * concept[+] 
    * code = #10062244
    * display = "Sinus disorder"
    * definition = "A disorder characterized by involvement of the paranasal sinuses."
  * concept[+] 
    * code = #10062255
    * display = "Soft tissue infection"
    * definition = "A disorder characterized by an infectious process involving soft tissues."
  * concept[+] 
    * code = #10062263
    * display = "Small intestinal stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the small intestine."
  * concept[+] 
    * code = #10062283
    * display = "Nail ridging"
    * definition = "A disorder characterized by vertical or horizontal ridges on the nails."
  * concept[+] 
    * code = #10062315
    * display = "Lipohypertrophy"
    * definition = "A disorder characterized by hypertrophy of the subcutaneous adipose tissue at the site of multiple subcutaneous injections of insulin."
  * concept[+] 
    * code = #10062466
    * display = "Localized edema"
    * definition = "A disorder characterized by swelling due to excessive fluid accumulation at a specific anatomic site."
  * concept[+] 
    * code = #10062501
    * display = "Non-cardiac chest pain"
    * definition = "A disorder characterized by discomfort in the chest unrelated to a heart disorder."
  * concept[+] 
    * code = #10062548
    * display = "Tracheal hemorrhage"
    * definition = "A finding of bleeding from the trachea."
  * concept[+] 
    * code = #10062570
    * display = "Enterovesical fistula"
    * definition = "A disorder characterized by an abnormal communication between the urinary bladder and the intestine."
  * concept[+] 
    * code = #10062572
    * display = "Generalized muscle weakness"
    * definition = "A disorder characterized by a reduction in the strength of muscles in multiple anatomic sites."
  * concept[+] 
    * code = #10062632
    * display = "Gallbladder infection"
    * definition = "A disorder characterized by an infectious process involving the gallbladder."
  * concept[+] 
    * code = #10062646
    * display = "Pancreatic enzymes decreased"
    * definition = "A finding based on laboratory test results that indicate an decrease in levels of pancreatic enzymes in a biological specimen."
  * concept[+] 
    * code = #10062667
    * display = "Laryngopharyngeal dysesthesia"
    * definition = "A disorder characterized by an uncomfortable persistent sensation in the area of the laryngopharynx."
  * concept[+] 
    * code = #10062872
    * display = "Dysesthesia"
    * definition = "A disorder characterized by distortion of sensory perception, resulting in an abnormal and unpleasant sensation."
  * concept[+] 
    * code = #10063057
    * display = "Cystitis noninfective"
    * definition = "A disorder characterized by inflammation of the bladder which is not caused by an infection of the urinary tract."
  * concept[+] 
    * code = #10063190
    * display = "Rectal mucositis"
    * definition = "A disorder characterized by inflammation of the mucous membrane of the rectum."
  * concept[+] 
    * code = #10063524
    * display = "Bronchial stricture"
    * definition = "A disorder characterized by a narrowing of the bronchial tube."
  * concept[+] 
    * code = #10063575
    * display = "Bladder perforation"
    * definition = "A disorder characterized by a rupture in the bladder wall."
  * concept[+] 
    * code = #10063636
    * display = "Pyramidal tract syndrome"
    * definition = "A disorder characterized by dysfunction of the corticospinal (pyramidal) tracts of the spinal cord. Symptoms include an increase in the muscle tone in the lower extremities, hyperreflexia, positive Babinski and a decrease in fine motor coordination."
  * concept[+] 
    * code = #10063761
    * display = "Reversible posterior leukoencephalopathy syndrome"
    * definition = "A disorder characterized by headaches, mental status changes, visual disturbances, and seizures associated with imaging findings of posterior leukoencephalopathy. It has been observed in association with hypertensive encephalopathy, eclampsia, and immunosuppressive and cytotoxic drug treatment. It is an acute or subacute reversible condition."
  * concept[+] 
    * code = #10064026
    * display = "Pelvic floor muscle weakness"
    * definition = "A disorder characterized by a reduction in the strength of the muscles of the pelvic floor."
  * concept[+] 
    * code = #10064505
    * display = "Stoma site infection"
    * definition = "A disorder characterized by an infectious process involving a stoma (surgically created opening on the surface of the body)."
  * concept[+] 
    * code = #10064658
    * display = "Osteonecrosis of jaw"
    * definition = "A disorder characterized by a necrotic process occurring in the bone of the mandible."
  * concept[+] 
    * code = #10064687
    * display = "Device related infection"
    * definition = "A disorder characterized by an infectious process involving the use of a medical device."
  * concept[+] 
    * code = #10064774
    * display = "Infusion site extravasation"
    * definition = "A disorder characterized by leakage of a pharmacologic or a biologic substance from the infusion site into the surrounding tissue. Signs and symptoms include induration, erythema, swelling, burning sensation and marked discomfort at the infusion site."
  * concept[+] 
    * code = #10064848
    * display = "Chronic kidney disease"
    * definition = "A disorder characterized by gradual and usually permanent loss of kidney function resulting in renal failure."
  * concept[+] 
    * code = #10065368
    * display = "Urinary fistula"
    * definition = "A disorder characterized by an abnormal communication between any part of the urinary system and another organ or anatomic site."
  * concept[+] 
    * code = #10065417
    * display = "Brachial plexopathy"
    * definition = "A disorder characterized by regional paresthesia of the brachial plexus, marked discomfort and muscle weakness, and limited movement in the arm or hand."
  * concept[+] 
    * code = #10065703
    * display = "Pancreatic duct stenosis"
    * definition = "A disorder characterized by a narrowing of the lumen of the pancreatic duct."
  * concept[+] 
    * code = #10065704
    * display = "Peritoneal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the peritoneum."
  * concept[+] 
    * code = #10065705
    * display = "Pharyngeal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a pharyngeal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065706
    * display = "Pharyngeal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the pharynx."
  * concept[+] 
    * code = #10065707
    * display = "Rectal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the rectum."
  * concept[+] 
    * code = #10065709
    * display = "Rectal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the rectal wall."
  * concept[+] 
    * code = #10065710
    * display = "Small intestinal mucositis"
    * definition = "A disorder characterized by inflammation of the mucous membrane of the small intestine."
  * concept[+] 
    * code = #10065712
    * display = "Gastrointestinal stoma necrosis"
    * definition = "A finding of a necrotic process occurring in the gastrointestinal tract stoma."
  * concept[+] 
    * code = #10065713
    * display = "Gastric fistula"
    * definition = "A disorder characterized by an abnormal communication between the stomach and another organ or anatomic site."
  * concept[+] 
    * code = #10065719
    * display = "Jejunal fistula"
    * definition = "A disorder characterized by an abnormal communication between the jejunum and another organ or anatomic site."
  * concept[+] 
    * code = #10065720
    * display = "Oral cavity fistula"
    * definition = "A disorder characterized by an abnormal communication between the oral cavity and another organ or anatomic site."
  * concept[+] 
    * code = #10065721
    * display = "Anal mucositis"
    * definition = "A disorder characterized by inflammation of the mucous membrane of the anus."
  * concept[+] 
    * code = #10065722
    * display = "Anal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the anal region."
  * concept[+] 
    * code = #10065727
    * display = "Esophageal necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the esophageal wall."
  * concept[+] 
    * code = #10065728
    * display = "Ileal fistula"
    * definition = "A disorder characterized by an abnormal communication between the ileum and another organ or anatomic site."
  * concept[+] 
    * code = #10065730
    * display = "Ileal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the ileum."
  * concept[+] 
    * code = #10065732
    * display = "Jejunal obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the intestinal contents in the jejunum."
  * concept[+] 
    * code = #10065735
    * display = "Laryngeal inflammation"
    * definition = "A disorder characterized by an inflammation involving the larynx."
  * concept[+] 
    * code = #10065738
    * display = "Unequal limb length"
    * definition = "A disorder characterized by of a discrepancy between the lengths of the lower or upper extremities."
  * concept[+] 
    * code = #10065744
    * display = "Arteritis infective"
    * definition = "A disorder characterized by an infectious process involving an artery."
  * concept[+] 
    * code = #10065745
    * display = "Prolapse of intestinal stoma"
    * definition = "A finding of protrusion of the intestinal stoma (surgically created opening on the surface of the body) above the abdominal surface."
  * concept[+] 
    * code = #10065746
    * display = "Bronchopulmonary hemorrhage"
    * definition = "A disorder characterized by bleeding from the bronchial wall and/or lung parenchyma."
  * concept[+] 
    * code = #10065747
    * display = "Cecal hemorrhage"
    * definition = "A disorder characterized by bleeding from the cecum."
  * concept[+] 
    * code = #10065748
    * display = "Urostomy site bleeding"
    * definition = "A finding of bleeding from the urostomy site."
  * concept[+] 
    * code = #10065749
    * display = "Tracheostomy site bleeding"
    * definition = "A finding of blood leakage from the tracheostomy site."
  * concept[+] 
    * code = #10065752
    * display = "Duodenal infection"
    * definition = "A disorder characterized by an infectious process involving the duodenum."
  * concept[+] 
    * code = #10065755
    * display = "Lip infection"
    * definition = "A disorder characterized by an infectious process involving the lips."
  * concept[+] 
    * code = #10065759
    * display = "Laryngeal hemorrhage"
    * definition = "A disorder characterized by bleeding from the larynx."
  * concept[+] 
    * code = #10065761
    * display = "Cecal infection"
    * definition = "A disorder characterized by an infectious process involving the cecum."
  * concept[+] 
    * code = #10065762
    * display = "Spermatic cord hemorrhage"
    * definition = "A disorder characterized by bleeding from the spermatic cord."
  * concept[+] 
    * code = #10065763
    * display = "Ovarian hemorrhage"
    * definition = "A disorder characterized by bleeding from the ovary."
  * concept[+] 
    * code = #10065764
    * display = "Mucosal infection"
    * definition = "A disorder characterized by an infectious process involving a mucosal surface."
  * concept[+] 
    * code = #10065765
    * display = "Cranial nerve infection"
    * definition = "A disorder characterized by an infectious process involving a cranial nerve."
  * concept[+] 
    * code = #10065766
    * display = "Peripheral nerve infection"
    * definition = "A disorder characterized by an infectious process involving the peripheral nerves."
  * concept[+] 
    * code = #10065771
    * display = "Small intestine infection"
    * definition = "A disorder characterized by an infectious process involving the small intestine."
  * concept[+] 
    * code = #10065772
    * display = "Vulval infection"
    * definition = "A disorder characterized by an infectious process involving the vulva."
  * concept[+] 
    * code = #10065773
    * display = "Lymph leakage"
    * definition = "A disorder characterized by the loss of lymph fluid into the surrounding tissue or body cavity."
  * concept[+] 
    * code = #10065775
    * display = "Abdominal soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the abdominal wall."
  * concept[+] 
    * code = #10065776
    * display = "Muscle weakness lower limb"
    * definition = "A disorder characterized by a reduction in the strength of the lower limb muscles."
  * concept[+] 
    * code = #10065777
    * display = "Soft tissue necrosis lower limb"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the lower extremity."
  * concept[+] 
    * code = #10065778
    * display = "Soft tissue necrosis upper limb"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the upper extremity."
  * concept[+] 
    * code = #10065779
    * display = "Head soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the head."
  * concept[+] 
    * code = #10065780
    * display = "Muscle weakness left-sided"
    * definition = "A disorder characterized by a reduction in the strength of the muscles on the left side of the body."
  * concept[+] 
    * code = #10065781
    * display = "Neck soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the neck."
  * concept[+] 
    * code = #10065783
    * display = "Musculoskeletal deformity"
    * definition = "A disorder characterized by of a malformation of the musculoskeletal system."
  * concept[+] 
    * code = #10065784
    * display = "Central nervous system necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the brain and/or spinal cord."
  * concept[+] 
    * code = #10065785
    * display = "External ear pain"
    * definition = "A disorder characterized by a sensation of marked discomfort in the external ear region."
  * concept[+] 
    * code = #10065786
    * display = "Laryngeal fistula"
    * definition = "A disorder characterized by an abnormal communication between the larynx and another organ or anatomic site."
  * concept[+] 
    * code = #10065787
    * display = "Tracheal fistula"
    * definition = "A disorder characterized by an abnormal communication between the trachea and another organ or anatomic site."
  * concept[+] 
    * code = #10065788
    * display = "Fallopian tube anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a fallopian tube anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065789
    * display = "Fallopian tube obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents in the fallopian tube."
  * concept[+] 
    * code = #10065790
    * display = "Fallopian tube perforation"
    * definition = "A finding of rupture of the fallopian tube wall."
  * concept[+] 
    * code = #10065791
    * display = "Fallopian tube stenosis"
    * definition = "A disorder characterized by a narrowing of the fallopian tube lumen."
  * concept[+] 
    * code = #10065793
    * display = "Pelvic soft tissue necrosis"
    * definition = "A disorder characterized by a necrotic process occurring in the soft tissues of the pelvis."
  * concept[+] 
    * code = #10065794
    * display = "Muscle weakness right-sided"
    * definition = "A disorder characterized by a reduction in the strength of the muscles on the right side of the body."
  * concept[+] 
    * code = #10065795
    * display = "Muscle weakness trunk"
    * definition = "A disorder characterized by a reduction in the strength of the trunk muscles."
  * concept[+] 
    * code = #10065796
    * display = "Joint range of motion decreased cervical spine"
    * definition = "A disorder characterized by a decrease in flexibility of a cervical spine joint."
  * concept[+] 
    * code = #10065798
    * display = "Superficial soft tissue fibrosis"
    * definition = "A disorder characterized by fibrotic degeneration of the superficial soft tissues."
  * concept[+] 
    * code = #10065799
    * display = "Fibrosis deep connective tissue"
    * definition = "A disorder characterized by fibrotic degeneration of the deep connective tissues."
  * concept[+] 
    * code = #10065800
    * display = "Joint range of motion decreased lumbar spine"
    * definition = "A disorder characterized by a decrease in flexibility of a lumbar spine joint."
  * concept[+] 
    * code = #10065802
    * display = "Bladder anastomotic leak"
    * definition = "A finding of leakage of urine due to breakdown of a bladder anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065803
    * display = "Kidney anastomotic leak"
    * definition = "A finding of leakage of urine due to breakdown of a kidney anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065805
    * display = "Spermatic cord obstruction"
    * definition = "A disorder characterized by blockage of the normal flow of the contents of the spermatic cord."
  * concept[+] 
    * code = #10065811
    * display = "Uterine fistula"
    * definition = "A disorder characterized by an abnormal communication between the uterus and another organ or anatomic site."
  * concept[+] 
    * code = #10065813
    * display = "Vaginal fistula"
    * definition = "A disorder characterized by an abnormal communication between the vagina and another organ or anatomic site."
  * concept[+] 
    * code = #10065814
    * display = "Ureteric anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a ureteral anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065815
    * display = "Urethral anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a urethral anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065817
    * display = "Vaginal obstruction"
    * definition = "A disorder characterized by blockage of vaginal canal."
  * concept[+] 
    * code = #10065818
    * display = "Vaginal perforation"
    * definition = "A disorder characterized by a rupture in the vaginal wall."
  * concept[+] 
    * code = #10065822
    * display = "Prolapse of urostomy"
    * definition = "A finding of displacement of the urostomy."
  * concept[+] 
    * code = #10065823
    * display = "Nipple deformity"
    * definition = "A disorder characterized by a malformation of the nipple."
  * concept[+] 
    * code = #10065825
    * display = "Intraoperative gastrointestinal injury"
    * definition = "A finding of damage to the gastrointestinal system during a surgical procedure."
  * concept[+] 
    * code = #10065826
    * display = "Intraoperative arterial injury"
    * definition = "A finding of damage to an artery during a surgical procedure."
  * concept[+] 
    * code = #10065827
    * display = "Intraoperative hepatobiliary injury"
    * definition = "A finding of damage to the hepatic parenchyma and/or biliary tract during a surgical procedure."
  * concept[+] 
    * code = #10065828
    * display = "Intraoperative urinary injury"
    * definition = "A finding of damage to the urinary system during a surgical procedure."
  * concept[+] 
    * code = #10065829
    * display = "Intraoperative musculoskeletal injury"
    * definition = "A finding of damage to the musculoskeletal system during a surgical procedure."
  * concept[+] 
    * code = #10065830
    * display = "Intraoperative neurological injury"
    * definition = "A finding of damage to the nervous system during a surgical procedure."
  * concept[+] 
    * code = #10065831
    * display = "Intraoperative breast injury"
    * definition = "A finding of damage to the breast parenchyma during a surgical procedure."
  * concept[+] 
    * code = #10065832
    * display = "Intraoperative respiratory injury"
    * definition = "A finding of damage to the respiratory system during a surgical procedure."
  * concept[+] 
    * code = #10065834
    * display = "Intraoperative endocrine injury"
    * definition = "A finding of damage to the endocrine gland during a surgical procedure."
  * concept[+] 
    * code = #10065836
    * display = "IVth nerve disorder"
    * definition = "A disorder characterized by involvement of the trochlear nerve (fourth cranial nerve)."
  * concept[+] 
    * code = #10065837
    * display = "External ear inflammation"
    * definition = "A disorder characterized by inflammation, swelling and redness to the outer ear and ear canal."
  * concept[+] 
    * code = #10065838
    * display = "Middle ear inflammation"
    * definition = "A disorder characterized by inflammation (physiologic response to irritation), swelling and redness to the middle ear."
  * concept[+] 
    * code = #10065840
    * display = "Intraoperative reproductive tract injury"
    * definition = "A finding of damage to the reproductive organs during a surgical procedure."
  * concept[+] 
    * code = #10065841
    * display = "Intraoperative ocular injury"
    * definition = "A finding of damage to the eye during a surgical procedure."
  * concept[+] 
    * code = #10065842
    * display = "Intraoperative head and neck injury"
    * definition = "A finding of damage to the head and neck during a surgical procedure."
  * concept[+] 
    * code = #10065843
    * display = "Intraoperative cardiac injury"
    * definition = "A finding of damage to the heart during a surgical procedure."
  * concept[+] 
    * code = #10065844
    * display = "Intraoperative ear injury"
    * definition = "A finding of damage to the ear during a surgical procedure."
  * concept[+] 
    * code = #10065845
    * display = "Intraoperative renal injury"
    * definition = "A finding of damage to the kidney during a surgical procedure."
  * concept[+] 
    * code = #10065846
    * display = "Intraoperative skin injury"
    * definition = "A finding of damage to the skin during a surgical procedure."
  * concept[+] 
    * code = #10065847
    * display = "Intraoperative splenic injury"
    * definition = "A finding of damage to the spleen during a surgical procedure."
  * concept[+] 
    * code = #10065848
    * display = "Intraoperative venous injury"
    * definition = "A finding of damage to a vein during a surgical procedure."
  * concept[+] 
    * code = #10065849
    * display = "Injury to jugular vein"
    * definition = "A finding of damage to the jugular vein."
  * concept[+] 
    * code = #10065851
    * display = "Esophageal fistula"
    * definition = "A disorder characterized by an abnormal communication between the esophagus and another organ or anatomic site."
  * concept[+] 
    * code = #10065873
    * display = "Pulmonary fistula"
    * definition = "A disorder characterized by an abnormal communication between the lung and another organ or anatomic site."
  * concept[+] 
    * code = #10065879
    * display = "Gastrointestinal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a gastrointestinal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065880
    * display = "Laryngeal mucositis"
    * definition = "A disorder characterized by an inflammation involving the mucous membrane of the larynx."
  * concept[+] 
    * code = #10065881
    * display = "Pharyngeal mucositis"
    * definition = "A disorder characterized by an inflammation involving the mucous membrane of the pharynx."
  * concept[+] 
    * code = #10065882
    * display = "Urostomy leak"
    * definition = "A finding of leakage of contents from a urostomy."
  * concept[+] 
    * code = #10065883
    * display = "Urostomy obstruction"
    * definition = "A finding of blockage of the urostomy."
  * concept[+] 
    * code = #10065885
    * display = "Urostomy stenosis"
    * definition = "A finding of narrowing of the opening of a urostomy."
  * concept[+] 
    * code = #10065886
    * display = "Uterine anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a uterine anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065887
    * display = "Vaginal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a vaginal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065888
    * display = "Vas deferens anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a vas deferens anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065891
    * display = "Large intestinal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of an anastomosis (surgical connection of two separate anatomic structures) in the large intestine."
  * concept[+] 
    * code = #10065892
    * display = "Small intestinal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of an anastomosis (surgical connection of two separate anatomic structures) in the small bowel."
  * concept[+] 
    * code = #10065893
    * display = "Gastric anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a gastric anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065894
    * display = "Rectal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a rectal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065895
    * display = "Muscle weakness upper limb"
    * definition = "A disorder characterized by a reduction in the strength of the upper limb muscles."
  * concept[+] 
    * code = #10065897
    * display = "Spermatic cord anastomotic leak"
    * definition = "A finding of leakage due to breakdown of a spermatic cord anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065898
    * display = "Stenosis of gastrointestinal stoma"
    * definition = "A finding of narrowing of the gastrointestinal stoma (surgically created opening on the surface of the body)."
  * concept[+] 
    * code = #10065900
    * display = "Tracheal mucositis"
    * definition = "A disorder characterized by an inflammation involving the mucous membrane of the trachea."
  * concept[+] 
    * code = #10065906
    * display = "Carbon monoxide diffusing capacity decreased"
    * definition = "A finding based on lung function test results that indicate a decrease in the lung capacity to absorb carbon monoxide."
  * concept[+] 
    * code = #10065928
    * display = "Uterine obstruction"
    * definition = "A disorder characterized by blockage of the uterine outlet."
  * concept[+] 
    * code = #10065961
    * display = "Esophageal anastomotic leak"
    * definition = "A finding of leakage due to breakdown of an esophageal anastomosis (surgical connection of two separate anatomic structures)."
  * concept[+] 
    * code = #10065973
    * display = "Iron overload"
    * definition = "A disorder characterized by accumulation of iron in the tissues."
  * concept[+] 
    * code = #10066480
    * display = "Avascular necrosis"
    * definition = "A disorder characterized by necrotic changes in the bone tissue due to interruption of blood supply. Most often affecting the epiphysis of the long bones, the necrotic changes result in the collapse and the destruction of the bone structure."
  * concept[+] 
    * code = #10066874
    * display = "Gastroesophageal reflux disease"
    * definition = "A disorder characterized by reflux of the gastric and/or duodenal contents into the distal esophagus. It is chronic in nature and usually caused by incompetence of the lower esophageal sphincter, and may result in injury to the esophageal mucosal. Symptoms include heartburn and acid indigestion."
  * concept[+] 
    * code = #10069138
    * display = "Papulopustular rash"
    * definition = "A disorder characterized by an eruption consisting of papules (a small, raised pimple) and pustules (a small pus filled blister), typically appearing in face, scalp, and upper chest and back Unlike acne, this rash does not present with whiteheads or blackheads, and can be symptomatic, with itchy or tender lesions."
  * concept[+] 
    * code = #10069339
    * display = "Acute kidney injury"
    * definition = "A disorder characterized by the acute loss of renal function and is traditionally classified as pre-renal (low blood flow into kidney), renal (kidney damage) and post-renal causes (ureteral or bladder outflow obstruction)."
  * concept[+] 
    * code = #10069501
    * display = "Left ventricular systolic dysfunction"
    * definition = "A disorder characterized by failure of the left ventricle to produce adequate output despite an increase in distending pressure and in end-diastolic volume. Clinical manifestations mayinclude dyspnea, orthopnea, and other signs and symptoms of pulmonary congestion and edema."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e57358-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557050v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e57358-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e97042-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557842v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Definite
    * display = "DEFINITE"
    * definition = "No Value Exists"
  * concept[+] 
    * code = #Possible
    * display = "POSSIBLE"
    * definition = "POSSIBLE"
  * concept[+] 
    * code = #Probable
    * display = "PROBABLE"
    * definition = "PROBABLE"
  * concept[+] 
    * code = #Unlikely
    * display = "UNLIKELY"
    * definition = "UNLIKELY"
  * concept[+] 
    * code = #Unrelated
    * display = "UNRELATED"
    * definition = "UNRELATED"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e97042-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557842v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e97042-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e97392-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557851v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Not known, not observed, not recorded, or refused."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e97392-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557851v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e97392-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e97594-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557856v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e97594-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557856v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e97594-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e97746-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557859v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e97746-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557859v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e97746-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e98036-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557913v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e98036-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557913v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e98036-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e98234-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557028v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e98234-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557028v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e98234-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e98385-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557896v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Fatal
    * display = "Death"
    * definition = "The absence of life or state of being dead."
  * concept[+] 
    * code = #"Not Recovered/Not Resolved"
    * display = "NOT RECOVERED OR NOT RESOLVED"
    * definition = "One of the possible results of an adverse event outcome that indicates that the event has not improved or recuperated."
  * concept[+] 
    * code = #Recovered/Resolved
    * display = "Recovered or Resolved"
    * definition = "One of the possible results of an adverse event outcome that indicates that the event has improved or recuperated."
  * concept[+] 
    * code = #"Recovered/Resolved with Sequelae"
    * display = "RECOVERED OR RESOLVED WITH SEQUELAE"
    * definition = "One of the possible results of an adverse event outcome where the subject recuperated but retained pathological conditions resulting from the prior disease or injury."
  * concept[+] 
    * code = #Recovering/Resolving
    * display = "RECOVERING OR RESOLVING"
    * definition = "One of the possible results of an adverse event outcome that indicates that the event is improving."
  * concept[+] 
    * code = #Unknown
    * display = "Unknown"
    * definition = "Not known, not observed, not recorded, or refused."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e98385-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557896v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e98385-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e98732-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557906v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #1
    * display = "single episode"
    * definition = "single episode"
  * concept[+] 
    * code = #2
    * display = "intermittent"
    * definition = "intermittent"
  * concept[+] 
    * code = #3
    * display = "CONTINUOUS"
    * definition = "Existing in time or space without stop or interruption."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e98732-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557906v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e98732-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e98928-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557917v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #Yes
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
  * concept[+] 
    * code = #No
    * display = "No"
    * definition = "The non-affirmative response to a question."
  * concept[+] 
    * code = #N/A
    * display = "Not Applicable"
    * definition = "Determination of a value is not relevant in the current context."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e98928-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3557917v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e98928-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e99214-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3556199v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #1
    * display = "Results in Death"
    * definition = "Results in Death"
  * concept[+] 
    * code = #2
    * display = "Is life-threatening"
    * definition = "Is life-threatening"
  * concept[+] 
    * code = #3
    * display = "Requires inpatient hospitalization or prolongation of existing hospitalization"
    * definition = "Requires inpatient hospitalization or prolongation of existing hospitalization"
  * concept[+] 
    * code = #4
    * display = "Results in persistent or significant disability/incapacity"
    * definition = "Results in persistent or significant disability/incapacity"
  * concept[+] 
    * code = #5
    * display = "Is a congenital anomaly/birth defect"
    * definition = "Is a congenital anomaly/birth defect"
  * concept[+] 
    * code = #6
    * display = "In the medical judgment of the treating physician and/or investigator, it may jeopardize the participant or require intervention to prevent one of these outcomes"
    * definition = "In the medical judgment of the treating physician and/or investigator, it may jeopardize the participant or require intervention to prevent one of these outcomes"
  * concept[+] 
    * code = #7
    * display = "Other, specify"
    * definition = "Other, specify"
  * concept[+] 
    * code = #8
    * display = "Meets criteria per protocol but does not meet other criterion (above)"
    * definition = "Meets criteria per protocol but does not meet other criterion (above)"
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e99214-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3556199v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e99214-cs"
* contained[+]
  * resourceType = "CodeSystem"
  * id = "d1e99668-cs"
  * url = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3556209v2.0-cs"
  * status = #active
  * caseSensitive = true
  * content = #complete
  * concept[+] 
    * code = #N
    * display = "No"
    * definition = "The non-affirmative response to a question."
  * concept[+] 
    * code = #Y
    * display = "Yes"
    * definition = "The affirmative response to a question or activity."
* contained[+]
  * resourceType = "ValueSet"
  * id = "d1e99668-vs"
  * status = #active
  * compose.include.system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier/3265657v2.0/question_identifier#3556209v2.0-cs"
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/valueset-system"
      * valueCanonical = "#d1e99668-cs"
* url = "http://hl7.org/fhir/uv/sdc/Questionnaire/3265657v2.0"
* identifier
  * system = "http://example.org/nci.nih.gov/xml/owl/cadsr/form/form_design_identifier"
  * value = "3265657v2.0/"
* title = "Adverse Event/Serious Adverse Event CTCAE v4 NCI Standard Template"
* status = #active
* date = "2012-08-15"
* publisher = "National Cancer Institute (NCI)"
* description = "A sample questionnaire example for sdc-questionnaire profile"
* useContext
  * code = $usage-contexts#form-type
  * valueCodeableConcept.text = "CRF"
* item[+]
  * linkId = "3556213v2.0"
  * text = "Mandatory Adverse Event Questions"
  * type = #group
  * required = true
  * item[+]
    * linkId = "3556213v2.0.0"
    * text = "Must be included when this data is collected for reporting."
    * type = #display
  * item[+]
    * linkId = "3556214v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3125302v1.1"
    * text = "Adverse Event Term (v4.0)"
    * type = #open-choice
    * answerValueSet = "#d1e14927-vs"
  * item[+]
    * linkId = "3557006v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2188132v1.0"
    * text = "Describe 'Other' Adverse Event"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 1
    * linkId = "3557008v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2944515v1.0"
    * text = "Adverse Event Grade"
    * type = #open-choice
    * answerValueSet = "#d1e54652-vs"
* item[+]
  * linkId = "3557016v2.0"
  * text = "Conditional Adverse Event Questions"
  * type = #group
  * item[+]
    * linkId = "3557016v2.0.0"
    * text = "There are business rules to indicate situations under which this data element should be used in a CRF."
    * type = #display
  * item[+]
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 4
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "MM/DD/YYYY"
    * linkId = "3557017v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2744993v1.0"
    * text = "AE Start Date"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557021v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2552398v1.0"
    * text = "Was patient hospitalized for toxicity?"
    * type = #open-choice
    * answerValueSet = "#d1e55041-vs"
  * item[+]
    * linkId = "3557025v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2744948v1.0"
    * text = "Cycle #"
    * type = #string
* item[+]
  * linkId = "3557027v2.0"
  * text = "Optional Adverse Event Questions"
  * type = #group
  * item[+]
    * linkId = "3557027v2.0.0"
    * text = "No requirement for inclusion of this element on the CRF; if the design and scientific questions posed in the study dictate the need to collect this type of data, this is the element to include on the CRF."
    * type = #display
  * item[+]
    * linkId = "3557032v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2179892v2.0"
    * text = "To what is the AE attributed?"
    * type = #open-choice
    * answerValueSet = "#d1e55265-vs"
  * item[+]
    * linkId = "3557863v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2201348v1.0"
    * text = "Other Attribution, Specify"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/entryFormat"
      * valueString = "DD/MON/YYYY"
    * linkId = "3557046v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2189843v1.0"
    * text = "AE Stop Date"
    * type = #string
  * item[+]
    * linkId = "3557869v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2943864v1.0"
    * text = "MedDRA System Organ Class (SOC)"
    * type = #open-choice
    * answerValueSet = "#d1e56008-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 8
    * linkId = "3557050v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#3133353v1.0"
    * text = "MedDRA AE Code (CTCAE v4.0)"
    * type = #open-choice
    * answerValueSet = "#d1e57358-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 1
    * linkId = "3557842v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#1285v3.0"
    * text = "AE Attribution"
    * type = #open-choice
    * answerValueSet = "#d1e97042-vs"
  * item[+]
    * linkId = "3557849v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2006851v4.0"
    * text = "Reporting Period End Date"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557851v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2179971v1.0"
    * text = "Were adverse events assessed during most recent period"
    * type = #open-choice
    * answerValueSet = "#d1e97392-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557856v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2183619v1.0"
    * text = "Expected? (Yes/No)"
    * type = #open-choice
    * answerValueSet = "#d1e97594-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557859v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2199908v1.0"
    * text = "Serious?"
    * type = #open-choice
    * answerValueSet = "#d1e97746-vs"
  * item[+]
    * linkId = "3557911v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2585234v1.0"
    * text = "Event Onset Time"
    * type = #string
  * item[+]
    * linkId = "3557865v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2732184v1.0"
    * text = "Course"
    * type = #string
  * item[+]
    * linkId = "3557867v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2744943v1.0"
    * text = "AE Evaluation Period Start Date"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557913v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2746280v1.0"
    * text = "Pre-existing AE?"
    * type = #open-choice
    * answerValueSet = "#d1e98036-vs"
  * item[+]
    * linkId = "3557904v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2746301v1.0"
    * text = "AE Resolved Time"
    * type = #string
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557028v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2746311v1.0"
    * text = "AE Ongoing?"
    * type = #open-choice
    * answerValueSet = "#d1e98234-vs"
  * item[+]
    * linkId = "3557896v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2746517v1.0"
    * text = "Participant Status/Outcome"
    * type = #open-choice
    * answerValueSet = "#d1e98385-vs"
  * item[+]
    * linkId = "3557906v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2008418v1.0"
    * text = "Adverse Event Condition Pattern"
    * type = #open-choice
    * answerValueSet = "#d1e98732-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 2
    * linkId = "3557917v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2179615v1.0"
    * text = "Did event reappear after study agent was reintroduced?"
    * type = #open-choice
    * answerValueSet = "#d1e98928-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 1
    * linkId = "3557922v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#797v5.0"
    * text = "Comments"
    * type = #string
* item[+]
  * linkId = "3556197v2.0"
  * text = "Optional Serious Adverse Event Questions"
  * type = #group
  * item[+]
    * linkId = "3556197v2.0.0"
    * text = "The following additional elements are optional on a SAE form."
    * type = #display
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 1
    * linkId = "3556199v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2179679v3.0"
    * text = "Why serious?"
    * type = #open-choice
    * answerValueSet = "#d1e99214-vs"
  * item[+]
    * extension
      * url = "http://hl7.org/fhir/StructureDefinition/minLength"
      * valueInteger = 1
    * linkId = "3556209v2.0"
    * definition = "http://example.org/nci.nih.gov/xml/owl/cadsr/data_element_scoped_identifier#2004106v3.0"
    * text = "Dose-Limiting Toxicity?"
    * type = #open-choice
    * answerValueSet = "#d1e99668-vs"