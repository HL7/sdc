Instance: canonical-experimental
InstanceOf: SearchParameter
Title: "Canonical Experimental Search Parameter"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/canonical-experimental"
* name = "SDCCanonicalExperimental"
* status = #active
* description = "Allows searching by 'experimental' for the canonical resources SDC cares about.  (Official search param should appear in R6 core)"
* code = #experimental
* base[+] = #Questionnaire
* base[+] = #ValueSet
* base[+] = #CodeSystem
* base[+] = #ConceptMap
* base[+] = #StructureMap
* base[+] = #Library
* type = #token
* expression = "experimental"
* xpath = "f:experimental"
* xpathUsage = #normal