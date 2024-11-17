Extension: ExtractAllocateIdExtension
Id: sdc-questionnaire-extractAllocateId
Title: "Extract - Allocate new uuid"
Description: "Allocate a new uuid in a named variable for use in extraction. This is usually used to set the `fullUrl` for a resource in the output extraction bundle, and then referenced in other resources within that transaction bundle (via fhirpath expressions)."
* ^extension[$standard-status].valueCode = #draft
* ^extension[$fmm].valueInteger = 0
* ^status = #draft
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "ElementDefinition"
* . ^short = "Variable name for the new uuid."
* . ^definition = "Allocate a new uuid in a named variable for use in extraction. This is usually used to set the `fullUrl` for a resource in the output extraction bundle, and then referenced in other resources in that bundle (via fhirpath expressions). The format of the uuid will be `urn:uuid:<uuid>`. e.g. urn:uuid:6f6177d2-13ee-4d27-b0e8-3eaf663dd031"
* url only uri
* value[x] only string
* value[x] 1..1
