Instance: sdc-CHF
InstanceOf: SDCLibrary
Title: "Congestive Heart Failure Logic"
Description: "Logic for an example congestive heart failure pathway"
Usage: #example
* url = "http://hl7.org/fhir/uv/sdc/Library/sdc-CHF"
* version = "1.0.0"
* name = "CHF"
* title = "Congestive Heart Failure Logic"
* status = #active
* experimental = true
* type = $library-type#logic-library "Logic Library"
* date = "2020-11-29T15:54:22-07:00"
* publisher = "HL7 International - Clinical Decision Support WG"
* contact.telecom
  * system = #url
  * value = "http://hl7.org/Special/committees/dss"
* description = "Logic for an example congestive heart failure pathway"
* jurisdiction = $m49.htm#001 "World"
* relatedArtifact[0]
  * type = #depends-on
  * display = "SNOMED CT"
  * url = "http://snomed.info/sct"
  * resource = "http://snomed.info/sct"
* relatedArtifact[+]
  * type = #depends-on
  * display = "LOINC"
  * url = "http://loinc.org"
  * resource = "http://loinc.org"
* relatedArtifact[+]
  * type = #depends-on
  * display = "Congestive heart failure codes"
  * url = "http://hl7.org/fhir/uv/sdc/CodeSystem/chf-codes"
  * resource = "http://hl7.org/fhir/uv/sdc/CodeSystem/chf-codes"
* relatedArtifact[+]
  * type = #depends-on
  * display = "Clinical condition codes"
  * url = "http://terminology.hl7.org/CodeSystem/condition-clinical"
  * resource = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* relatedArtifact[+]
  * type = #depends-on
  * display = "Condition verification status"
  * url = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
  * resource = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
  // Todo: Revise parameter Ruleset (when optional argument functionality is released)
* parameter[0]
  * name = #Encounter
  * use = #in
  * min = 0
  * max = "1"
  * type = #Encounter
* parameter[+]
  * name = #Patient
  * use = #out
  * min = 0
  * max = "1"
  * type = #Patient
* parameter[+]
  * name = #"Body Weight"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Body Weight Change Assertion"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Daily Body Weight"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Any
* parameter[+]
  * name = #"Daily Body Weight Change"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Any
* parameter[+]
  * name = #"Body Weight Change"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Current Body Weight"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Previous Body Weight"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Current Body Weight Change"
  * use = #out
  * min = 0
  * max = "1"
  * type = #integer
* parameter[+]
  * name = #"Urine Output"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Current Urine Output"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Net Intake/Output"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Current Net Intake/Output"
  * use = #out
  * min = 0
  * max = "1"
  * type = #Observation
* parameter[+]
  * name = #"Jugular Venous Pressure"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Oxygen Saturation"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #Potassium
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #Creatinine
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #eGFR
  * use = #out
  * min = 0
  * max = "*"
  * type = #Observation
* parameter[+]
  * name = #"Eligibility Criteria"
  * use = #out
  * min = 0
  * max = "*"
  * type = #Condition
* dataRequirement[0]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $loinc#29463-7
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $chf-codes#body-weight-change
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $loinc#9192-6
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $chf-codes#net-intake-output
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $chf-codes#jvp
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $loinc#2708-6
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $loinc#86919-8 "Potassium goal [Moles/volume] Serum or Plasma"
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $loinc#39802-4 "Creatinine in dialysis fluid/Creatinine in serum or plasma"
* dataRequirement[+]
  * type = #Observation
  * profile = "http://hl7.org/fhir/StructureDefinition/Observation"
  * codeFilter
    * path = "code"
    * code = $chf-codes#egfr
* dataRequirement[+]
  * type = #Condition
  * profile = "http://hl7.org/fhir/StructureDefinition/Condition"
* content
  * contentType = #text/cql
  * data = "bGlicmFyeSBDSEYgdmVyc2lvbiAnMS4wLjAnDQoNCnVzaW5nIEZISVIgdmVyc2lvbiAnNC4wLjEnDQoNCmluY2x1ZGUgRkhJUkhlbHBlcnMgdmVyc2lvbiAnNC4wLjEnDQoNCmNvZGVzeXN0ZW0gIlNOT01FRC1DVCI6ICdodHRwOi8vc25vbWVkLmluZm8vc2N0Jw0KY29kZXN5c3RlbSAiTE9JTkMiOiAnaHR0cDovL2xvaW5jLm9yZycNCmNvZGVzeXN0ZW0gIkNIRkNvZGVzIjogJ2h0dHA6Ly9obDcub3JnL2ZoaXIvdXYvY3BnL0NvZGVTeXN0ZW0vY2hmLWNvZGVzJw0KY29kZXN5c3RlbSAiQ29uZGl0aW9uIENsaW5pY2FsIFN0YXR1cyBDb2RlIjogJ2h0dHA6Ly90ZXJtaW5vbG9neS5obDcub3JnL0NvZGVTeXN0ZW0vY29uZGl0aW9uLWNsaW5pY2FsJw0KY29kZXN5c3RlbSAiQ29uZGl0aW9uIFZlcmlmaWNhdGlvbiBTdGF0dXMgQ29kZSI6ICdodHRwOi8vdGVybWlub2xvZ3kuaGw3Lm9yZy9Db2RlU3lzdGVtL2NvbmRpdGlvbi12ZXItc3RhdHVzJw0KDQpjb2RlICJDb25nZXN0aXZlIGhlYXJ0IGZhaWx1cmUiOiAnNDIzNDMwMDcnIGZyb20gIlNOT01FRC1DVCINCg0KY29kZSAiQm9keSB3ZWlnaHQiOiAnMjk0NjMtNycgZnJvbSAiTE9JTkMiDQpjb2RlICJCb2R5IHdlaWdodCBjaGFuZ2UiOiAnYm9keS13ZWlnaHQtY2hhbmdlJyBmcm9tICJDSEZDb2RlcyINCmNvZGUgIlVyaW5lIG91dHB1dCI6ICc5MTkyLTYnIGZyb20gIkxPSU5DIg0KY29kZSAiTmV0IGludGFrZS9vdXRwdXQiOiAnbmV0LWludGFrZS1vdXRwdXQnIGZyb20gIkNIRkNvZGVzIg0KY29kZSAiSnVndWxhciB2ZW5vdXMgcHJlc3N1cmUiOiAnanZwJyBmcm9tICJDSEZDb2RlcyINCmNvZGUgIk94eWdlbiBzYXR1cmF0aW9uIjogJzI3MDgtNicgZnJvbSAiTE9JTkMiDQpjb2RlICJQb3Rhc3NpdW0gZ29hbCI6ICc4NjkxOS04JyBmcm9tICJMT0lOQyIgZGlzcGxheSAnUG90YXNzaXVtIGdvYWwgW01vbGVzL3ZvbHVtZV0gU2VydW0gb3IgUGxhc21hJyAvLyBtZXEvTA0KY29kZSAiQ3JlYXRpbmluZSBpbiBzZXJ1bSI6ICczOTgwMi00JyBmcm9tICJMT0lOQyIgZGlzcGxheSAnQ3JlYXRpbmluZSBpbiBzZXJ1bSBvciBwbGFzbWEnIC8vIE5PVEU6IGV4YW1wbGUgc2hvd3MgbWcvZEwsIGJ1dCBubyBMT0lOQyBjb2RlIGhhcyB0aG9zZSB1bml0cz8NCmNvZGUgImVHRlIgcmVzdWx0IjogJ2VnZnInIGZyb20gIkNIRkNvZGVzIiAvLyBOT1RFOiBUb28gbWFueSB0byBwaWNrIGZyb20sIG5lZWRzIGNsaW5pY2FsL3Rlcm1pbm9sb2dpY2FsIFNNRSBpbnB1dCwgaW4gbW9sL21tL20yDQoNCmNvZGUgIkFjdGl2ZSBjb25kaXRpb24iOiAnYWN0aXZlJyBmcm9tICJDb25kaXRpb24gQ2xpbmljYWwgU3RhdHVzIENvZGUiDQpjb2RlICJQcm92aXNpb25hbCBjb25kaXRpb24iOiAncHJvdmlzaW9uYWwnIGZyb20gIkNvbmRpdGlvbiBWZXJpZmljYXRpb24gU3RhdHVzIENvZGUiDQpjb2RlICJDb25maXJtZWQgY29uZGl0aW9uIjogJ2NvbmZpcm1lZCcgZnJvbSAiQ29uZGl0aW9uIFZlcmlmaWNhdGlvbiBTdGF0dXMgQ29kZSINCg0KcGFyYW1ldGVyIEVuY291bnRlciBFbmNvdW50ZXINCg0KY29udGV4dCBQYXRpZW50DQoNCi8vIENhc2UgRmVhdHVyZXMNCmRlZmluZSAiQm9keSBXZWlnaHQiOg0KICBbT2JzZXJ2YXRpb246ICJCb2R5IHdlaWdodCJdIE8NCiAgICB3aGVyZSBPLnN0YXR1cyA9ICdmaW5hbCcNCiAgICAgIGFuZCByZWZlcmVuY2VzKE8uZW5jb3VudGVyLCBFbmNvdW50ZXIpDQoNCmRlZmluZSAiQm9keSBXZWlnaHQgQ2hhbmdlIEFzc2VydGlvbiI6DQogIFtPYnNlcnZhdGlvbjogIkJvZHkgd2VpZ2h0IGNoYW5nZSJdIE8NCiAgICB3aGVyZSBPLnN0YXR1cyA9ICdmaW5hbCcNCiAgICAgIGFuZCByZWZlcmVuY2VzKE8uZW5jb3VudGVyLCBFbmNvdW50ZXIpDQoNCmRlZmluZSAiQm9keSBXZWlnaHQgQ2hhbmdlIjoNCiAgIkRhaWx5IEJvZHkgV2VpZ2h0IENoYW5nZSIgV0MNCiAgICByZXR1cm4gT2JzZXJ2YXRpb24gew0KICAgICAgaWQ6IGlkIHsgdmFsdWU6IEVuY291bnRlci5pZCArICctYm9keXdlaWdodC1jaGFuZ2UnICsgVG9TdHJpbmcoV0MuZGF0ZSkgfSwNCiAgICAgIGV4dGVuc2lvbjogew0KICAgICAgICBFeHRlbnNpb24gew0KICAgICAgICAgIHVybDogdXJsIHsgdmFsdWU6ICdodHRwOi8vaGw3Lm9yZy9maGlyL3V2L2NwZy9TdHJ1Y3R1cmVEZWZpbml0aW9uL2NwZy1pbnN0YW50aWF0ZXNDYXNlRmVhdHVyZScgfSwNCiAgICAgICAgICB2YWx1ZTogY2Fub25pY2FsIHsgdmFsdWU6ICdodHRwOi8vaGw3Lm9yZy9maGlyL3V2L2NwZy9TdHJ1Y3R1cmVEZWZpbml0aW9uL2NoZi1ib2R5d2VpZ2h0LWNoYW5nZScgfQ0KICAgICAgICB9LA0KICAgICAgICBFeHRlbnNpb24gew0KICAgICAgICAgIHVybDogdXJsIHsgdmFsdWU6ICdodHRwOi8vaGw3Lm9yZy9maGlyL3V2L2NwZy9TdHJ1Y3R1cmVEZWZpbml0aW9uL2NwZy1jYXNlRmVhdHVyZVR5cGUnIH0sDQogICAgICAgICAgdmFsdWU6IGNvZGUgeyB2YWx1ZTogJ2Fzc2VydGVkJyB9DQogICAgICAgIH0NCiAgICAgIH0sDQogICAgICBzdGF0dXM6IE9ic2VydmF0aW9uU3RhdHVzIHsgdmFsdWU6ICdmaW5hbCcgfSwNCiAgICAgIGNvZGU6IENvZGVhYmxlQ29uY2VwdCB7DQogICAgICAgIGNvZGluZzogew0KICAgICAgICAgIENvZGluZyB7DQogICAgICAgICAgICBzeXN0ZW06IHVyaSB7IHZhbHVlOiAnaHR0cDovL2hsNy5vcmcvZmhpci91di9jcGcvQ29kZVN5c3RlbS9jaGYtY29kZXMnIH0sDQogICAgICAgICAgICBjb2RlOiBjb2RlIHsgdmFsdWU6ICdib2R5LXdlaWdodC1jaGFuZ2UnIH0NCiAgICAgICAgICB9DQogICAgICAgIH0NCiAgICAgIH0sDQogICAgICBlZmZlY3RpdmU6IGRhdGVUaW1lIHsgdmFsdWU6IFdDLmRhdGUgfSwNCiAgICAgIGlzc3VlZDogaW5zdGFudCB7IHZhbHVlOiBOb3coKSB9LA0KICAgICAgc3ViamVjdDogcmVmZXJlbmNlVG8oUGF0aWVudCksDQogICAgICBlbmNvdW50ZXI6IHJlZmVyZW5jZVRvKEVuY291bnRlciksDQogICAgICB2YWx1ZTogUXVhbnRpdHkgew0KICAgICAgICB2YWx1ZTogZGVjaW1hbCB7IHZhbHVlOiBXQy5jaGFuZ2UudmFsdWUgfSwNCiAgICAgICAgdW5pdDogc3RyaW5nIHsgdmFsdWU6IFdDLmNoYW5nZS51bml0IH0sDQogICAgICAgIHN5c3RlbTogdXJpIHsgdmFsdWU6ICdodHRwOi8vdW5pdHNvZm1lYXN1cmUub3JnJyB9LA0KICAgICAgICBjb2RlOiBjb2RlIHsgdmFsdWU6IFdDLmNoYW5nZS51bml0IH0NCiAgICAgIH0NCiAgICB9DQoNCmRlZmluZSAiRGFpbHkgQm9keSBXZWlnaHQiOg0KICAoZXhwYW5kIEVuY291bnRlci5wZXJpb2QgcGVyIGRheSkgRGF0ZQ0KICAgIGxldCBtYXhXZWlnaHQ6IE1heCgiQm9keSBXZWlnaHQiIFdUIHdoZXJlIFdULmlzc3VlZCBzYW1lIGRheSBhcyBEYXRlIHJldHVybiBXVC52YWx1ZSBhcyBGSElSLlF1YW50aXR5KQ0KICAgIHJldHVybiB7IGRhdGU6IERhdGUsIHdlaWdodDogbWF4V2VpZ2h0IH0NCg0KZGVmaW5lICJEYWlseSBCb2R5IFdlaWdodCBDaGFuZ2UiOg0KICAiRGFpbHkgQm9keSBXZWlnaHQiIFdUDQogICAgbGV0IHByaW9yV2VpZ2h0OiBGaXJzdCgiRGFpbHkgQm9keSBXZWlnaHQiIFBXVCB3aGVyZSBQV1QuZGF0ZSA8IFdULmRhdGUgc29ydCBieSBkYXRlIGRlc2NlbmRpbmcpLndlaWdodA0KICAgIHJldHVybiB7IGRhdGU6IFdULmRhdGUsIHdlaWdodDogV1Qud2VpZ2h0LCBwcmlvcldlaWdodDogcHJpb3JXZWlnaHQsIGNoYW5nZTogV1Qud2VpZ2h0IC0gcHJpb3JXZWlnaHR9DQoNCmRlZmluZSAiQ3VycmVudCBCb2R5IFdlaWdodCI6DQogIEZpcnN0KCJCb2R5IFdlaWdodCIgV1Qgd2hlcmUgV1QuaXNzdWVkIHNhbWUgZGF5IGFzIFRvZGF5KCkgc29ydCBieSBpc3N1ZWQgZGVzY2VuZGluZykNCg0KZGVmaW5lICJQcmV2aW91cyBCb2R5IFdlaWdodCI6DQogIEZpcnN0KCJCb2R5IFdlaWdodCIgV1Qgd2hlcmUgV1QuaXNzdWVkIDEgZGF5IGJlZm9yZSBkYXkgb2YgVG9kYXkoKSBzb3J0IGJ5IGlzc3VlZCBkZXNjZW5kaW5nKQ0KDQpkZWZpbmUgIkN1cnJlbnQgQm9keSBXZWlnaHQgQ2hhbmdlIjoNCiAgIkN1cnJlbnQgQm9keSBXZWlnaHQiLnZhbHVlIC0gIlByZXZpb3VzIEJvZHkgV2VpZ2h0Ii52YWx1ZQ0KDQpkZWZpbmUgIlVyaW5lIE91dHB1dCI6DQogIFtPYnNlcnZhdGlvbjogIlVyaW5lIG91dHB1dCJdIE8NCiAgICB3aGVyZSBPLnN0YXR1cyA9ICdmaW5hbCcNCiAgICBhbmQgcmVmZXJlbmNlcyhPLmVuY291bnRlciwgRW5jb3VudGVyKQ0KDQpkZWZpbmUgIkN1cnJlbnQgVXJpbmUgT3V0cHV0IjoNCiAgRmlyc3QoIlVyaW5lIE91dHB1dCIgVU8gd2hlcmUgVU8uaXNzdWVkIHNhbWUgZGF5IGFzIFRvZGF5KCkgc29ydCBieSBpc3N1ZWQgZGVzY2VuZGluZykNCg0KZGVmaW5lICJOZXQgSW50YWtlL091dHB1dCI6DQogIFtPYnNlcnZhdGlvbjogIk5ldCBpbnRha2Uvb3V0cHV0Il0gTw0KICAgIHdoZXJlIE8uc3RhdHVzID0gJ2ZpbmFsJw0KICAgICAgYW5kIHJlZmVyZW5jZXMoTy5lbmNvdW50ZXIsIEVuY291bnRlcikNCg0KZGVmaW5lICJDdXJyZW50IE5ldCBJbnRha2UvT3V0cHV0IjoNCiAgRmlyc3QoIk5ldCBJbnRha2UvT3V0cHV0IiBJTyB3aGVyZSBJTy5pc3N1ZWQgc2FtZSBkYXkgYXMgVG9kYXkoKSBzb3J0IGJ5IGlzc3VlZCBkZXNjZW5kaW5nKQ0KDQpkZWZpbmUgIkp1Z3VsYXIgVmVub3VzIFByZXNzdXJlIjoNCiAgW09ic2VydmF0aW9uOiAiSnVndWxhciB2ZW5vdXMgcHJlc3N1cmUiXSBPDQogICAgd2hlcmUgTy5zdGF0dXMgPSAnZmluYWwnDQogICAgICBhbmQgcmVmZXJlbmNlcyhPLmVuY291bnRlciwgRW5jb3VudGVyKQ0KDQpkZWZpbmUgIk94eWdlbiBTYXR1cmF0aW9uIjoNCiAgW09ic2VydmF0aW9uOiAiT3h5Z2VuIHNhdHVyYXRpb24iXSBPDQogICAgd2hlcmUgTy5zdGF0dXMgPSAnZmluYWwnDQogICAgICBhbmQgcmVmZXJlbmNlcyhPLmVuY291bnRlciwgRW5jb3VudGVyKQ0KDQpkZWZpbmUgIlBvdGFzc2l1bSI6DQogIFtPYnNlcnZhdGlvbjogIlBvdGFzc2l1bSBnb2FsIl0gTw0KICAgIHdoZXJlIE8uc3RhdHVzID0gJ2ZpbmFsJw0KICAgICAgYW5kIHJlZmVyZW5jZXMoTy5lbmNvdW50ZXIsIEVuY291bnRlcikNCg0KZGVmaW5lICJDcmVhdGluaW5lIjoNCiAgW09ic2VydmF0aW9uOiAiQ3JlYXRpbmluZSBpbiBzZXJ1bSJdIE8NCiAgICB3aGVyZSBPLnN0YXR1cyA9ICdmaW5hbCcNCiAgICAgIGFuZCByZWZlcmVuY2VzKE8uZW5jb3VudGVyLCBFbmNvdW50ZXIpDQoNCmRlZmluZSAiZUdGUiI6DQogIFtPYnNlcnZhdGlvbjogImVHRlIgcmVzdWx0Il0gTw0KICAgIHdoZXJlIE8uc3RhdHVzID0gJ2ZpbmFsJw0KICAgICAgYW5kIHJlZmVyZW5jZXMoTy5lbmNvdW50ZXIsIEVuY291bnRlcikNCg0KDQovLyBFbGlnaWJpbGl0eSBDcml0ZXJpYQ0KZGVmaW5lICJFbGlnaWJpbGl0eSBDcml0ZXJpYSI6DQogIFtDb25kaXRpb25dIEMNCiAgICB3aGVyZSBDLmNvZGUgfiAiQ29uZ2VzdGl2ZSBoZWFydCBmYWlsdXJlIg0KICAgICAgYW5kIEMuY2xpbmljYWxTdGF0dXMgfiAiQWN0aXZlIGNvbmRpdGlvbiINCiAgICAgIGFuZCBDLnZlcmlmaWNhdGlvblN0YXR1cyB+ICJDb25maXJtZWQgY29uZGl0aW9uIg0KDQovLyBUT0RPOiBIYW5kbGUgY29udGFpbmVkIHJlZmVyZW5jZXMNCi8vIFRPRE86IEhhbmRsZSBidW5kbGUgcmVmZXJlbmNlcw0KLy8gVE9ETzogSGFuZGxlIHJlbW90ZSByZWZlcmVuY2VzDQpkZWZpbmUgZnVuY3Rpb24gcmVmZXJlbmNlcyhyZWZlcmVuY2UgUmVmZXJlbmNlLCBlbmNvdW50ZXIgRW5jb3VudGVyKToNCiAgRW5kc1dpdGgocmVmZXJlbmNlLnJlZmVyZW5jZSwgJy8nICsgZW5jb3VudGVyLmlkKQ0KDQpkZWZpbmUgZnVuY3Rpb24gcmVmZXJlbmNlVG8oZW5jb3VudGVyIEVuY291bnRlcik6DQogIFJlZmVyZW5jZSB7IHJlZmVyZW5jZTogc3RyaW5nIHsgdmFsdWU6ICdFbmNvdW50ZXIvJyArIGVuY291bnRlci5pZCB9IH0NCg0KZGVmaW5lIGZ1bmN0aW9uIHJlZmVyZW5jZVRvKHBhdGllbnQgUGF0aWVudCk6DQogIFJlZmVyZW5jZSB7IHJlZmVyZW5jZTogc3RyaW5nIHsgdmFsdWU6ICdQYXRpZW50LycgKyBwYXRpZW50LmlkIH0gfQ0K"