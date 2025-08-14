Instance: StructureMap-target
InstanceOf: SearchParameter
Title: "StructureMap Target Structure"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/StructureMap-target"
* name = "SDCStructureMapTarget"
* status = #active
* description = "Allows searching by the StructureMap.structure.url for the target model.  (Official search param should appears in R6 core)"
* code = #target
* base[+] = #StructureMap
* type = #reference
* expression = "structure.where(mode='target').url"
* xpath = "f:structure[f:mode/@value='target']/f:url"
* xpathUsage = #normal