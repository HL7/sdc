Instance: StructureMap-source
InstanceOf: SearchParameter
Title: "StructureMap Source Structure"
Usage: #definition
* url = "http://hl7.org/fhir/uv/sdc/SearchParameter/StructureMap-source"
* name = "SDCStructureMapSource"
* status = #active
* description = "Allows searching by the StructureMap.structure.url for the source model.  (Official search param should appears in R6 core)"
* code = #source
* base[+] = #StructureMap
* type = #reference
* expression = "structure.where(mode='source').url"
* xpath = "f:structure[f:mode/@value='source']/f:url"
* xpathUsage = #normal